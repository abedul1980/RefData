INSERT INTO entity (id,tablename,description,schema,lastupdated) VALUES
  (1,
  'ministry',
  'Government Ministry / Department',
  '
  {
  "schema": {
    "entity": "ministry",
    "lastupdated": "date",
    "attributes": {
      "id": {
        "description": "PRIMARY KEY",
        "descriptors": {
          "type": "INTEGER"
        }
      },
      "name": {
        "description": "Name of ministry",
        "descriptors": {
          "type": "VARCHAR",
          "minimum_length": 5,
          "maximum_length": 60,
          "required": "true/false",
          "keyfield": "true/false"
        }
      },
      "attributeactive": {
        "description": "Ministry in active use",
        "descriptors": {
          "type": "BOOLEAN",
          "required": "true/false",
          "keyfield": "true/false"
        }
      }
    }
  }
}',
    now()
);
