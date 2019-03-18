CREATE TABLE searchtype (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(50) NOT NULL,
  relevantpowerid int4 NOT NULL REFERENCES relevantpowers(id),
  description text,
  usedonobject bool,
  usedonhuman bool,
  sop bool
);

-- GRANTs
GRANT SELECT ON searchtype TO ${serviceuser};
GRANT SELECT ON searchtype TO ${readonlyuser};

COMMENT ON TABLE searchtype IS '{"description": "Types of search that can be performed", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN searchtype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN searchtype.type IS '{"label": "Search type", "description": "Type of search", "summaryview": "true"}';
COMMENT ON COLUMN searchtype.description IS '{"label": "Description", "description": "Description of search", "summaryview": "true"}';
COMMENT ON COLUMN searchtype.usedonobject IS '{"label": "Object", "description": "Allowed to be used on objects", "summaryview": "true"}';
COMMENT ON COLUMN searchtype.usedonhuman IS '{"label": "Human", "description": "Allowed to be used on humans", "summaryview": "true"}';
COMMENT ON COLUMN searchtype.sop IS '{"label": "Search of Person", "description": "Valid for search of person", "summaryview": "false"}';