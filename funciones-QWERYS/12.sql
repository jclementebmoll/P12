#Function psql
CREATE OR REPLACE FUNCTION show_prod_cat_plpgsql_cursor(int) RETURNS refcursor AS $$
DECLARE
      ref refcursor;
BEGIN
      OPEN ref FOR select * from products where products.category=$1;
      RETURN ref;
END;
$$ LANGUAGE 'plpgsql';


#Transaction
BEGIN;
SELECT show_prod_cat_plpgsql_cursor(1);
FETCH ALL IN "<v2>";
COMMIT;