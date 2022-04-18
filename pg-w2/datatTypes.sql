-- small and large
-- text fields
-- 64, GUIDs
CHAR(n)
-- one(64) to 128
VARCHAR(n)
-- varying length, not used with indexing and sorting
TEXT
-- binary fields 
-- 8 bits each byte
BYTEA(n)
-- numeric fields
SMALLINT
INTEGER
BIGINT
-- 32 bit with 7 digits of accuracy 
REAL
-- 64 bit with 14 digits of accuracy 
DOUBLE PRECISION
-- choose how many u want, money
NUMERIC(accuracy, decimal)
-- 'YYYY-MM-DD HH:MM:SS' 64 BITS (UNIX TIMESTAMP)
TIMESTAMP
-- 'YYYY-MM-DD'
DATE
-- 'HH:MM:SS'
TIME

-- AUTO_INCREMENT fields
