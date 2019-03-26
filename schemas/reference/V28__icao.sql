CREATE TABLE icao (
  id uuid NOT NULL PRIMARY KEY,
  iso31661alpha2 varchar(2) NULL,
  name varchar(100) NOT NULL,
  iata varchar(3) ,
  municipality varchar(60) ,
  icao varchar(10) NOT NULL,
  geolat numeric NOT NULL,
  geolong numeric NOT NULL,
  type varchar(40),
  countryid INTEGER NULL REFERENCES country(id),
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON icao TO ${anonuser};
GRANT SELECT ON icao TO ${serviceuser};
GRANT SELECT ON icao TO ${readonlyuser};


COMMENT ON TABLE icao IS '{"description": "ICAO list", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN icao.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN icao.iso31661alpha2 IS '{"label": "2 digit alpha code", "description": "Country 2 Character alpha code", "summaryview": "true"}';
COMMENT ON COLUMN icao.name IS '{"label": "Name", "description": "ICAO site name", "summaryview": "true"}';
COMMENT ON COLUMN icao.iata IS '{"label": "IATA", "description": "IATA code", "summaryview": "true"}';
COMMENT ON COLUMN icao.municipality IS '{"label": "City", "description": "Municipality / region", "summaryview": "true", "aliases": "city", "region"}';
COMMENT ON COLUMN icao.icao IS '{"label": "ICAO code", "description": "ICAO code", "summaryview": "true"}';
COMMENT ON COLUMN icao.geolat IS '{"label": "Latitude", "description": "Geographic latitude", "summaryview": "false"}';
COMMENT ON COLUMN icao.geolong IS '{"label": "Longitude", "description": "Geographic longitude", "summaryview": "false"}';
COMMENT ON COLUMN icao.type IS '{"label": "Port type", "description": "Type of port", "summaryview": "true"}';
COMMENT ON COLUMN icao.countryid IS '{"label": "Linked country id", "description": "Country link to Country dataset", "summaryview": "false", "linkedrecord": "country(id)"}';
COMMENT ON COLUMN icao.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN icao.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';