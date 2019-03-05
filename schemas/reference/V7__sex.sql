-- CHANGE name=init-sex-table
CREATE TABLE sex (
  sexcharacter CHARACTER VARYING(1) NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(20) NOT NULL UNIQUE
);

-- GRANTs
GRANT SELECT ON sex TO ${anon_user};
GRANT SELECT ON sex TO ${service_user};
GRANT SELECT ON sex TO ${readonly_user};