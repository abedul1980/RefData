CREATE TABLE producttype (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  description VARCHAR(200),
  incoming boolean,
  outgoing boolean,
  outgoinganalyst boolean,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE producttype IS '{"label": "producttype", "description": "Types of intelligence product.", "schemalastupdated": "07/08/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN producttype.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN producttype.name IS '{"label": "Name", "Name": "Name of the product.", "summaryview": "true"}';
COMMENT ON COLUMN producttype.description IS '{"label": "Description", "description": "A description of the product.", "summaryview": "true"}';
COMMENT ON COLUMN producttype.incoming IS '{"label": "Incoming?", "description": "Incoming?", "summaryview": "false"}';
COMMENT ON COLUMN producttype.outgoing IS '{"label": "Outgoing?", "description": "Outgoing?", "summaryview": "false"}';
COMMENT ON COLUMN producttype.outgoinganalyst IS '{"label": "Outgoing Analysist?", "description": "Outgoing Analysist?", "summaryview": "false"}';
COMMENT ON COLUMN producttype.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN producttype.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON producttype TO ${serviceuser};
GRANT SELECT ON producttype TO ${readonlyuser};
