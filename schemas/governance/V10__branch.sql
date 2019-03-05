INSERT INTO entity (id,tablename,description,schema,lastupdated) VALUES
  (4,
  'branch',
  'Branch or Region names',
  '
  {
  "schema": {
    "entity": "branch",
    "lastupdated": "date",
    "attributes": {
      "id": {
        "description": "PRIMARY KEY",
        "descriptors": {
          "type": "INTEGER"
        }
      },
      "name": {
        "description": "Name of branch or region",
        "descriptors": {
          "type": "VARCHAR",
          "minimum_length": 5,
          "maximum_length": 60,
          "required": "true/false",
          "keyfield": "true/false"
        },
        "aliases": "Region,Tier 1 Project"
      },
      "attributeactive": {
        "description": "Branch in active use",
        "descriptors": {
          "type": "BOOLEAN",
          "required": "true/false",
          "keyfield": "true/false"
        }
      },
      "directorateid": {
        "description": "link to directorate table",
        "descriptors": {
          "type": "INTEGER",
          "minimum": 0,
          "maximum": 100,
          "required": "true/false"
        },
        "references":{
          "entity": "directorate",
          "attribute": "id",
          "href": "https://{data_url}/"
        }
      }
    }
  }
}',
    now()
);
