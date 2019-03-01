-- Setup DB
CREATE ROLE ${authenticator_user} WITH NOINHERIT LOGIN ENCRYPTED PASSWORD '${authenticator_password}';
GRANT USAGE ON SCHEMA ${schema} TO ${authenticator_user};
CREATE ROLE ${service_user} NOLOGIN;
GRANT USAGE ON SCHEMA ${schema} TO ${service_user};
GRANT ${service_user} to ${authenticator_user};
CREATE ROLE ${readonly_user} NOLOGIN;
GRANT USAGE ON SCHEMA ${schema} TO ${readonly_user};
GRANT ${readonly_user} to ${authenticator_user};