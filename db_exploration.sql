/*Advance Data Types in PostgreSQL:

1.JSON/JSONB: Stores semi-structured data efficiently.
2.Array: Supports multi-valued attributes in a single column.
3.HSTORE: Key-value storage for NoSQL-like functionality.
4.UUID, CIDR, INET, MACADDR: Specialized types for networking.
5.Geometric Types: For GIS and spatial data.
6.XML: Native support for XML storage and querying. */


--Query to find the number of tables in Database:
select count(*)
from information_schema.tables
where table_catalog= 'db_name'
AND table_schema='public'



--Query to find the name of all the tables
select table_name
from information_schema.tables
where table_schema='public'

--Query to find the name of tables and columns in the tables:'
select table_name
from information_schema.columns
where table_schema='public'
order by table_name, ordinal_position;