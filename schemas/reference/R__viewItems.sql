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
    level3.validfrom,
    level3.validto
  FROM itemlevel3
    INNER JOIN itemlevel2 ON itemlevel2.id = itemlevel3.level2id
    INNER JOIN itemlevel1 ON itemlevel1.id = itemlevel2.level1id

-- GRANT Creation
GRANT SELECT ON items TO ${serviceuser};
GRANT SELECT ON items TO ${readonlyuser};