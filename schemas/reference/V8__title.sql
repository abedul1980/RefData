-- CHANGE name=init-rftitle-table
CREATE TABLE title (
  titleid INTEGER NOT NULL PRIMARY KEY,
  title CHARACTER VARYING(20) NOT NULL UNIQUE
);


-- load initial data

COPY title FROM stdin CSV HEADER;
titleid,title
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

-- GRANTs
GRANT SELECT ON title TO ${anon_user};
GRANT SELECT ON title TO ${service_user};
GRANT SELECT ON title TO ${readonly_user};