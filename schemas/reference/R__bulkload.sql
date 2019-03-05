/*
  MINISTRY
*/

CREATE TEMP TABLE tmp_ministry AS SELECT * FROM ministry WITH NO DATA;

COPY tmp_ministry FROM STDIN CSV HEADER;
id,name
1,Home Office
\.

INSERT INTO ministry
  SELECT  *
    FROM tmp_ministry
  ON CONFLICT (id) DO
    UPDATE
      SET name = EXCLUDED.name;

DROP TABLE tmp_ministry;



/*
 DEPARTMENT
*/

CREATE TEMP TABLE tmp_department AS SELECT * FROM department WITH NO DATA;

COPY tmp_department FROM STDIN CSV HEADER;
id,name,ministryid
1,Border Force,1
2,DDaT,1
3,Immigration,1
4,PPPT,1
5,Capabilities and Resources,1
6,HMPO,1
7,OSCT,1
\.

INSERT INTO department
  SELECT  *
  FROM tmp_department
ON CONFLICT (id) DO
UPDATE
  SET
    name = EXCLUDED.name,
    ministryid = EXCLUDED.ministryid;

DROP TABLE tmp_department;



/*
 DIRECTORATE
*/

CREATE TEMP TABLE tmp_directorate AS SELECT * FROM directorate WITH NO DATA;

COPY tmp_directorate FROM STDIN CSV HEADER;
id,name,departmentid
1,Operational Assurance,1
2,Border Force Operations,1
3,Border Systems,1
4,EU Exit,1
5,Stratergy and Transformation,1
\.

INSERT INTO directorate
  SELECT  *
  FROM tmp_directorate
ON CONFLICT (id) DO
UPDATE
  SET
    name = EXCLUDED.name,
    departmentid = EXCLUDED.departmentid;

DROP TABLE tmp_directorate;



/*
 BRANCH
*/

CREATE TEMP TABLE tmp_branch AS SELECT * FROM branch WITH NO DATA;

COPY tmp_branch FROM STDIN CSV HEADER;
id,name,directorateid
1,Stratergy and Policy,5
2,People Capability,5
3,Business Planning,5
4,Industry Partnerships,5
5,Transformation and Change,5
6,BF EU Exit Policy,4
7,BF EU Exit Delivery,4
8,EU Exit Systems and Contingencies,3
9,Government Data Protection Regulations,3
10,Architecture and Engineering,3
11,Border Systems Technology Projects,3
12,Digital Passenger Services,3
13,Digital Permissions Programme,3
14,Border Systems Portfolio,3
15,Digital Services at the Border,3
16,Cyclamen Programme and Detection Services,3
17,Intelligence,2
18,South East and Europe,2
19,Heathrow,2
20,National Operations,2
21,South,2
22,North,2
23,Central,2
24,Logistics,2 
\.

INSERT INTO branch
  SELECT  *
  FROM tmp_branch
ON CONFLICT (id) DO
UPDATE
  SET
    name = EXCLUDED.name,
    directorateid = EXCLUDED.directorateid;

DROP TABLE tmp_branch;



/*
 GENDER
*/

CREATE TEMP TABLE tmp_gender AS SELECT * FROM gender WITH NO DATA;

COPY tmp_gender FROM STDIN CSV HEADER;
id,gender
1,male
2,female
3,agender
4,androgyne
5,bi-gender
6,genderflugenderid
7,genderflux
8,nonbinary
9,polygender
10,transgender
11,two-spirit
12,vaguegender
13,X-gender
14,XTX
15,FTM
16,MTF
\.

INSERT INTO gender
  SELECT  *
  FROM tmp_gender
ON CONFLICT (id) DO
UPDATE
  SET
    gender = EXCLUDED.gender;

DROP TABLE tmp_gender;



/*
 SEX
*/

CREATE TEMP TABLE tmp_sex AS SELECT * FROM sex WITH NO DATA;

COPY tmp_sex FROM STDIN CSV HEADER;
sexcharacter,name
M,Male
F,Female
X,Indeterminate
U,Unknown
\.

INSERT INTO sex
  SELECT  *
  FROM tmp_sex
ON CONFLICT (sexcharacter) DO
UPDATE
  SET
    name = EXCLUDED.name;

DROP TABLE tmp_sex;



/*
 TITLE
*/

CREATE TEMP TABLE tmp_title AS SELECT * FROM title WITH NO DATA;

COPY tmp_title FROM STDIN CSV HEADER;
id,title
1,Mr
2,Mrs
3,Miss
4,Master
5,Mx
6,Dr
7,Prof
8,Ind
9,M
10,Misc
11,Mre
12,Msr
13,Pr
14,Sai
15,Ser
16,Ms
17,Madam
18,Hon
19,MP
20,MYP
21,Lord
22,Lady
23,Count
24,Countess
25,Mayor
26,Mayoress
27,Councillor
28,Prestitleident
29,Governor
30,Premier
31,Ambassador
32,Envoy
33,Secretary
34,Provost
35,Rev
36,Prince
37,Princess
38,Archduke
39,Archduchess
40,"Grand Duke"
41,"Grand Duchess"
42,Duke
43,Duchess
44,Marquis
45,Marquess
46,Earl
47,Viscount
48,Viscountess
49,Baron
50,Baroness
51,Emperor
52,Emperess
53,King
54,Queen
55,Tsar
56,Tsarina
57,Caesar
58,Chief
59,Viceroy
60,Vicereine
61,Pope
62,Bishop
63,Sir
64,Dame
65,Abbess
66,Abbot
67,Brother
68,Sister
69,"Mother Superior"
70,Friar
71,Mother
72,Presbyter
73,Priest
74,Father
75,Patriarch
76,Vicar
77,Chaplain
78,Canon
79,Pastor
80,Prelate
81,Primate
82,Dom
83,Cardinal
84,Ter
85,Deacon
86,Archdeacon
87,Acolyte
88,Dean
89,Elder
90,Minister
91,Monsignor
92,Reader
93,Almoner
94,Apostle
95,Teacher
96,Evangelist
97,Admiral
98,Brigadier
99,Captain
100,Colonel
101,Commander
102,Commodore
103,Corporal
104,General
105,Lieutenant
106,Major
107,Marshal
108,Mate
109,Officer
110,Private
111,Sergeant
112,Cadet
113,Lama
114,Drutitleid
115,Rabbi
116,Rebbe
117,Hakham
118,Ayatollah
119,Imam
120,Mullah
\.

INSERT INTO title
  SELECT  *
  FROM tmp_title
ON CONFLICT (id) DO
UPDATE
  SET
    title = EXCLUDED.title;

DROP TABLE tmp_title;