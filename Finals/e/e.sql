CREATE FUNCTION "03032020".taskE(product varchar)
	RETURNS TABLE(
		total bigint
	)

AS
$BODY$
	BEGIN
		RETURN QUERY
			SELECT
				SUM (
      				CAST (
         			info -> 'items' ->> 'qty' AS INTEGER
      				) 
   				) AS total
   			FROM "03032020".orders
   			WHERE info -> 'items' ->> 'product' = product 
   			LIMIT 1;
	END;
$BODY$

LANGUAGE 'plpgsql'


SELECT "03032020".taske('Beer') FROM "03032020".orders