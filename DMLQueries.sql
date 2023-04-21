--Which type of gas powered vehicle generates the most amount of emissions?
SELECT SUM(combination_long_haul_truck), SUM (combination_short_haul_truck),
   SUM(intercity_bus), SUM(light_commercial_truck), SUM(motor_home), SUM(motorcycles),
   SUM(passenger_cars), SUM(passenger_truck), SUM(refuse_truck), SUM(school_bus),
   SUM(single_unit_long_haul_truck), SUM(single_unit_short_haul_truck), SUM(transit_bus)
   FROM total_emissions
   WHERE year >= 2019;