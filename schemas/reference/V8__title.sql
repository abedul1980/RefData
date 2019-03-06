-- CHANGE name=init-rftitle-table
CREATE TABLE title (
  id INTEGER NOT NULL PRIMARY KEY,
  title CHARACTER VARYING(20) NOT NULL UNIQUE
);

-- GRANTs
GRANT SELECT ON title TO ${anonuser};
GRANT SELECT ON title TO ${serviceuser};
GRANT SELECT ON title TO ${readonlyuser};