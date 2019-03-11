-- CHANGE name=init-nationality-table
CREATE TABLE nationality (
  id INTEGER NOT NULL PRIMARY KEY,
  nationality CHARACTER VARYING(330) NOT NULL,
  "iso3166alpha3" CHARACTER VARYING(3) NULL,
  "iso3166alpha2" CHARACTER VARYING(2) NULL,
  visarequired BOOLEAN NOT NULL,
  evwoptional BOOLEAN NOT NULL,
  diplomaticexception BOOLEAN NOT NULL,
  specialexception BOOLEAN NOT NULL
);


COMMENT ON TABLE nationality IS '{"description": "Nationalities", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN nationality.id IS '{"description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN nationality.nationality IS '{"description": "Nationality names", "summaryview": "true"}';
COMMENT ON COLUMN nationality.iso3166alpha3 IS '{"description": "Country 3 Character alpha code", "summaryview": "true"}';
COMMENT ON COLUMN nationality.iso3166alpha2 IS '{"description": "Country 2 Character alpha code", "summaryview": "true"}';
COMMENT ON COLUMN nationality.visarequired IS '{"description": "Is VISA required to visit UK", "summaryview": "false"}';
COMMENT ON COLUMN nationality.evwoptional IS '{"description": "Is EVW optional to visit UK", "summaryview": "false"}';
COMMENT ON COLUMN nationality.diplomaticexception IS '{"description": "Are there diplomatic exceptions for visiting the UK", "summaryview": "false"}';
COMMENT ON COLUMN nationality.specialexception IS '{"description": "Are there special exceptions for visiting the UK", "summaryview": "false"}';

-- GRANTs
GRANT SELECT ON nationality TO ${anonuser};
GRANT SELECT ON nationality TO ${serviceuser};
GRANT SELECT ON nationality TO ${readonlyuser};