CREATE TABLE activitytype (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(20),
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON activitytype TO ${serviceuser};
GRANT SELECT ON activitytype TO ${readonlyuser};

COMMENT ON TABLE activitytype IS '{"description": "Activity type clarification", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN activitytype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN activitytype.type IS '{"label": "Activity type", "description": "Type description", "summaryview": "true"}';
COMMENT ON COLUMN activitytype.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN activitytype.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
