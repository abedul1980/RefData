CREATE TABLE lockuptype (
  id int4 NOT NULL PRIMARY KEY,
  code varchar(6) NOT NULL,
  name varchar(40)
);

-- GRANTs
GRANT SELECT ON lockuptype TO ${serviceuser};
GRANT SELECT ON lockuptype TO ${readonlyuser};

COMMENT ON TABLE lockuptype IS '{"description": "Types of lockup", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN lockuptype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN lockuptype.name IS '{"label": "Name", "description": "Class of lockup", "summaryview": "true"}';
COMMENT ON COLUMN lockuptype.code IS '{"label": "Code", "description": "Lockup code", "summaryview": "true"}';