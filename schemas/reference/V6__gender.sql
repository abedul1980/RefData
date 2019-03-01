-- CHANGE name=init-gender.sql
CREATE TABLE gender (
  genderid INTEGER NOT NULL PRIMARY KEY,
  gender CHARACTER VARYING(20) NOT NULL UNIQUE
);


-- load initial data

COPY gender FROM stdin CSV HEADER;
"genderid","gender"
"1","male"
"2","female"
"3","agender"
"4","androgyne"
"5","bi-gender"
"6","genderflugenderid"
"7","genderflux"
"8","nonbinary"
"9","polygender"
"10","transgender"
"11","two-spirit"
"12","vaguegender"
"13","X-gender"
"14","XTX"
"15","FTM"
"16","MTF"
\.

-- GRANTs
GRANT SELECT ON gender TO ${anon_user};
GRANT SELECT ON gender TO ${service_user};
GRANT SELECT ON gender TO ${readonly_user};