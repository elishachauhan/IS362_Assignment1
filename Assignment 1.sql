-- Assignment 1

-- Question 1
SELECT COUNT(speed), MIN(speed), MAX(speed) FROM planes;

-- Question 2
SELECT sum(distance) AS 'Total Distance' FROM flights 
WHERE year = '2013' AND month = '1'; 

SELECT sum(distance) AS 'Total Dist w/o Tailnum' FROM flights
WHERE year = '2013' AND month = '1' AND tailnum IS NULL;

-- Question 3
SELECT planes. manufacturer, SUM(flights.distance) 
	FROM flights 
	INNER JOIN planes
	ON planes.tailnum = flights.tailnum
	WHERE flights.year = '2013' AND flights.month ='7' AND flights.day ='5' 
	GROUP BY planes.manufacturer;
    
SELECT planes.manufacturer, SUM(flights.distance)
	FROM flights
    LEFT JOIN planes
    ON planes.tailnum = flights.tailnum
    WHERE flights.year = '2013' AND flights.month = '7' AND flights.day ='5'
    GROUP BY planes.manufacturer;
    
-- The LEFT OUTER JOIN shows the NULL manufacturer total distance, while the INNER JOIN does not display it

-- Question 4
SELECT planes.manufacturer, SUM(flights.distance), airlines.name
	FROM flights 
	INNER JOIN planes
	ON planes.tailnum = flights.tailnum
    INNER JOIN airlines
    ON airlines.carrier = flights.carrier
	WHERE flights.year = '2013' AND flights.month ='7' AND flights.day ='5' 
	GROUP BY planes.manufacturer;




    







