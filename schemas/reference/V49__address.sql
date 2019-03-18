CREATE TABLE address (
  id uuid NOT NULL PRIMARY KEY,
  line1 varchar(60)NOT NULL,
  line2 varchar(60),
  line3 varchar(60),
  city varchar(60)NOT NULL,
  geographicregionid int4 NOT NULL REFERENCES geographicregion(id),
  countryid varchar(2)NOT NULL REFERENCES country(id),
  postcode varchar(10)
);

-- GRANTs
GRANT SELECT ON address TO ${serviceuser};
GRANT SELECT ON address TO ${readonlyuser};

COMMENT ON TABLE address IS '{"description": "Address list for location", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN address.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN address.line1 IS '{"label": "Address line 1", "description": "First line of address", "summaryview": "true"}';
COMMENT ON COLUMN address.line2 IS '{"label": "Address line 2", "description": "Second line of address", "summaryview": "false"}';
COMMENT ON COLUMN address.line3 IS '{"label": "Address line 3" "description": "Third line of address", "summaryview": "false"}';
COMMENT ON COLUMN address.city IS '{"label": "City", "description": "Town / City", "summaryview": "true", "aliases": "town"}';
COMMENT ON COLUMN address.postcode IS '{"label": "Post code", "description": "Post Code / ZIP", "summaryview": "true", "aliases": "zip code"}';