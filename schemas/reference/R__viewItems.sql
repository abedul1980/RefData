DROP VIEW IF EXISTS items CASCADE;
CREATE OR REPLACE VIEW items AS
  SELECT
    level3.id AS id,
    level1.name AS name_level_1,
    level1.description AS description_level_1,
    level2.name AS name_level_2,
    level2.description AS description_level_2,
    level3.name AS name_level3,
    level3.description AS description_level_3,
    level3.cites,
    level3.seizure_qty,
    level3.ien_qty,
    level3.unitid,
    level3.validfrom,
    level3.validto
  FROM itemlevel3 AS level3
    INNER JOIN itemlevel2 AS level2 ON level2.id = level3.level2id
    INNER JOIN itemlevel1 AS level1 ON level1.id = level2.level1id;

-- GRANT Creation
GRANT SELECT ON items TO ${serviceuser};
GRANT SELECT ON items TO ${readonlyuser};