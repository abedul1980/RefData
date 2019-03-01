CREATE TABLE department (
  departmentid INTEGER NOT NULL PRIMARY KEY,
  departmentname CHARACTER VARYING(100) NOT NULL,
  ministryid INTEGER NOT NULL REFERENCES ministry(ministryid)
);


GRANT SELECT ON department TO ${service_user};
GRANT SELECT ON department TO ${readonly_user};


COPY department FROM STDIN CSV HEADER;
"departmentid","departmentname","ministryid"
1,"Border Force",1
2,"DDaT",1
3,"Immigration",1
4,"PPPT",1
5,"Capabilities and Resources",1
6,"HMPO",1
7,"OSCT",1
\.