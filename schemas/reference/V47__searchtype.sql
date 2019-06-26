CREATE TABLE searchtype (
  id INT4 NOT NULL PRIMARY KEY,
  type VARCHAR(50) NOT NULL,
  relevantpowerid INT4 NOT NULL REFERENCES relevantpowers(id),
  description TEXT,
  usedonobject BOOLEAN,
  usedonhuman BOOLEAN,
  sop BOOLEAN,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE searchtype IS '{"label": "Search type", "description": "A list of the types of search that can be performed.", "schemalastupdated": "06/03/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN searchtype.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN searchtype.type IS '{"label": "Search type", "description": "The type of search.", "summaryview": "true"}';
COMMENT ON COLUMN searchtype.description IS '{"label": "Description", "description": "A description of the search.", "summaryview": "true"}';
COMMENT ON COLUMN searchtype.usedonobject IS '{"label": "Object", "description": "Allowed to be used on objects.", "summaryview": "true"}';
COMMENT ON COLUMN searchtype.usedonhuman IS '{"label": "Human", "description": "Allowed to be used on humans.", "summaryview": "true"}';
COMMENT ON COLUMN searchtype.sop IS '{"label": "Search of Person", "description": "Valid for search of person.", "summaryview": "false"}';
COMMENT ON COLUMN searchtype.relevantpowerid IS '{"label": "Relevant power ID", "description": "A link to the relevant power entity.", "summaryview" : "false"}';
COMMENT ON COLUMN searchtype.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN searchtype.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON searchtype TO ${serviceuser};
GRANT SELECT ON searchtype TO ${readonlyuser};
