-- Databricks notebook source
---INNER JOINS 

--QUESTION 1 

SELECT A.`user_id`, A.`user_name`, B.`subscription_id`, B.`start_date`
FROM joinsexercize.default.users AS A
INNER JOIN joinsexercize.default.subscriptions AS B
ON A.`user_id` = B.`user_id`;


-- QUESTION 2

SELECT A.`plan_name`, A.`monthly_price`, B.`user_id`, B.`subscription_id`
FROM joinsexercize.default.plans AS A
INNER JOIN joinsexercize.default.subscriptions AS B
ON A.`plan_id` = B.`plan_id`;

--QUESTION 3

SELECT B.`session_id`, B.`user_id`, A.`show_title`, A.`genre`, B.`watch_minutes`
FROM joinsexercize.default.shows AS A
INNER JOIN joinsexercize.default.viewing_sessions AS B
ON A.`show_id` = B.`show_id`;

--QUESTION 4 

SELECT A.`user_name`, A.`country`, B.`session_id`, B.`show_id`, B.`watch_minutes`
FROM joinsexercize.default.users AS A
INNER JOIN joinsexercize.default.viewing_sessions AS B
ON A.`user_id` = B.`user_id`;

--QUESTION 5 - I struggled with this query , it ket giving me errors until i used ChaGPT

SELECT
    A.user_name,
    A.country,
    B.plan_name,
    B.monthly_price,
    C.start_date
FROM joinsexercize.default.users AS A
INNER JOIN joinsexercize.default.subscriptions AS C
    ON A.user_id = C.user_id
INNER JOIN joinsexercize.default.plans AS B
    ON C.plan_id = B.plan_id;



---LEFT JOINS 

--QUESTION 6

SELECT A.user_id, A.user_name, B.subscription_id, B.start_date
FROM joinsexercize.default.users AS A
LEFT JOIN joinsexercize.default.subscriptions AS B
ON A.`user_id` = B.`user_id`;

--QUESTION 7

SELECT A.plan_id, A.plan_name, B.subscription_id, B.user_id
FROM joinsexercize.default.plans AS A
LEFT JOIN joinsexercize.default.subscriptions AS B
ON A.plan_id = B.plan_id;


--QUESTION 8

SELECT A.show_id ,A.show_title , B.session_id ,B.watch_minutes
FROM joinsexercize.default.shows AS A
LEFT JOIN joinsexercize.default.viewing_sessions AS B
ON A.show_id = B.show_id;


---QUESTION 9

SELECT A.session_id , A.show_id , A.watch_minutes ,B.user_id ,B.user_id
FROM joinsexercize.default.viewing_sessions AS A
LEFT JOIN joinsexercize.default.users AS B
ON A.user_id = B.user_id;

--QUESTION 10

SELECT
    A.user_id,
    A.country,
    B.plan_name,
    B.monthly_price
FROM joinsexercize.default.users AS A
LEFT JOIN joinsexercize.default.subscriptions AS C
    ON A.user_id = C.user_id
LEFT JOIN joinsexercize.default.plans AS B
    ON C.plan_id = B.plan_id;



--FULL OUTER JOIN 

--QUESTION 11

SELECT A.user_id ,A.user_name , B.subscription_id ,B.start_date
FROM joinsexercize.default.users AS A 
FULL OUTER JOIN joinsexercize.default.subscriptions AS B
ON A.user_id = B.user_id;

--QUESTION 12

SELECT A.plan_id ,A.plan_name ,B.subscription_id, B.user_id
FROM joinsexercize.default.plans AS A
FULL OUTER JOIN joinsexercize.default.subscriptions AS B
ON A.plan_id = B.plan_id;

--QUESTION 13

SELECT A.show_id ,A.show_title ,B.session_id ,B.watch_minutes
FROM joinsexercize.default.shows AS A
FULL OUTER JOIN joinsexercize.default.viewing_sessions AS B
ON A.show_id = B.show_id;

--QUESTION 14

SELECT A.user_id , A.user_name, B.session_id , B.show_id , B.watch_minutes
FROM joinsexercize.default.users AS A 
FULL OUTER JOIN joinsexercize.default.viewing_sessions AS B 
ON A.user_id = B.user_id;

--QUESTION 15

SELECT A.user_id , A.user_name , B.subscription_id ,C.plan_id , C.plan_name
FROM joinsexercize.default.users AS A
FULL OUTER JOIN joinsexercize.default.subscriptions AS B 
ON A.user_id = B.user_id 
FULL OUTER JOIN joinsexercize.default.plans AS C
ON B.plan_id = C.plan_id;
