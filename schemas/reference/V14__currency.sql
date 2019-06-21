-- CHANGE name=init-currency-table
CREATE TABLE currency (
  id INTEGER NOT NULL PRIMARY KEY,
  iso31661alpha2 VARCHAR(2) NOT NULL,
  currency VARCHAR(50) NOT NULL,
  currencycode VARCHAR(3) NOT NULL,
  countryid INTEGER NULL REFERENCES country(id),
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);


-- Table comment
COMMENT ON TABLE currency IS '{"label": "Currencies", "description": "A list of global currencies.", "schemalastupdated": "10/03/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN currency.id IS '{"label": "Identifier", "description": "Database unique identity record.", "summaryview": "false"}';
COMMENT ON COLUMN currency.iso31661alpha2 IS '{"label": "2 digit alpha code", "description": "Country 2 Character alpha code.", "summaryview": "true"}';
COMMENT ON COLUMN currency.currency IS '{"label": "Currency", "description": "Currency name.", "summaryview": "true"}';
COMMENT ON COLUMN currency.currencycode IS '{"label": "Code", "description": "Currency code.", "summaryview": "true"}';
COMMENT ON COLUMN currency.countryid IS '{"label": "Linked country id", "description": "Country link to Country dataset.", "summaryview": "false"}';
COMMENT ON COLUMN currency.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN currency.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON currency TO ${anonuser};
GRANT SELECT ON currency TO ${serviceuser};
GRANT SELECT ON currency TO ${readonlyuser};
