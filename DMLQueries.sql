--Create view for the map
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
