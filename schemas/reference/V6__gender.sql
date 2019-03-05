-- CHANGE name=init-gender.sql
CREATE TABLE gender (
  id INTEGER NOT NULL PRIMARY KEY,
  gender CHARACTER VARYING(20) NOT NULL UNIQUE
);

-- GRANTs
GRANT SELECT ON gender TO ${anon_user};
GRANT SELECT ON gender TO ${service_user};
GRANT SELECT ON gender TO ${readonly_user};