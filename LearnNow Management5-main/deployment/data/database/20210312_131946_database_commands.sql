CREATE TABLE "myfirstmodule$registration" (
	"id" BIGINT NOT NULL,
	"number" BIGINT NULL,
	"attended" BOOLEAN NULL,
	"date" TIMESTAMP NULL,
	PRIMARY KEY("id"));
CREATE SEQUENCE "myfirstmodule$registration_number_mxseq" AS BIGINT START WITH 1;
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('0f5b6941-c681-4492-9882-1386efaea0b2', 
'MyFirstModule.Registration', 
'myfirstmodule$registration', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('c5b20cde-ac88-41cd-ac8d-21e5caaea096', 
'0f5b6941-c681-4492-9882-1386efaea0b2', 
'Number', 
'number', 
0, 
0, 
'1', 
true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", 
"name", 
"start_value", 
"current_value")
 VALUES ('c5b20cde-ac88-41cd-ac8d-21e5caaea096', 
'myfirstmodule$registration_number_mxseq', 
1, 
0);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('920b30c6-1911-4dea-b039-77b1af3769a6', 
'0f5b6941-c681-4492-9882-1386efaea0b2', 
'Attended', 
'attended', 
10, 
0, 
'false', 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('fb92f8c2-aec4-445a-95c2-eba1bd28997d', 
'0f5b6941-c681-4492-9882-1386efaea0b2', 
'Date', 
'date', 
20, 
0, 
'', 
false);
CREATE TABLE "myfirstmodule$registration_trainee" (
	"myfirstmodule$registrationid" BIGINT NOT NULL,
	"myfirstmodule$traineeid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$registrationid","myfirstmodule$traineeid"),
	CONSTRAINT "uniq_myfirstmodule$registration_trainee_myfirstmodule$registrationid" UNIQUE ("myfirstmodule$registrationid"));
CREATE INDEX "idx_myfirstmodule$registration_trainee_myfirstmodule$trainee_myfirstmodule$registration" ON "myfirstmodule$registration_trainee" ("myfirstmodule$traineeid" ASC,"myfirstmodule$registrationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('8164343a-f525-404a-a4e2-927381bf3f92', 
'MyFirstModule.Registration_Trainee', 
'myfirstmodule$registration_trainee', 
'0f5b6941-c681-4492-9882-1386efaea0b2', 
'cb9a3098-5b39-4ab5-8654-4200836af10a', 
'myfirstmodule$registrationid', 
'myfirstmodule$traineeid', 
'idx_myfirstmodule$registration_trainee_myfirstmodule$trainee_myfirstmodule$registration');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$registration_trainee_myfirstmodule$registrationid', 
'8164343a-f525-404a-a4e2-927381bf3f92', 
'6d51d5c9-4213-3f7e-98fe-d19c12094913');
CREATE TABLE "myfirstmodule$registration_trainingevent" (
	"myfirstmodule$registrationid" BIGINT NOT NULL,
	"myfirstmodule$trainingeventid" BIGINT NOT NULL,
	PRIMARY KEY("myfirstmodule$registrationid","myfirstmodule$trainingeventid"),
	CONSTRAINT "uniq_myfirstmodule$registration_trainingevent_myfirstmodule$registrationid" UNIQUE ("myfirstmodule$registrationid"));
CREATE INDEX "idx_myfirstmodule$registration_trainingevent_myfirstmodule$trainingevent_myfirstmodule$registration" ON "myfirstmodule$registration_trainingevent" ("myfirstmodule$trainingeventid" ASC,"myfirstmodule$registrationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('b66c5bf5-8ac8-4f21-b507-35194ac3c6ba', 
'MyFirstModule.Registration_TrainingEvent', 
'myfirstmodule$registration_trainingevent', 
'0f5b6941-c681-4492-9882-1386efaea0b2', 
'57d3381c-ad3b-419d-8441-10eed3bb568f', 
'myfirstmodule$registrationid', 
'myfirstmodule$trainingeventid', 
'idx_myfirstmodule$registration_trainingevent_myfirstmodule$trainingevent_myfirstmodule$registration');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_myfirstmodule$registration_trainingevent_myfirstmodule$registrationid', 
'b66c5bf5-8ac8-4f21-b507-35194ac3c6ba', 
'861354ae-9240-309a-b8bf-0ffad0d297a7');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20210312 13:19:46';
