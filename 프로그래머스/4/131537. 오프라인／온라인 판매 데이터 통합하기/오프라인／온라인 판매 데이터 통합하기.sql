SELECT
    DATE_FORMAT(sales_date,"%Y-%m-%d") AS sales_date,  -- 형식을 통일
    product_id,
    user_id,
    sales_amount
FROM ONLINE_SALE
WHERE sales_date BETWEEN '2022-03-01' AND '2022-03-31'

UNION ALL

SELECT
    DATE_FORMAT(sales_date,"%Y-%m-%d") AS sales_date,  -- 형식을 통일
    product_id,
    NULL AS user_id,
    sales_amount
FROM OFFLINE_SALE
WHERE sales_date BETWEEN '2022-03-01' AND '2022-03-31'

ORDER BY sales_date, product_id, user_id;