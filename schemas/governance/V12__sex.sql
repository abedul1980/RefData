INSERT INTO entity (id,tablename,description,schema,lastupdated) VALUES
  (6,
  'sex',
  'Sex identifiers',
  '
  {
  "schema": {
    "entity": "sex",
    "lastupdated": "date",
    "attributes": {
      "sexcharacter": {
        "description": "PRIMARY KEY",
        "descriptors": {
          "type": "VARCAHR",
          "minimumlength": 1,
          "maximumlength": 1
        }
      },
      "name": {
        "description": "Sex descriptor",
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
