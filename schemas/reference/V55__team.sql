CREATE TABLE team (
  id uuid NOT NULL PRIMARY KEY,
  name varchar(100) NOT NULL,
  code varchar(100) NOT NULL,
  description text,
  costcentrecode varchar(50),
  parentteamid uuid REFERENCES team(id),
  bffunctiontypeid uuid NOT NULL REFERENCES bffunctiontypes(id),
  ministryid int4 NOT NULL REFERENCES ministry(id),
  departmentid int4 NOT NULL REFERENCES department(id),
  directorateid int4 REFERENCES directorate(id),
  branchid int4 REFERENCES branch(id),
  divisionid int4 REFERENCES division(id),
  commandid int4 REFERENCES command(id),
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON team TO ${serviceuser};
GRANT SELECT ON team TO ${readonlyuser};

COMMENT ON TABLE team IS '{"description": "Teams", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN team.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN team.name IS '{"label": "Name", "description": "Name of team", "summaryview": "true"}';
COMMENT ON COLUMN team.code IS '{"label": "Code", "description": "Team code", "summaryview": "true"}';
COMMENT ON COLUMN team.description IS '{"label": "Description", "description": "Description of team", "summaryview": "true"}';
COMMENT ON COLUMN team.costcentrecode IS '{"label": "Cost centre", "description": "Team cost centre code", "summaryview": "true"}';
COMMENT ON COLUMN team.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN team.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
COMMENT ON COLUMN team.bffunctiontypeid IS '{"label": "Function type ID", "description": "Link to border force functions entity", "summaryview" : "false"}';
COMMENT ON COLUMN team.ministryid IS '{"label": "Ministry ID", "description": "Link to ministry entity", "summaryview" : "false"}';
COMMENT ON COLUMN team.departmentid IS '{"label": "Department ID", "description": "Link to department entity", "summaryview" : "false"}';
COMMENT ON COLUMN team.directorateid IS '{"label": "Directorate ID", "description": "Link to directorate entity", "summaryview" : "false"}';
COMMENT ON COLUMN team.branchid IS '{"label": "Branch ID", "description": "Link to branch entity", "summaryview" : "false"}';
COMMENT ON COLUMN team.divisionid IS '{"label": "Division ID", "description": "Link to division entity", "summaryview" : "false"}';
COMMENT ON COLUMN team.commandid IS '{"label": "Command ID", "description": "Link to command entity", "summaryview" : "false"}';
