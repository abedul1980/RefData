CREATE TABLE activitytype (
  id int4 NOT NULL PRIMARY KEY,
  type varchar(20)
);

-- GRANTs
GRANT SELECT ON activitytype TO ${serviceuser};
GRANT SELECT ON activitytype TO ${readonlyuser};

COMMENT ON TABLE activitytype IS '{"description": "Activity type clarification", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN activitytype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN activitytype.type IS '{"label": "Activity type", "description": "Type description", "summaryview": "true"}';
