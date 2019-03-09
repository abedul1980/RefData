CREATE TABLE test (
  id INTEGER NOT NULL PRIMARY KEY,
  number FLOAT CHECK (number > 10.5 AND number < 15.5)
);

-- GRANTs
GRANT SELECT ON test TO ${anonuser};
GRANT SELECT ON test TO ${serviceuser};
GRANT SELECT ON test TO ${readonlyuser};