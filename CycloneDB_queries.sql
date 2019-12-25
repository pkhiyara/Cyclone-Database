/* Query 1: */

/*	
	Query displays cyclone names, latitude, longitude, and landfall during the summer of 2014.
    Satisfies join req, filter req, linking requirement. 
*/

USE cyclonedb;
CREATE OR REPLACE VIEW SUMMER_CYCLONES AS
SELECT cyclone_name AS 'Cyclone Name', latitude AS 'Latitude', longitude AS 'Longitude', landfall AS 'Landfall'
FROM locations JOIN progression USING (location_id) JOIN cyclones USING (cyclone_id)
WHERE cyclone_date BETWEEN '2014-06-01' AND '2014-09-30' 
ORDER BY cyclone_name DESC;

/* Query 2: */

/*	
	Query displays cyclones that had casualties and orders them from most to least.
*/

USE cyclonedb;
CREATE OR REPLACE VIEW includedCasualties as
SELECT cyclone_name as 'Cyclone Name', casualty_est as Casualties 
FROM cyclones JOIN destruction USING (destruction_id) JOIN casualties USING (casualty_id)
WHERE casualty_est > 0 
ORDER BY casualty_est DESC;

/* Query 3: */

/*	
	Query displays all cyclones with a ‘High’ wind speed level.
*/

USE cyclonedb;
CREATE OR REPLACE VIEW HIGH_WIND AS
    SELECT cyclone_name AS 'Cyclone Name', wind_type AS 'Wind Type'
	FROM cyclones JOIN progression USING (cyclone_id) JOIN wind_details USING (wind_details_id)
	WHERE wind_type = 'High'
	GROUP BY cyclone_name
	ORDER BY cyclone_name DESC;

/* Query 4: */

/*
	Query displays the average mix pressure of each cyclone
*/

USE cyclonedb;
CREATE OR REPLACE VIEW AVG_MIN_PRESSURE AS
    SELECT cyclone_name AS 'Cyclone Name', AVG(min_pressure_millibar) AS 'Avg Min Pressure'
	FROM cyclones JOIN progression USING (cyclone_id) JOIN wind_details USING (wind_details_id)
    GROUP BY cyclone_name
    ORDER BY cyclone_name DESC;
    
/* Query 5: */

/*	
	Query displays all critical cyclones that are classified as 'Hurricanes' that have Atlantic as their coast of origin and over the average amount of casualties and estimated damage costs (in million USD) of all recorded cyclones in the database.
*/

USE cyclonedb;
CREATE OR REPLACE VIEW criticalAtlanticHurricanes AS
    SELECT cyclone_name as 'Cyclone Name', casualty_est as Casualties,
    est_damage_cost_in_million_USD as 'Estimated Damage Cost (in million USD)'
	FROM cyclones JOIN destruction USING (destruction_id) JOIN casualties USING (casualty_id)
	WHERE casualty_est > (SELECT AVG(casualty_est) FROM casualties)
	AND est_damage_cost_in_million_USD > (SELECT AVG(est_damage_cost_in_million_USD) FROM destruction)
	AND cyclone_name IN 
		(SELECT cyclone_name 
		 FROM cyclones JOIN progression USING (cyclone_id) JOIN cyclone_status USING (status_id) 
		 WHERE origin_coast = 'Atlantic' AND cyclone_type = 'Hurricane')
	ORDER BY casualty_est, est_damage_cost_in_million_USD DESC;


