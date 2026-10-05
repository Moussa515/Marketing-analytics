
--TOP 2 countries with highest cost--
;WITH LocCTE AS
(
SELECT TOP 3 Location , SUM(Cost) AS total_cost
FROM Marketing_Dataset
GROUP BY Location
)
SELECT TOP 2 Location  , total_cost , 
DENSE_RANK () OVER( ORDER BY  total_cost DESC) As rank 
FROM LocCTE
WHERE Location IS NOT NULL 
 ;




--Cost catogrization--
SELECT Clicks , Impressions , Cost
 ,CASE
    WHEN Cost>= 230 THEN 'High cost'
    WHEN Cost<200   THEN 'Medium cost'
    ELSE  'Low cost' END AS Cost_Category
   FROM Marketing_Dataset


    --Total impression by location--
    SELECT Location , SUM(Impressions) AS 'Total_impression'
    FROM Marketing_Dataset
    WHERE Location IS NOT NULL
    GROUP BY Location
    ORDER BY Total_impression DESC
    


--Cost efficiency--
SELECT Cost , Sale_Amount, Ad_ID ,
CASE 
     WHEN Cost > 200 AND  Sale_Amount <1300 THEN 'high_cost/Low_return'
     WHEN Cost <200  AND Sale_Amount >1300 THEN 'Low_cost/high_return'
     ELSE 'Moderate_performence' END AS Cost_Efficiency
     FROM Marketing_Dataset
   




--Ad attractivness--
SELECT Ad_ID, Clicks , Impressions ,
CASE
    WHEN Clicks >=180 AND Impressions>=4200 THEN 'Attractive Ad'
    WHEN Clicks <180  AND Impressions<4200 THEN 'Average Ad'
    ELSE 'Low Ad appeal' END AS Engagment_Categoray
    FROM Marketing_Dataset




    --device with highest total impression--
  SELECT TOP 1  Device , SUM(Impressions) AS total_impressions
  FROM Marketing_Dataset
  GROUP BY Device
  ORDER BY total_impressions

  SELECT *
  FROM Marketing_Dataset
  
  

  --Top 3 countries with ROAS higher than Average--
SELECT TOP 3 Location 
FROM Marketing_Dataset
WHERE ROAS >(SELECT AVG(ROAS) FROM Marketing_Dataset) 

--Lastest Campain--

SELECT TOP 1 Ad_Date
FROM Marketing_Dataset
ORDER BY Ad_Date DESC ;


--Oldest campain--
SELECT TOP 1 Ad_Date
FROM Marketing_Dataset
ORDER BY Ad_Date ASC

--Highest number of good campain in Term of Location--
SELECT TOP 1 Location , COUNT(*) AS Repetitions
FROM Marketing_Dataset
WHERE Good_Campain = 1
GROUP BY Location
ORDER BY COUNT (*) DESC;


--Ad with the highest sale amount--
SELECT TOP 1 Ad_id , SUM(Sale_amount) AS total_Sale_amount
FROM Marketing_Dataset
GROUP BY Ad_ID
ORDER BY total_Sale_amount DESC