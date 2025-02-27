SELECT H.HISTORY_ID, 
        ROUND(C.DAILY_FEE * (DATEDIFF(H.END_DATE, H.START_DATE) + 1) * (1 - IFNULL(D.DISCOUNT_RATE, 0) / 100), 0) AS FEE
FROM CAR_RENTAL_COMPANY_CAR C
JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H
    ON C.CAR_ID = H.CAR_ID
LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN D
    ON C.CAR_TYPE = D.CAR_TYPE
    AND D.DURATION_TYPE =
        CASE
            WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 90 THEN '90일 이상'
            WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 30 THEN '30일 이상'
            WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 7 THEN '7일 이상'
        END 
WHERE C.CAR_TYPE = '트럭'
ORDER BY FEE DESC, H.HISTORY_ID DESC;