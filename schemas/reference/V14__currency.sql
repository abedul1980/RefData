-- CHANGE name=init-currency-table
CREATE TABLE currency (
  id INTEGER NOT NULL PRIMARY KEY,
  countryid CHARACTER VARYING(2) NOT NULL REFERENCES country(id),
  currency CHARACTER VARYING(50) NOT NULL,
  currencycode CHARACTER VARYING(3) NOT NULL
);


COMMENT ON TABLE currency IS '{"description": "Currencies", "schemalastupdated": "10/03/2019", "dataversion": 1}';
COMMENT ON COLUMN currency.id IS '{"description": "database unique identity record", "summaryview": "false"}';
COMMENT ON COLUMN currency.currency IS '{"description": "Currency name", "summaryview": "true"}';
COMMENT ON COLUMN currency.currencycode IS '{"description": "Currency code", "summaryview": "true"}';

-- GRANTs
GRANT SELECT ON currency TO ${anonuser};
GRANT SELECT ON currency TO ${serviceuser};
GRANT SELECT ON currency TO ${readonlyuser};