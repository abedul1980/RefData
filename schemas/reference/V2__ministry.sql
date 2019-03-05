CREATE TABLE ministry (
  id INTEGER NOT NULL PRIMARY KEY,
  name CHARACTER VARYING(60) NOT NULL
);


GRANT SELECT ON ministry TO ${service_user};
GRANT SELECT ON ministry TO ${readonly_user};


