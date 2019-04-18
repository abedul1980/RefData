CREATE TABLE "dogrole" (
  "id" int4 NOT NULL PRIMARY KEY,
  "code" varchar(2) NOT NULL,
  "description" varchar(60) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON dogrole TO ${anonuser};
GRANT SELECT ON dogrole TO ${serviceuser};
GRANT SELECT ON dogrole TO ${readonlyuser};

COMMENT ON TABLE dogrole IS '{"description": "Dog roles", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN dogrole.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN dogrole.code IS '{"label": "Code", "description": "Dog role codes", "summaryview": "true"}';
COMMENT ON COLUMN dogrole.description IS '{"label": "Short description", "description": "Description of dog role", "summaryview": "true"}';
COMMENT ON COLUMN dogrole.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN dogrole.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';