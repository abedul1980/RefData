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
          "minimum_length": 5,
          "maximum_length": 60,
          "required": "true/false",
          "keyfield": "true/false"
        }
      },
      "attributeactive": {
        "description": "Directorate in active use",
        "descriptors": {
          "type": "BOOLEAN",
          "required": "true/false",
          "keyfield": "true/false"
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
          "href": "https://{data_url}/"
        }
      }
    }
  }
}',
    now()
);
