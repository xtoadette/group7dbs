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
Light_Commerical_Truck FLOAT(2),
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
PRIMARY KEY (Mname, Year, County)
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
Total_electricty INT,
Total_natural_gas INT,
PRIMARY KEY(Mname, County, Year)
)
;

