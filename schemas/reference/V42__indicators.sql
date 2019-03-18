CREATE TABLE indicators (
  id int4 NOT NULL PRIMARY KEY,
  indicator varchar(200),
  ct bool NOT NULL,
  ien bool NOT NULL,
  referral bool NOT NULL
);

-- GRANTs
GRANT SELECT ON indicators TO ${serviceuser};
GRANT SELECT ON indicators TO ${readonlyuser};

COMMENT ON TABLE indicators IS '{"description": "Intelligence indicators", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN indicators.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN indicators.indicator IS '{"label": "Indicator description", "description": "Type of indicator", "summaryview": "true"}';
COMMENT ON COLUMN indicators.ct IS '{"label": "CT", "description": "Valid type for counter terrorism", "summaryview": "true"}';
COMMENT ON COLUMN indicators.ien IS '{"label": "IEN", "description": "Valid type for immediate event notification", "summaryview": "true"}';
COMMENT ON COLUMN indicators.referral IS '{"label": "Referral", "description": "Valid types for referrals", "summaryview": "true"}';