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
          "minimum_length": 1,
          "maximum_length": 1
        }
      },
      "name": {
        "description": "Sex descriptor",
        "descriptors": {
          "type": "VARCHAR",
          "minimum_length": 3,
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
