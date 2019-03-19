CREATE TABLE teamlocations (
  id uuid NOT NULL PRIMARY KEY,
  teamid uuid NOT NULL REFERENCES team(id),
  locationid int4 NOT NULL REFERENCES location(id)
);

-- GRANTs
GRANT SELECT ON teamlocations TO ${serviceuser};
GRANT SELECT ON teamlocations TO ${readonlyuser};

COMMENT ON TABLE teamlocations IS '{"description": "Team to location mapping", "schemalastupdated": "06/03/2019", "dataversion": 1}';