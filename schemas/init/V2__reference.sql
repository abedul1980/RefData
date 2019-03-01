CREATE ROLE ${reference_ownername} WITH CREATEROLE LOGIN ENCRYPTED PASSWORD '${reference_ownerpassword}';
CREATE ROLE ${governance_ownername} WITH CREATEROLE LOGIN ENCRYPTED PASSWORD '${governance_ownerpassword}';
GRANT ${reference_ownername} TO ${master_user};
GRANT ${governance_ownername} TO ${master_user};
CREATE DATABASE ${reference_dbname} OWNER ${governance_ownername};