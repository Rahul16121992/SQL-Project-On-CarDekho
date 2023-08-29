-- CAR DEKHO PROJECT --

-- Task No. 1 -- Read Cars Data--
SELECT * FROM car.car_dekho;
use car;
-- Task No. 2 --Total Cars : To get a count of total records
select count(*) from car_dekho; 

-- Task No. 3 -- How many cars wiil be available in 2023 ?
select count(*) from car_dekho where year=2023; # 6 

-- Task No.4 -- How many cars will be available in 2020,2021,2022 ?
-- Way 1 (By Count Function)
select count(*) from car_dekho where year=2020; # 74
select count(*) from car_dekho where year=2021; # 7
select count(*) from car_dekho where year=2022; # 7

-- Way 2 (By GROUP BY Function)
SELECT COUNT(*) FROM car_dekho WHERE YEAR IN (2020,2021,2022) GROUP BY YEAR;

-- Task No. 5 -- Print the total of all cars by year .
SELECT year, COUNT(*) FROM car_dekho GROUP BY year;

-- Task No. 6 -- How many Diesel car will there be in 2020 ?
SELECT COUNT(*) FROM car_dekho where year=2020 AND fuel ='Diesel'; #20

-- Task No. 7 -- How many petrol cars will there be in 2020 ?
SELECT COUNT(*) FROM car_dekho where year=2020 AND fuel ='Petrol'; #51

-- Task No. 8 --  The Manager told the employee to give a print All the fuel cars(Petrol, Diesel & CNG) come by all year ?
SELECT year, COUNT(*) FROM car_dekho WHERE fuel='Petrol' GROUP BY year; 
SELECT year, COUNT(*) FROM car_dekho WHERE fuel='Diesel' GROUP BY year;
SELECT year, COUNT(*) FROM car_dekho WHERE fuel='CNG' GROUP BY year;

-- Task No. 9 -- Manager Said there were more than 100 cars in a given year, which year had more thsan 100 cars?
SELECT year,COUNT(*) FROM car_dekho GROUP BY year HAVING count(*)>100;

-- Task No. 10 -- The Maager said to the Employee all cars count details between 2015 and 2023, We need a complete list ?
SELECT COUNT(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023; #4137

-- Task No. 11 --The manager said to the employee All cars details between 2015 to 2023, we need complete list --
SELECT *  FROM car_dekho WHERE year BETWEEN 2015 and 2023;

-- Task No. 12 --The manager said to the employee All cars details where owner type is Second Owner, we need complete list --
SELECT * FROM car_dekho WHERE owner ='Second Owner';

-- Task No. 13 --The manager said to the employee count all cars where owner type is Second owner --
SELECT COUNT(*) FROM car_dekho WHERE OWNER='Second Owner'; # 2108

-- Task No. 14 --The manager said to the employee count all cars where owner type is first owner --
SELECT COUNT(*) FROM car_dekho WHERE OWNER='First Owner'; # 5306

 