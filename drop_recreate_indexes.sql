SELECT 
  'DROP INDEX ' || a.table_owner || '.'  || a.index_name || ';'
  || ' ' || trim(to_char(DBMS_METADATA.GET_DDL('INDEX',a.index_name, a.table_owner))) || ';' index_sql
FROM   all_indexes a
--where table_owner = 'SCHEMA' -- to filter to a specific schema
