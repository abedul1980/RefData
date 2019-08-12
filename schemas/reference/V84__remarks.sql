CREATE TABLE remarks (
  id INTEGER NOT NULL PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  description VARCHAR(100),
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE remarks IS '{"label": "remarks", "description": "Remarks denoting the outcome of an event.", "schemalastupdated": "07/08/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN remarks.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN remarks.name IS '{"label": "Name", "description": "Name of the remark.", "summaryview": "true"}';
COMMENT ON COLUMN remarks.description IS '{"label": "Description", "description": "A definition of the meaning of the remark.", "summaryview": "true"}';
COMMENT ON COLUMN remarks.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN remarks.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON remarks TO ${serviceuser};
GRANT SELECT ON remarks TO ${readonlyuser};
