SELECT 
A.REST_ID, 
A.REST_NAME, 
A.FOOD_TYPE,
A.FAVORITES,
A.ADDRESS,
ROUND(sum(B.REVIEW_SCORE)/COUNT(B.REVIEW_ID),2) as SCORE

from REST_INFO A

INNER JOIN
    REST_REVIEW B ON B.REST_ID = A.REST_ID

WHERE
    A.ADDRESS like '서울%'
GROUP BY
    A.ADDRESS
ORDER BY
    SCORE desc,
    A.FAVORITES desc