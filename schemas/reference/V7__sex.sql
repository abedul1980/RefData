-- CHANGE name=init-sex-table
CREATE TABLE sex (
  sexcharacter CHARACTER VARYING(1) NOT NULL PRIMARY KEY,
  sexname CHARACTER VARYING(20) NOT NULL UNIQUE
);


-- load initial data

COPY sex FROM stdin CSV HEADER;
"sexcharacter","sexname"
"M","Male"
"F","Female"
"X","Indeterminate"
"U","Unknown"
\.

-- GRANTs
GRANT SELECT ON sex TO ${anon_user};
GRANT SELECT ON sex TO ${service_user};
GRANT SELECT ON sex TO ${readonly_user};