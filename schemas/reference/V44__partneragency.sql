CREATE TABLE partneragency (
  id int4 NOT NULL PRIMARY KEY,
  name varchar(50) NOT NULL,
  abbreviatedname varchar(50) NOT NULL,
  seizure bool NOT NULL,
  intelligence bool NOT NULL,
  disclosure bool NOT NULL,
  referralfrom bool NOT NULL,
  referralto bool NOT NULL
);

-- GRANTs
GRANT SELECT ON partneragency TO ${serviceuser};
GRANT SELECT ON partneragency TO ${readonlyuser};

COMMENT ON TABLE partneragency IS '{"description": "Partner agencies", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN partneragency.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN partneragency.name IS '{"label": "Name", "description": "Partner agency name", "summaryview": "true"}';
COMMENT ON COLUMN partneragency.abbreviatedname IS '{"label": "Abbreviated name", "description": "Partner agency short name", "summaryview": "true"}';
COMMENT ON COLUMN partneragency.seizure IS '{"label": "Seizure", "description": "Valid seizure partner", "summaryview": "true"}';
COMMENT ON COLUMN partneragency.intelligence IS '{"label": "Intelligence", "description": "Valid intelligence partner", "summaryview": "true"}';
COMMENT ON COLUMN partneragency.disclosure IS '{"label": "Disclosure", "description": "Valid disclosure partner", "summaryview": "true"}';
COMMENT ON COLUMN partneragency.referralfrom IS '{"label": "Referral from", "description": "Partner allowed to make referrals", "summaryview": "true"}';
COMMENT ON COLUMN partneragency.referralto IS '{"label": "Referral to", "description": "Partner allowed to receive referrals", "summaryview": "true"}';