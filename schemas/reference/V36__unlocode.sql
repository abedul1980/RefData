CREATE TABLE "unlocode" (
  "id" uuid NOT NULL PRIMARY KEY,
  "iso31661alpha2" varchar(2) NULL,
  "geolong" numeric,
  "geolat" numeric,
  "name" varchar(80) NOT NULL,
  "namewodiacritics" varchar(80) NOT NULL,
  "iata" varchar(3),
  "locode" varchar(3) NOT NULL,
  "seaport" bool NOT NULL,
  "railterminal" bool NOT NULL,
  "airport" bool NOT NULL,
  "postexchange" bool NOT NULL,
  "multimodal" bool NOT NULL,
  "fixedtransport" bool NOT NULL,
  "bordercrossing" bool NOT NULL,
  "subdivision" varchar(3),
  "roadterminal" bool NOT NULL,
  countryid INTEGER NULL,
  validfrom date,
  validto date
);

-- GRANTs
GRANT SELECT ON unlocode TO ${anonuser};
GRANT SELECT ON unlocode TO ${serviceuser};
GRANT SELECT ON unlocode TO ${readonlyuser};

COMMENT ON TABLE unlocode IS '{"description": "United Nations location code list", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN unlocode.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.name IS '{"label": "Name", "description": "Location name", "summaryview": "true"}';
COMMENT ON COLUMN unlocode.geolat IS '{"label": "Latitude", "description": "Geographic latitude", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.geolong IS '{"label": "Longitude", "description": "Geographic longitude", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.namewodiacritics IS '{"label": "Name with diacritics", "description": "Location name including diacritics", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.iata IS '{"label": "IATA", "description": "IATA code", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.locode IS '{"label": "Locode", "description": "Location code", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.seaport IS '{"label": "Sea port", "description": "Is an sea port?", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.railterminal IS '{"label": "Rail terminal", "description": "Is an rail terminal?", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.airport IS '{"label": "Airport", "description": "Is an airport?", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.postexchange IS '{"label": "Post exchanget", "description": "Is an postal exchange?", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.multimodal IS '{"label": "Multi modal", "description": "Is multi modal?", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.fixedtransport IS '{"label": "Fixed transport", "description": "Is a fixed transport point?", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.bordercrossing IS '{"label": "Border crossing", "description": "Is a border crossing point?", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.subdivision IS '{"label": "County", "description": "Area of port", "summaryview": "false", "aliases": "region"}';
COMMENT ON COLUMN unlocode.roadterminal IS '{"label": "Road terminal", "description": "Is a road terminal?", "summaryview": "false"}';
COMMENT ON COLUMN unlocode.countryid IS '{"label": "Linked country id", "description": "Country link to Country dataset", "summaryview": "false", "linkedrecord": "country(id)"';
COMMENT ON COLUMN unlocode.validfrom IS '{"label": "Valid from date", "description": "Item valid from date", "summaryview" : "false"}';
COMMENT ON COLUMN unlocode.validto IS '{"label": "Valid to date", "description": "Item valid to date", "summaryview" : "false"}';
COMMENT ON COLUMN unlocode.iso31661alpha2 IS '{"label": "2 digit alpha code", "description": "Country 2 Character alpha code", "summaryview": "true"}';