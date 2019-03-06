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
          "minimumlength": 5,
          "maximumlength": 60,
          "required": "true/false",
          "summaryview": "true/false"
        }
      },
      "attributeactive": {
        "description": "Department in active use",
        "descriptors": {
          "type": "BOOLEAN",
          "required": "true/false",
          "summaryview": "true/false"
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
          "href": "https://{dataurl}/"
        }
      }
    }
  }
}',
    now()
);
