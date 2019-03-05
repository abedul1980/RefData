INSERT INTO entity (id,tablename,description,schema,lastupdated) VALUES
  (2,
  'department',
  'Department names within ministry',
  '
  {
  "schema": {
    "entity": "department",
    "lastupdated": "date",
    "attributes": {
      "id": {
        "description": "PRIMARY KEY",
        "descriptors": {
          "type": "INTEGER"
        }
      },
      "name": {
        "description": "Name of department",
        "descriptors": {
          "type": "VARCHAR",
          "minimum_length": 5,
          "maximum_length": 60,
          "required": "true/false",
          "keyfield": "true/false"
        }
      },
      "attributeactive": {
        "description": "Department in active use",
        "descriptors": {
          "type": "BOOLEAN",
          "required": "true/false",
          "keyfield": "true/false"
        }
      },
      "ministryid": {
        "description": "link to ministry table",
        "descriptors": {
          "type": "INTEGER",
          "minimum": 0,
          "maximum": 100,
          "required": "true/false"
        },
        "references":{
          "entity": "ministry",
          "attribute": "id",
          "href": "https://{data_url}/"
        }
      }
    }
  }
}',
    now()
);
