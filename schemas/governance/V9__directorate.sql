INSERT INTO entity (id,tablename,description,schema,lastupdated) VALUES
  (3,
  'directorate',
  'Direcrorate names',
  '
  {
  "schema": {
    "entity": "directorate",
    "lastupdated": "date",
    "attributes": {
      "id": {
        "description": "PRIMARY KEY",
        "descriptors": {
          "type": "INTEGER"
        }
      },
      "name": {
        "description": "Name of directorate",
        "descriptors": {
          "type": "VARCHAR",
          "minimumlength": 5,
          "maximumlength": 60,
          "required": "true/false",
          "summaryview": "true/false"
        }
      },
      "attributeactive": {
        "description": "Directorate in active use",
        "descriptors": {
          "type": "BOOLEAN",
          "required": "true/false",
          "summaryview": "true/false"
        }
      },
      "departmentid": {
        "description": "link to department table",
        "descriptors": {
          "type": "INTEGER",
          "minimum": 0,
          "maximum": 100,
          "required": "true/false"
        },
        "references":{
          "entity": "department",
          "attribute": "id",
          "href": "https://{dataurl}/"
        }
      }
    }
  }
}',
    now()
);
