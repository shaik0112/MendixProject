ALTER TABLE "myfirstmodule$trainingevent" ADD "totalnumberofregistrations" INT NULL;
UPDATE "myfirstmodule$trainingevent"
 SET "totalnumberofregistrations" = 0;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('2ddf05ce-8a0d-4c43-a664-4d0855a5f6bd', 
'57d3381c-ad3b-419d-8441-10eed3bb568f', 
'TotalNumberOfRegistrations', 
'totalnumberofregistrations', 
3, 
0, 
'0', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210312 15:19:16';
