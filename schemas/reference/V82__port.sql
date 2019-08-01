CREATE TABLE port (
  id INT4 NOT NULL PRIMARY KEY,
  branchid INTEGER NOT NULL REFERENCES branch(id),
  commandid INT4 NOT NULL REFERENCES command(id),
  name VARCHAR(70) NOT NULL,
  addressid UUID NOT NULL REFERENCES address(id),
  portsizeid INTEGER REFERENCES portsize(id),
  bffunctiontypesid UUID REFERENCES bffunctiontypes(id),
  helipad BOOLEAN,
  unlocodeid UUID REFERENCES unlocode(id),
  localcode VARCHAR (10),
  icaoid UUID REFERENCES icao(id),
  geolat NUMERIC NOT NULL,
  geolong NUMERIC NOT NULL,
  validfrom TIMESTAMP WITH TIME ZONE,
  validto TIMESTAMP WITH TIME ZONE
);

-- Table comment
COMMENT ON TABLE port IS '{"label": "Location", "description": "A list of ports and their associated details.", "schemalastupdated": "01/08/2019", "dataversion": 1}';
-- Column comments
COMMENT ON COLUMN port.id IS '{"label": "Identifier", "description": "Unique identifying column.", "summaryview": "false"}';
COMMENT ON COLUMN port.branchid IS '{"label": "Branch ID", "description": "ID of the Branch that is resposible for this port.", "summaryview": "false"}';
COMMENT ON COLUMN port.commandid IS '{"label": "Command ID", "description": "ID of the Command that is resposible for this port.", "summaryview": "false"}';
COMMENT ON COLUMN port.name IS '{"label": "Name", "description": "Name of the port.", "summaryview": "true"}';
COMMENT ON COLUMN port.addressid IS '{"label": "Address", "description": "Link to the postal address of the port.", "summaryview" : "false"}';
COMMENT ON COLUMN port.portsizeid IS '{"label": "Port Size ID", "description": "Link to the Port Size entity.", "summaryview" : "true"}';
COMMENT ON COLUMN port.bffunctiontypesid IS '{"label": "Function Type ID", "description": "Link to the list of transport functions.", "summaryview" : "false"}';
COMMENT ON COLUMN port.helipad IS '{"label": "Helipad", "description": "Does this port have a helipad?", "summaryview" : "false"}';
COMMENT ON COLUMN port.unlocodeid IS '{"label": "UN Location Code ID", "description": "Link to unlocode entity.", "summaryview" : "false"}';
COMMENT ON COLUMN port.localcode IS '{"label": "BF local code", "description": "A unique local reference code.", "summaryview" : "false"}';
COMMENT ON COLUMN port.icaoid IS '{"label": "ICAO code ID", "description": "Link to icao entity.", "summaryview" : "false"}';
COMMENT ON COLUMN port.geolat IS '{"label": "Latitude", "description": "Geographic latitude", "summaryview": "false"}';
COMMENT ON COLUMN port.geolong IS '{"label": "Longitude", "description": "Geographic longitude", "summaryview": "false"}';
COMMENT ON COLUMN port.validfrom IS '{"label": "Valid from date", "description": "Item valid from date.", "summaryview" : "false"}';
COMMENT ON COLUMN port.validto IS '{"label": "Valid to date", "description": "Item valid to date.", "summaryview" : "false"}';

-- GRANTs
GRANT SELECT ON location TO ${serviceuser};
GRANT SELECT ON location TO ${readonlyuser};
