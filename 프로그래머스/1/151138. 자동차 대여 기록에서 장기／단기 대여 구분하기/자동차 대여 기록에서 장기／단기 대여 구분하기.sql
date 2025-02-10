SELECT
    history_id,
    car_id,
    DATE_FORMAT(start_date, '%Y-%m-%d') AS start_date,
    DATE_FORMAT(end_date, '%Y-%m-%d') AS end_date,
    IF(DATEDIFF(end_date, start_date)<29, '단기 대여', '장기 대여') AS rent_type
FROM
    car_rental_company_rental_history
WHERE
    DATE_FORMAT(start_date, '%Y-%m')='2022-09'
ORDER BY 
    1 DESC;