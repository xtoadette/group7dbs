CREATE TABLE MUNICIPALITY (
Name VARCHAR(255) PRIMARY KEY,
County VARCHAR(255),
Year INT 
)
;

CREATE TABLE means_of_transportation (
Vehicle_vin CHAR(17) PRIMARY KEY
)
;

CREATE TABLE car (
Vehicle_vin CHAR(17) PRIMARY KEY,
Car_type VARCHAR(2)
)
;

CREATE TABLE electric_powered ( 
Vehicle_vin CHAR (17) PRIMARY KEY,
Car_model VARCHAR(255),
Total_range INT,
Battery_type VARCHAR(255)
)
; 


CREATE TABLE emissions (
Source  VARCHAR(225) PRIMARY KEY,
Total_produced INT
)
; 

CREATE TABLE gas_powered (
Vehicle_vin CHAR (17) PRIMARY KEY,
Car_model VARCHAR(255),
Emissions INT,
Fuel_capacity INT,
Battery_type VARCHAR(2)
)
; 


CREATE TABLE Energy (
Mname VARCHAR(255) PRIMARY KEY,
Year INT,
Total_electricty INT,
Total_natural_gas INT
)
;

CREATE TABLE produces (
Vehicle_vin CHAR (17) PRIMARY KEY,
Name VARCHAR(255),
Source VARCHAR(255)
)
;

