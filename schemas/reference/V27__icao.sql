CREATE TABLE icao (
  id uuid NOT NULL,
  countryid varchar(2) NOT NULL REFERENCES country(id),
  name varchar(100) NOT NULL,
  iata varchar(3) ,
  municipality varchar(60) ,
  icao varchar(10) NOT NULL,
  geolat numeric NOT NULL,
  geolong numeric NOT NULL,
  type varchar(40)
);

-- GRANTs
GRANT SELECT ON icao TO ${anonuser};
GRANT SELECT ON icao TO ${serviceuser};
GRANT SELECT ON icao TO ${readonlyuser};


COMMENT ON TABLE icao IS '{"description": "ICAO list", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN icao.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN icao.name IS '{"label": "Name", "description": "ICAO site name", "summaryview": "true"}';
COMMENT ON COLUMN icao.iata IS '{"label": "IATA", "description": "IATA code", "summaryview": "true"}';
COMMENT ON COLUMN icao.municipality IS '{"label": "City", "description": "Municipality / region", "summaryview": "true", "aliases": "city", "region"}';
COMMENT ON COLUMN icao.icao IS '{"label": "ICAO code", "description": "ICAO code", "summaryview": "true"}';
COMMENT ON COLUMN icao.geolat IS '{"label": "Latitude", "description": "Geographic latitude", "summaryview": "false"}';
COMMENT ON COLUMN icao.geolong IS '{"label": "Longitude", "description": "Geographic longitude", "summaryview": "false"}';
COMMENT ON COLUMN icao.type IS '{"label": "Port type", "description": "Type of port", "summaryview": "true"}';