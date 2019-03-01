CREATE OR REPLACE VIEW audit AS (
  SELECT
    entity.id,
    entity.tablename,
    entity.description,
    entity.schema,
    (
      SELECT
        json_agg( changelogs.*) AS changelogs
      FROM (
        SELECT
          changelog_2.id,
          changelog_2.datetime,
          changelog_2.changerequested,
          changelog_2.requestor,
          changelog_2.governancestatusid,
          changelog_2.governancedate,
          changelog_2.governancecomment,
          changelog_2.governanceapprover,
          (
            SELECT
              json_agg( reviews.*) AS reviewers
            FROM (
              SELECT reviews_1.id,
                reviews_1.datetime,
                reviews_1.comment,
                reviews_1.email,
                reviews_1.approve
              FROM (
                  reviews reviews_1
              LEFT JOIN changelog changelog_1 ON ((changelog_1.id = reviews_1.changelogid)))
              GROUP BY
                reviews_1.id,
                reviews_1.datetime,
                reviews_1.comment,
                reviews_1.email,
                reviews_1.approve)
              reviews ) AS reviews
          FROM (
              changelog changelog_2
          LEFT JOIN entity entity_1 ON (((entity_1.tablename):: text = (changelog_2.tablename):: text )))
          GROUP BY
            changelog_2.datetime,
            changelog_2.requestor,
            changelog_2.changerequested,
            changelog_2.governancestatusid,
            changelog_2.governancedate,
            changelog_2.governancecomment,
            changelog_2.governanceapprover,
            changelog_2.id)
           changelogs ) AS changelogs
    FROM entity entity
  );

GRANT SELECT ON audit to ${readonly_user};