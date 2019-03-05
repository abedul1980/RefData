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
          "minimum_length": 1,
          "maximum_length": 20,
          "required": "true/false",
          "keyfield": "true/false"
        }
      }
    }
  }
}',
    now()
);
