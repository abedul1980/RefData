CREATE TABLE criminalrecordtype (
  id int4 NOT NULL PRIMARY KEY,
  recordname varchar(20) NOT NULL
);

-- GRANTs
GRANT SELECT ON criminalrecordtype TO ${anonuser};
GRANT SELECT ON criminalrecordtype TO ${serviceuser};
GRANT SELECT ON criminalrecordtype TO ${readonlyuser};

COMMENT ON TABLE criminalrecordtype IS '{"description": "Criminal record type", "schemalastupdated": "06/03/2019", "dataversion": 1}';
COMMENT ON COLUMN criminalrecordtype.id IS '{"label": "Identifier", "description": "Unique identifying column", "summaryview": "false"}';
COMMENT ON COLUMN criminalrecordtype.recordname IS '{"description": "record category", "summaryview": "true"}';