CREATE TABLE MUNICIPALITY (
Name VARCHAR(255),
County VARCHAR(255),
Year INT,
Square_Miles FLOAT(1),
Population INT,
PRIMARY KEY(Name, County, Year)
)
;

CREATE TABLE car (
Vehicle_vin CHAR(17) PRIMARY KEY,
Car_type VARCHAR(2)
)
;

CREATE TABLE electric_powered ( 
Vehicle_vin CHAR (17) PRIMARY KEY,
Car_model VARCHAR(255)
)
; 


CREATE TABLE emissions (
Mname VARCHAR(255),
Year INT,
County VARCHAR(255),
Combination_Long_Haul_Truck INT,
Combination_Short_Haul_Truck INT,
Intercity_Bus INT,
Light_Commerical_Truck INT,
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
PRIMARY KEY (Mname, Year)
)
;


CREATE TABLE gas_powered (
Mname VARCHAR(255),
Year INT,
Passenger_cars_total_emission INT,
PRIMARY KEY (Mname, Year)
)
;



CREATE TABLE Energy (
Mname VARCHAR(255) PRIMARY KEY,
Year INT,
Total_electricty INT,
Total_natural_gas INT
)
;

