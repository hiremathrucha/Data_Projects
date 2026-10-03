USE food_delivery_db;

SELECT COUNT(*) AS Total_Orders
FROM train;
SELECT* FROM train LIMIT 10;
SELECT COUNT(*) AS Total_Orders FROM train;
SELECT COUNT(*) FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME= 'train'
AND TABLE_SCHEMA='food_delivery_db';
SHOW COLUMNS FROM train;
SELECT DISTINCT City FROM train;
SELECT COUNT(DISTINCT City) AS Total_Cities FROM train;
SELECT DISTINCT Type_of_order FROM train;
SELECT DISTINCT Type_of_vehicle FROM train;
SELECT DISTINCT Weatherconditions FROM train;
SELECT DISTINCT Road_traffic_density FROM train;
SELECT COUNT(*) 
FROM train
WHERE Delivery_person_Age IS NULL 
OR Delivery_person_age =' ';
SELECT COUNT(*) 
FROM train
WHERE Delivery_person_Ratings IS NULL
OR Delivery_person_Ratings =' ' ;
SELECT DISTINCT Festival
From train;
SELECT DISTINCT multiple_deliveries
FROM train;

SELECT COUNT(*) AS Total_Orders
FROM train;

SELECT COUNT(DISTINCT City) AS Total_Cities
FROM train;

SELECT DISTINCT City
FROM train;

SELECT DISTINCT Type_of_order
FROM train;

SELECT DISTINCT Type_of_vehicle
FROM train;

SELECT COUNT(*) AS Missing_Age
FROM train
WHERE Delivery_person_Age IS NULL
   OR Delivery_person_Age = ''
   OR Delivery_person_Age = 'NaN';
   
SELECT COUNT(*) AS Missing_Ratings
FROM train
WHERE Delivery_person_Ratings IS NULL
	OR Delivery_person_Ratings = ''
    OR Delivery_person_Ratings = 'NAN';
    
SELECT COUNT(*) AS Missing_City
FROM train
WHERE City IS NULL
	OR City =''
    OR City = 'NAN';
    
    SELECT COUNT(ID) AS Total_IDs,
       COUNT(DISTINCT ID) AS Unique_IDs
FROM train;
   
SELECT City,
		COUNT(*) AS Total
FROM train
GROUP BY City;

SELECT DISTINCT CONCAT('[',City, ']') AS City_Value
FROM train;

SELECT COUNT(*) AS Missing_City
FROM train
WHERE TRIM(City) = 'NaN';

UPDATE train
SET City = 'Unknown'
WHERE TRIM(City) = 'NaN';

SELECT DISTINCT City
FROM train;


        