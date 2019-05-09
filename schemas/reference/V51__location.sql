CREATE TABLE location (
  id int4 NOT NULL PRIMARY KEY,
  name varchar(50) NOT NULL,
  description text,
  unlocodeid uuid REFERENCES unlocode(id),
  addressid uuid NOT NULL REFERENCES address(id),
  geolat numeric NOT NULL,
  geolong numeric NOT NULL,
  icaoid uuid REFERENCES icao(id),
  bflocationtypeid uuid REFERENCES bflocationtype(id),
  code VARCHAR(8) NOT NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON location TO ${serviceuser};
GRANT SELECT ON location TO ${readonlyuser};


COMMENT ON TABLE location IS '{"description": "Location details", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN location.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN location.name IS '{"label": "Name", "description": "Location name", "summaryview": "true"}';
COMMENT ON COLUMN location.geolat IS '{"label": "Latitude", "description": "Geographic latitude", "summaryview": "false"}';
COMMENT ON COLUMN location.geolong IS '{"label": "Longitude", "description": "Geographic longitude", "summaryview": "false"}';
COMMENT ON COLUMN location.description IS '{"label": "Description", "description": "Description of location", "summaryview": "true"}';
COMMENT ON COLUMN location.code IS '{"label": "Code", "description": "Code of location", "summaryview": "true"}';
COMMENT ON COLUMN location.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN location.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
COMMENT ON COLUMN location.unlocodeid IS '{"label": "UN Location Code ID", "description": "Link to unlocode entity", "summaryview" : "false"}';
COMMENT ON COLUMN location.addressid IS '{"label": "Address ID", "description": "Link to address entity", "summaryview" : "false"}';
COMMENT ON COLUMN location.icaoid IS '{"label": "ICAO Code ID", "description": "Link to icao entity", "summaryview" : "false"}';
COMMENT ON COLUMN location.bflocationtypeid IS '{"label": "BF location type ID", "description": "Link to bflocationtype entity", "summaryview" : "false"}';
