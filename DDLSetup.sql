--Create tables

CREATE TABLE municipality (
Name VARCHAR(255),
County VARCHAR(255),
Year INT,
Square_Miles FLOAT(1),
Population INT,
PRIMARY KEY(Name, County, Year)
)
;

CREATE TABLE vehicles (
Name VARCHAR(255),
County VARCHAR(255),
Year INT,
Vehicles INT,
EVs INT,
Gas INT
)
;

CREATE TABLE total_emissions (
Mname VARCHAR(255),
County VARCHAR(255),
Year INT,
Combination_Long_Haul_Truck INT,
Combination_Short_Haul_Truck INT,
Intercity_Bus INT,
Light_Commercial_Truck INT,
Motor_Home INT,
Motorcycles INT,
Passenger_cars INT,
Passenger_Truck INT,
Refuse_Truck INT,
School_Bus INT,
Single_Unit_Long_Haul_Truck INT,
Single_Unit_Short_Haul_Truck INT,
Transit_bus INT,
Total INT,
PRIMARY KEY (Mname, County, Year)
)
;

CREATE TABLE gas_car_emissions (
Mname VARCHAR(255),
County VARCHAR(255),
Year INT,
Car_emissions FLOAT(2),
PRIMARY KEY (Mname, County, Year)
)
;

CREATE TABLE energy (
Mname VARCHAR(255),
County VARCHAR(255),
Year INT,
Total_electricity INT,
Total_natural_gas INT,
PRIMARY KEY(Mname, County, Year)
)
;

--Populate tables
\COPY municipality FROM 'Municipality.csv' DELIMITER ',' CSV HEADER;

\COPY vehicles FROM 'Vehicles.csv' DELIMITER ',' CSV HEADER;

\COPY total_emissions FROM 'Emissions.csv' DELIMITER ',' CSV HEADER;

\COPY gas_car_emissions FROM 'Gas_car_emissions.csv' DELIMITER ',' CSV HEADER;

\COPY energy FROM 'Energy.csv' DELIMITER ',' CSV HEADER;

--Create view for map
CREATE VIEW map
AS SELECT total_emissions.Mname, total_emissions.County,
total_emissions.Year, total_emissions.Passenger_cars,
total_emissions.Total, energy.Total_electricity, energy.Total_natural_gas
FROM total_emissions JOIN energy ON total_emissions.Mname = energy.Mname
AND total_emissions.county = energy.county AND total_emissions.year = energy.year;
