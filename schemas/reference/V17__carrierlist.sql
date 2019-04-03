CREATE TABLE carrierlist (
  id int4 NOT NULL PRIMARY KEY,
  name varchar(60) NOT NULL,
  twolettercode varchar(2),
  designator int4,
  alliance varchar(60) ,
  aviation bool NOT NULL,
  maritime bool NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON carrierlist TO ${anonuser};
GRANT SELECT ON carrierlist TO ${serviceuser};
GRANT SELECT ON carrierlist TO ${readonlyuser};

COMMENT ON TABLE carrierlist IS '{"description": "List of Carriers", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN carrierlist.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN carrierlist.name IS '{"label": "Carrier name", "description": "Name of carrier", "summaryview": "true"}';
COMMENT ON COLUMN carrierlist.twolettercode IS '{"label": "Two letter code", "description": "Two letter carrier code", "summaryview": "true"}';
COMMENT ON COLUMN carrierlist.designator IS '{"label": "Airline designator", "description": "Airline designator code", "summaryview": "true"}';
COMMENT ON COLUMN carrierlist.alliance IS '{"label": "Alliance code", "description": "Alliance partnership code", "summaryview": "true"}';
COMMENT ON COLUMN carrierlist.aviation IS '{"label": "Aviation", "description": "Aviation carrier?", "summaryview": "true"}';
COMMENT ON COLUMN carrierlist.maritime IS '{"label": "Maritime", "description": "Maritime carrier?", "summaryview": "true"}';
COMMENT ON COLUMN carrierlist.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN carrierlist.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';