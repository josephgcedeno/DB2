SELECT
    e.info -> 'customer' AS customer
FROM
   "03032020".orders e
WHERE 
  CAST(info -> 'items' ->> 'qty' AS INTEGER) = (
  SELECT  max(CAST(info -> 'items' ->> 'qty' AS INTEGER))
  FROM "03032020".orders o
  )

