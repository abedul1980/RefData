INSERT INTO entity (id,tablename,description,schema,lastupdated) VALUES
  (5,
  'gender',
  'Gender descriptors',
  '
  {
  "schema": {
    "entity": "gender",
    "lastupdated": "date",
    "attributes": {
      "id": {
        "description": "PRIMARY KEY",
        "descriptors": {
          "type": "INTEGER"
        }
      },
      "gender": {
        "description": "Gender descriptor",
        "descriptors": {
          "type": "VARCHAR",
          "minimumlength": 3,
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
