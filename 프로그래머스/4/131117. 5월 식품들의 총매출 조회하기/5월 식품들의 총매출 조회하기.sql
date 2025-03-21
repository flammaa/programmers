SELECT P.PRODUCT_ID, P.PRODUCT_NAME, SUM(P.PRICE*O.AMOUNT) TOTAL_SALES
FROM FOOD_PRODUCT P LEFT JOIN FOOD_ORDER O ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE PRODUCE_DATE like "2022-05-%"
GROUP BY 1
ORDER BY 3 DESC, 1 ASC