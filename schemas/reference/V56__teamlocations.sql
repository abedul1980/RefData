CREATE TABLE teamlocations (
  id uuid NOT NULL PRIMARY KEY,
  teamid uuid NOT NULL REFERENCES team(id),
  locationid int4 NOT NULL REFERENCES location(id),
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON teamlocations TO ${serviceuser};
GRANT SELECT ON teamlocations TO ${readonlyuser};

COMMENT ON TABLE teamlocations IS '{"description": "Team to location mapping", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN teamlocations.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN teamlocations.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
COMMENT ON COLUMN teamlocations.teamid IS '{"label": "Team ID", "description": "Link to team entity", "summaryview" : "true"}';
COMMENT ON COLUMN teamlocations.locationid IS '{"label": "Location ID", "description": "Link to location entity", "summaryview" : "true"}';
