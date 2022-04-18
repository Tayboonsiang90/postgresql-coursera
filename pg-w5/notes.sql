-- how to alter table

ALTER TABLE fav DROP COLUMN opps;
ALTER TABLE post ALTER COLUMN content TYPE TEXT;
ALTER TABLE fav ADD COLUMN howmuch INTEGER;

\i load.sql

-- dates
-- DATE
-- TIME
-- TIMESTAMP
-- TIMESTAMPZ
CREATE ...
created_at TIMESTAMPZ NOT NULL DEFAULT NOW(),

SELECT NOW(), NOW() AT TIME ZONE 'UTC', NOW() AT TIME ZONE 'HST'

-- TO SEE ALL TIMEZONES
SELECT * FROM pg_timezone_names

-- TYPE CASTING
SELECT NOW()::DATE, CAST(NOW() AS DATE), CAST(NOW() AS TIME)
SELECT NOW(), NOW() - INTERVAL '2 days', (NOW() - INTERVAL '2 days')::DATE

-- DATE TRUNCATE
-- Take the current moment, truncate it down to the day
DATE_TRUNC('day', NOW())
DATE_TRUNC('day', NOW() + INTERVAL '1 day')

-- Performance: Table Scans

-- DISTINCT/ GROUP BY
-- DISTINCT only returns unique rows
-- DISTINCT ON limits duplicate removal to subcolumns
-- GORUP BY , COUNT(), MAX(), SUM(), AVE()

-- think of it happens after the join
SELECT DISTINCT ON (model) make, model FROM racing;
SELECT COUNT(abbrev), abbrev FROM pg_timezone_names GORUP BY abbrev;
-- where is before, having is after 
SELECT COUNT(abbrev), abbrev FROM pg_timezone_names WHERE is_dst= "t' GROUP BY abbrev HAVING COUNT(abbrev) > 10;

-- subqueries









