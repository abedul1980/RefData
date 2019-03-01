CREATE USER ${workflowengine_ownername} WITH ENCRYPTED PASSWORD '${workflowengine_ownerpassword}';
GRANT ${workflowengine_ownername} TO ${master_user};
CREATE DATABASE ${workflowengine_dbname} OWNER ${workflowengine_ownername};