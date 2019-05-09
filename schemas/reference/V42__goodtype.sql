CREATE TABLE goodtype (
  id uuid NOT NULL PRIMARY KEY,
  "level1name" varchar(60) NOT NULL,
  "level2name" varchar(60) NOT NULL,
  "level3name" varchar(60) NOT NULL,
  "controlstrategypriority" varchar(1),
  "description" varchar(150),
  "enforcedfrom" date NOT NULL,
  "enforcedto" date,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON goodtype TO ${serviceuser};
GRANT SELECT ON goodtype TO ${readonlyuser};

COMMENT ON TABLE goodtype IS '{"description": "Customs and Seizure good type", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN goodtype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN goodtype.level1name IS '{"label": "Name level 1", "description": "Name of high level category good", "summaryview": "true"}';
COMMENT ON COLUMN goodtype.level2name IS '{"label": "Name level 1", "description": "Name of high level category good", "summaryview": "true"}';
COMMENT ON COLUMN goodtype.level3name IS '{"label": "Name level 1", "description": "Name of high level category good", "summaryview": "true"}';
COMMENT ON COLUMN goodtype.description IS '{"label": "Description", "description": "Description of good", "summaryview": "true"}';
COMMENT ON COLUMN goodtype.controlstrategypriority IS '{"label": "Control priority", "description": "Priority of control strategy", "summaryview": "false"}';
COMMENT ON COLUMN goodtype.enforcedfrom IS '{"label": "Enforce from", "description": "Date controlled enforced from", "summaryview": "false"}';
COMMENT ON COLUMN goodtype.enforcedto IS '{"label": "Enforced to", "description": "Date controlled enforced to", "summaryview": "false"}';
COMMENT ON COLUMN goodtype.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN goodtype.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';