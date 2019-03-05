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
