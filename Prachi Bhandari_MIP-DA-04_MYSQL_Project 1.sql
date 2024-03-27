-- Q1 
SELECT  type_of_meal_plan AS Type_of_meal_plan, count(type_of_meal_plan) AS Reservations from demo.`hotel reservation dataset`
GROUP BY type_of_meal_plan;
SELECT count(Booking_ID) AS Total_Reservations FROM project1.`hotel reservation dataset`;
-- Q2
SELECT type_of_meal_plan AS Meal_Type, count(type_of_meal_plan) AS Reservations from project1.`hotel reservation dataset`
GROUP BY type_of_meal_plan;
-- Q3
 SELECT avg(avg_price_per_room) from project1.`hotel reservation dataset`
WHERE no_of_children !=0;
-- Q4
update project1.`hotel reservation dataset`
set arrival_date=str_to_date(arrival_date,"%d-%m-%Y"); -- If we will run this now it will show error because the format of date have changed.
ALTER table projetc1.`hotel reservation dataset`
modify arrival_date date;
SELECT count(Booking_ID) AS Reservations_in_2018 from project1.`hotel reservation dataset`
WHERE arrival_date BETWEEN '2018-01-01' AND '2018-12-31';
-- Q5
SELECT room_type_reserved, count(room_type_reserved)AS Reservations from project1.`hotel reservation dataset`
GROUP BY room_type_reserved;
-- Q6
SELECT count(no_of_weekend_nights) AS Reservations from project1.`hotel reservation dataset`
WHERE no_of_weekend_nights !=0;  
-- Q7
SELECT MAX(lead_time) as Highesh, min(lead_time) as Lowest FROM project1.`hotel reservation dataset`; 
-- Q8
SELECT market_segment_type as Common_market_segment, count(market_segment_type) as Reservations FROM project1.`hotel reservation dataset`
GROUP BY market_segment_type 
order by(market_segment_type) desc limit 1;
-- Q9
select COUNT(Booking_ID) as Confirmed_Reservations  from project1.`hotel reservation dataset`
WHERE booking_status = 'Not_Canceled';  
-- Q10
select SUM(no_of_adults) AS Total_Adults, SUM(no_of_children) as Total_Children from project1.`hotel reservation dataset`;
-- Q11
 SELECT avg(no_of_weekend_nights) from project1.`hotel reservation dataset`
WHERE no_of_children !=0;
-- Q12
select monthname(arrival_date) as 'Month' , count(Booking_ID) as No_of_Reservations from project1.`hotel reservation dataset`
group by monthname(arrival_date);
-- Q13
select room_type_reserved as Room_type, avg(no_of_weekend_nights), avg(no_of_week_nights) from project1.`hotel reservation dataset` 
group by room_type_reserved;
-- Q14
select room_type_reserved as Room_Type, count(Booking_ID) as Reservations, avg(avg_price_per_room) as Average_Price from project1.`hotel reservation dataset`
WHERE no_of_children !=0
GROUP BY room_type_reserved
order by room_type_reserved;
-- Q15 
select market_segment_type, max(avg_price_per_room) from project1.`hotel reservation dataset`
group by market_segment_type 
order by max(avg_price_per_room) desc;
