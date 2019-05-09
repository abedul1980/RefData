CREATE TABLE technicalprojects (
  id uuid NOT NULL PRIMARY KEY,
  groupid uuid NOT NULL REFERENCES projectgroup(id),
  teamid uuid NOT NULL REFERENCES team(id),
  name varchar(100) NOT NULL,
  code varchar(10) NOT NULL,
  validfrom date,
  validto date
);

GRANT SELECT ON technicalprojects TO ${serviceuser};
GRANT SELECT ON technicalprojects TO ${readonlyuser};

COMMENT ON TABLE technicalprojects IS '{"description": "Technical Projects", "schemalastupdated": "02/05/2019", "dataversion": 1}';
COMMENT ON COLUMN technicalprojects.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN technicalprojects.groupid IS '{"label": "Project Group ID", "description": "Project responsible group", "summaryview": "true"}';
COMMENT ON COLUMN technicalprojects.name IS '{"label": "Name", "description": "Project name", "summaryview": "true"}';
COMMENT ON COLUMN technicalprojects.teamid IS '{"label": "Team", "description": "Team the project belongs to", "summaryview": "true"}';
COMMENT ON COLUMN technicalprojects.code IS '{"label": "Project code", "description": "Short code for the project", "summaryview": "true"}';
COMMENT ON COLUMN technicalprojects.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN technicalprojects.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
