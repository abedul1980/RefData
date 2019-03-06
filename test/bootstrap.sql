\c reference
CREATE SCHEMA reference AUTHORIZATION ownerreference;
CREATE SCHEMA governance AUTHORIZATION ownergovernance;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp" SCHEMA governance;
DROP SCHEMA public;
\q