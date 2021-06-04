#Function 1 sql
CREATE FUNCTION insert_category1_sql(pcategory integer, pname varchar) RETURNS void AS
$$
    insert into categories (category, categoryname) values (pcategory, pname)
$$ language sql;

#Function 1 psql
CREATE function insert_category1_plpgsql (pcategory integer, pname varchar)
returns void as $$
begin
    insert into categories (category, categoryname) values (pcategory, pname);
end; $$ language plpgsql;

#QWERY 1
select insert_category1_plpgsql(21, 'category21');

#Function 2 sql
CREATE FUNCTION insert_category2_sql(integer, varchar) RETURNS void AS
$$
    insert into categories (category, categoryname) values ($1, $2)
$$ language sql;

#Function 2 psql
CREATE function insert_category2_plpgsql (integer, varchar)
returns void as $$
begin
    insert into categories (category, categoryname) values ($1, $2);
end; $$ language plpgsql;

#QWERY 2
select insert_category2_plpgsql(22, 'category22');

#Function 3 sql
CREATE FUNCTION insert_category3_sql(category integer, categoryname varchar) RETURNS void AS
$$
    insert into categories (category, categoryname) values (category, categoryname)
$$ language sql;

#Function 3 psql
CREATE function insert_category3_plpgsql (category integer, categoryname varchar)
returns void as $$
begin
    insert into categories (category, categoryname) values (category, categoryname);
end; $$ language plpgsql;

#QWERY 3
select insert_category3_plpgsql(23, 'category23');

#Function 4 sql
CREATE FUNCTION insert_category4_sql(pcategory categories) RETURNS void AS
$$
    insert into categories values ($1.category, $1.categoryname)
$$ language sql;

#Function 4 psql
CREATE function insert_category4_plpgsql (pcategory categories)
returns void as $$
begin
    insert into categories values ($1.category, $1.categoryname);
end; $$ language plpgsql;

#Qwery 4
select insert_category4_plpgsql((24, 'category24'));
