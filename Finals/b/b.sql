SELECT
   DISTINCT o.info ->> 'customer' AS "customer"
FROM
   "03032020".orders o
INNER JOIN   "03032020".orders e
ON(e.info ->> 'customer' = o.info ->> 'customer')
WHERE e.info -> 'items' ->> 'product' ='Beer' AND o.info -> 'items' ->> 'product' ='Diaper'
