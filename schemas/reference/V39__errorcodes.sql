CREATE TABLE errorcodes (
  id varchar(10) NOT NULL PRIMARY KEY,
  message varchar(60) NOT NULL,
  description varchar(300) NOT NULL
);

-- GRANTs
GRANT SELECT ON errorcodes TO ${serviceuser};
GRANT SELECT ON errorcodes TO ${readonlyuser};

COMMENT ON TABLE errorcodes IS '{"description": "Error messages", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN errorcodes.id IS '{"label": "Identifier", "description": "Unique error code", "summaryview": "false"}';
COMMENT ON COLUMN errorcodes.message IS '{"label": "Message", "description": "System error message", "summaryview": "true"}';
COMMENT ON COLUMN errorcodes.description IS '{"label": "Description", "description": "Detailed description of error cause", "summaryview": "true"}';