SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS I LEFT JOIN ANIMAL_OUTS O ON I.ANIMAL_ID=O.ANIMAL_ID
GROUP BY ANIMAL_ID
ORDER BY O.DATETIME-I.DATETIME DESC
LIMIT 2