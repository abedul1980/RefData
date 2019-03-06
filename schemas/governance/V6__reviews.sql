CREATE TABLE reviews(
  id UUID DEFAULT uuidgeneratev4() NOT NULL PRIMARY KEY,
  changelogid UUID REFERENCES changelog(id) NOT NULL,
  comment TEXT NOT NULL,
  approve BOOLEAN NOT NULL,
  datetime TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  email character varying(60) NOT NULL
);

GRANT SELECT,UPDATE,INSERT ON reviews TO ${serviceuser};