CREATE TABLE eventpeopletype (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(20) NOT NULL,
  description varchar(100) NOT NULL
);

-- GRANTs
GRANT SELECT ON eventpeopletype TO ${serviceuser};
GRANT SELECT ON eventpeopletype TO ${readonlyuser};

COMMENT ON TABLE eventpeopletype IS '{"description": "Types of people in an event", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN eventpeopletype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN eventpeopletype.type IS '{"label": "People type", "description": "Category of people in event", "summaryview": "true"}';
COMMENT ON COLUMN eventpeopletype.description IS '{"label": "Description", "description": "Description of people in event", "summaryview": "true"}';