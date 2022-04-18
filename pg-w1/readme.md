psql -h [HOSTNAME] -p [PORT] -U [USERNAME] -W -d [DATABASENAME]

//Login Details
psql -h pg.pg4e.com -p 5432 -U pg4e_8ca06929e3 -W -d pg4e_8ca06929e3 
//Password
pg4e_p_dbe68114f197210

\i lesson1.sql

-- SHOW ALL DATABASES
\l
-- connect to database
\c <database-name>
-- SHOW schema(details) of a relation (table)
\dt
--QUIT
\q