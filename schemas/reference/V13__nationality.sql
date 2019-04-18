-- CHANGE name=init-nationality-table
CREATE TABLE nationality (
  id INTEGER NOT NULL PRIMARY KEY,
  nationality CHARACTER VARYING(330) NOT NULL,
  "iso31661alpha3" CHARACTER VARYING(3) NULL,
  "iso31661alpha2" CHARACTER VARYING(2) NULL,
  visarequired BOOLEAN NOT NULL,
  evwoptional BOOLEAN NOT NULL,
  diplomaticexception BOOLEAN NOT NULL,
  specialexception BOOLEAN NOT NULL,
  countryid INTEGER NULL REFERENCES country(id),
  validfrom date,
  validto date
);


COMMENT ON TABLE nationality IS '{"description": "Nationalities", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN nationality.id IS '{"label": "Identifier", "description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN nationality.nationality IS '{"label": "Identifier", "description": "Nationality names", "summaryview": "true"}';
COMMENT ON COLUMN nationality.iso31661alpha3 IS '{"label": "3 digit alpha code", "description": "Country 3 Character alpha code", "summaryview": "true"}';
COMMENT ON COLUMN nationality.iso31661alpha2 IS '{"label": "2 digit alpha code", "description": "Country 2 Character alpha code", "summaryview": "true"}';
COMMENT ON COLUMN nationality.visarequired IS '{"label": "Visa required", "description": "Is VISA required to visit UK", "summaryview": "false"}';
COMMENT ON COLUMN nationality.evwoptional IS '{"label": "Optional - EVW", "description": "Is Electronic Visa Waver optional to visit UK", "summaryview": "false"}';
COMMENT ON COLUMN nationality.diplomaticexception IS '{"label": "Exception - Diplomatic", "description": "Are there diplomatic exceptions for visiting the UK", "summaryview": "false"}';
COMMENT ON COLUMN nationality.specialexception IS '{"label": "Exception - Special", "description": "Are there special exceptions for visiting the UK", "summaryview": "false"}';
COMMENT ON COLUMN nationality.countryid IS '{"label": "Linked country id", "description": "Country link to Country dataset", "summaryview": "false"}';
COMMENT ON COLUMN nationality.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN nationality.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON nationality TO ${anonuser};
GRANT SELECT ON nationality TO ${serviceuser};
GRANT SELECT ON nationality TO ${readonlyuser};
