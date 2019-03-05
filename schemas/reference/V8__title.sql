-- CHANGE name=init-rftitle-table
CREATE TABLE title (
  id INTEGER NOT NULL PRIMARY KEY,
  title CHARACTER VARYING(20) NOT NULL UNIQUE
);

-- GRANTs
GRANT SELECT ON title TO ${anon_user};
GRANT SELECT ON title TO ${service_user};
GRANT SELECT ON title TO ${readonly_user};