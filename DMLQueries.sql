--Which type of gas powered vehicle generates the most amount of emissions?
SELECT SUM(combination_long_haul_truck), SUM (combination_short_haul_truck), SUM(intercity_bus), SUM(light_commercial_truck), SUM(motor_home), SUM(motorcycles), SUM(passenger_cars), SUM(passenger_truck), SUM(refuse_truck), SUM(school_bus), SUM(single_unit_long_haul_truck), SUM(single_unit_short_haul_truck), SUM(transit_bus) FROM total_emissions WHERE year >= 2019;

--Which county generates the most amount of emissions?
    SELECT County, SUM(Total) AS Total_emissions FROM Total_emissions GROUP BY County;

--Which year generated the most emissions in each municipality?
    SELECT  M.Name, M.County, TE.Year, TE.Total FROM Total_emissions TE JOIN municipality M ON TE.Mname = M.Name AND TE.County = M.County AND TE.Year = M.Year WHERE  TE.Year IN (2015, 2017, 2019, 2020) AND TE.Total = (SELECT MAX(Total) FROM Total_emissions WHERE Mname = TE.Mname AND County = TE.County AND Year = TE.Year);

--How many EV vehicles does each county have?
    SELECT county, SUM(EVs) AS num_evs FROM vehicles WHERE year = 2020 GROUP BY county ORDER BY num_evs DESC;

--How many gas cars does each county have?
    SELECT county, SUM(Gas) AS num_gas FROM vehicles WHERE year = 2020 GROUP BY county ORDER BY num_gas DESC;

--What are the total number of vehicles does each municipality have in years 2015 and 2020?
    SELECT Name, County, Year, vehicles FROM vehicles WHERE Year = 2020 ORDER BY vehicles DESC;
   
