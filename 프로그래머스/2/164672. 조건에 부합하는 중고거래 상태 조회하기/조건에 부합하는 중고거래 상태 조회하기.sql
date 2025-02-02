SELECT BOARD_ID, WRITER_ID,	TITLE, PRICE, CASE status
         WHEN 'sale' THEN '판매중'
         WHEN 'reserved' THEN '예약중' 
         WHEN 'done' THEN '거래완료'
    END status
FROM USED_GOODS_BOARD
WHERE CREATED_DATE = '2022-10-05'
ORDER BY BOARD_ID DESC