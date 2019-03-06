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
          "minimumlength": 5,
          "maximumlength": 60,
          "required": "true/false",
          "summaryview": "true/false"
        }
      },
      "attributeactive": {
        "description": "Ministry in active use",
        "descriptors": {
          "type": "BOOLEAN",
          "required": "true/false",
          "summaryview": "true/false"
        }
      }
    }
  }
}',
    now()
);
