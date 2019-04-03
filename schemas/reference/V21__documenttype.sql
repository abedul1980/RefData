CREATE TABLE "documenttype" (
  "id" int4 NOT NULL PRIMARY KEY,
  "code" varchar(2) NOT NULL,
  "shortdescription" varchar(40) NOT NULL,
  "longdescription" varchar(100),
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON documenttype TO ${anonuser};
GRANT SELECT ON documenttype TO ${serviceuser};
GRANT SELECT ON documenttype TO ${readonlyuser};

COMMENT ON TABLE documenttype IS '{"description": "Identity document type", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN documenttype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN documenttype.code IS '{"label": "Code", "description": "Document system code", "summaryview": "true"}';
COMMENT ON COLUMN documenttype.shortdescription IS '{"label": "Short description", "description": "Document code short description", "summaryview": "true"}';
COMMENT ON COLUMN documenttype.shortdescription IS '{"label": "Long description", "description": "Document code long description", "summaryview": "true"}';
COMMENT ON COLUMN documenttype.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN documenttype.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';