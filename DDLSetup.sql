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
Combination_Long_Haul_Truck FLOAT(2),
Combination_Short_Haul_Truck FLOAT(2),
Intercity_Bus FLOAT(2),
Light_Commercial_Truck FLOAT(2),
Motor_Home FLOAT(2),
Motorcycles FLOAT(2),
Passenger_cars FLOAT(2),
Passenger_Truck FLOAT(2),
Refuse_Truck FLOAT(2),
School_Bus FLOAT(2),
Single_Unit_Long_Haul_Truck FLOAT(2),
Single_Unit_Short_Haul_Truck FLOAT(2),
Transit_bus FLOAT(2),
Total FLOAT(2),
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

--Create view for EV information
CREATE VIEW evinfo
AS SELECT vehicles.Name, vehicles.county, vehicles.year, vehicles.vehicles,
vehicles.evs, vehicles.gas, gas_car_emissions.car_emissions FROM vehicles
JOIN gas_car_emissions ON vehicles.name = gas_car_emissions.mname AND vehicles.county =
gas_car_emissions.county AND vehicles.year = gas_car_emissions.year;