CREATE TABLE activities (
  id int4 NOT NULL PRIMARY KEY,
  activity varchar(40) NOT NULL,
  activitytypeid int4 NOT NULL REFERENCES activities(id)
);

-- GRANTs
GRANT SELECT ON activities TO ${serviceuser};
GRANT SELECT ON activities TO ${readonlyuser};

COMMENT ON TABLE activities IS '{"description": "Work related activities", "schemalastupdated": "14/03/2019", "dataversion": 1}';
COMMENT ON COLUMN activities.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN activities.activity IS '{"label": "Activity", "description": "Activity descriptiopn", "summaryview": "true"}';