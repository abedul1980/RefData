INSERT INTO entity (id,tablename,description,schema,lastupdated) VALUES
  (7,
  'title',
  'Identity titles',
  '
  {
  "schema": {
    "entity": "title",
    "lastupdated": "date",
    "attributes": {
      "id": {
        "description": "PRIMARY KEY",
        "descriptors": {
          "type": "INTEGER"
        }
      },
      "title": {
        "description": "Title descriptor",
        "descriptors": {
          "type": "VARCHAR",
          "minimumlength": 1,
          "maximumlength": 20,
          "required": "true/false",
          "summaryview": "true/false"
        }
      }
    }
  }
}',
    now()
);
