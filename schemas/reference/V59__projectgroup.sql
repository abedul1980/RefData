CREATE TABLE projectgroup (
  id uuid NOT NULL PRIMARY KEY,
  name varchar(100) NOT NULL,
  description text NOT NULL,
  ministryid int4 NOT NULL REFERENCES ministry(id),
  departmentid int4 NOT NULL REFERENCES department(id),
  directorateid int4 REFERENCES directorate(id),
  branchid int4 REFERENCES branch(id),
  divisionid int4 REFERENCES division(id),
  commandid int4 REFERENCES command(id),
  validfrom date,
  validto date
);

GRANT SELECT ON projectgroup TO ${serviceuser};
GRANT SELECT ON projectgroup TO ${readonlyuser};

COMMENT ON TABLE projectgroup IS '{"description": "Project groups", "schemalastupdated": "02/05/2019", "dataversion": 1}';
COMMENT ON COLUMN projectgroup.name IS '{"label": "Name", "description": "Project group name", "summaryview": "true"}';
COMMENT ON COLUMN projectgroup.description IS '{"label": "Description", "description": "Project group description", "summaryview": "true"}';
COMMENT ON COLUMN projectgroup.ministryid IS '{"label": "Ministry ID", "description": "Link to ministry entity", "summaryview" : "false"}';
COMMENT ON COLUMN projectgroup.departmentid IS '{"label": "Department ID", "description": "Link to department entity", "summaryview" : "false"}';
COMMENT ON COLUMN projectgroup.directorateid IS '{"label": "Directorate ID", "description": "Link to directorate entity", "summaryview" : "false"}';
COMMENT ON COLUMN projectgroup.branchid IS '{"label": "Branch ID", "description": "Link to branch entity", "summaryview" : "false"}';
COMMENT ON COLUMN projectgroup.divisionid IS '{"label": "Division ID", "description": "Link to division entity", "summaryview" : "false"}';
COMMENT ON COLUMN projectgroup.commandid IS '{"label": "Command ID", "description": "Link to command entity", "summaryview" : "false"}';
COMMENT ON COLUMN projectgroup.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN projectgroup.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
