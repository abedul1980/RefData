\c reference
CREATE SCHEMA reference AUTHORIZATION owner_reference;
CREATE SCHEMA governance AUTHORIZATION owner_governance;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp" SCHEMA governance;
DROP SCHEMA public;
\q