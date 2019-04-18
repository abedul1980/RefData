CREATE TABLE technicalprojects (
  id uuid NOT NULL PRIMARY KEY,
  area varchar(20) NOT NULL,
  team varchar(20) NOT NULL,
  name varchar(100) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON technicalprojects TO ${serviceuser};
GRANT SELECT ON technicalprojects TO ${readonlyuser};

COMMENT ON TABLE technicalprojects IS '{"description": "Technical projects", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN technicalprojects.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN technicalprojects.area IS '{"label": "Area", "description": "Project responsible area", "summaryview": "true"}';
COMMENT ON COLUMN technicalprojects.team IS '{"label": "Team", "description": "Project team name", "summaryview": "true"}';
COMMENT ON COLUMN technicalprojects.name IS '{"label": "Name", "description": "Project name", "summaryview": "true"}';
COMMENT ON COLUMN technicalprojects.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN technicalprojects.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';