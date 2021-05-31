-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."account_" (
    "accountid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "parentaccountid" int8,
    "name" varchar,
    "legalname" varchar,
    "legalid" varchar,
    "legaltype" varchar,
    "siccode" varchar,
    "tickersymbol" varchar,
    "industry" varchar,
    "type_" varchar,
    "size_" varchar,
    PRIMARY KEY ("accountid")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."address" (
    "uuid_" varchar,
    "addressid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "street1" varchar,
    "street2" varchar,
    "street3" varchar,
    "city" varchar,
    "zip" varchar,
    "regionid" int8,
    "countryid" int8,
    "typeid" int4,
    "mailing" bool,
    "primary_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."announcementsdelivery" (
    "deliveryid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "type_" varchar,
    "email" bool,
    "sms" bool,
    "website" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."announcementsentry" (
    "uuid_" varchar,
    "entryid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "title" varchar,
    "content" text,
    "url" text,
    "type_" varchar,
    "displaydate" timestamp,
    "expirationdate" timestamp,
    "priority" int4,
    "alert" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."announcementsflag" (
    "flagid" int8 NOT NULL,
    "userid" int8,
    "createdate" timestamp,
    "entryid" int8,
    "value" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assetcategory" (
    "uuid_" varchar,
    "categoryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "parentcategoryid" int8,
    "leftcategoryid" int8,
    "rightcategoryid" int8,
    "name" varchar,
    "title" text,
    "description" text,
    "vocabularyid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assetcategoryproperty" (
    "categorypropertyid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "categoryid" int8,
    "key_" varchar,
    "value" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assetentries_assetcategories" (
    "categoryid" int8 NOT NULL,
    "entryid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assetentries_assettags" (
    "entryid" int8 NOT NULL,
    "tagid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assetentry" (
    "entryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "classuuid" varchar,
    "classtypeid" int8,
    "visible" bool,
    "startdate" timestamp,
    "enddate" timestamp,
    "publishdate" timestamp,
    "expirationdate" timestamp,
    "mimetype" varchar,
    "title" text,
    "description" text,
    "summary" text,
    "url" text,
    "layoutuuid" varchar,
    "height" int4,
    "width" int4,
    "priority" float8,
    "viewcount" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assetlink" (
    "linkid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "entryid1" int8,
    "entryid2" int8,
    "type_" int4,
    "weight" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assettag" (
    "tagid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" varchar,
    "assetcount" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assettagproperty" (
    "tagpropertyid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "tagid" int8,
    "key_" varchar,
    "value" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assettagstats" (
    "tagstatsid" int8 NOT NULL,
    "tagid" int8,
    "classnameid" int8,
    "assetcount" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."assetvocabulary" (
    "uuid_" varchar,
    "vocabularyid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" varchar,
    "title" text,
    "description" text,
    "settings_" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."backgroundtask" (
    "backgroundtaskid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" varchar,
    "servletcontextnames" varchar,
    "taskexecutorclassname" varchar,
    "taskcontext" text,
    "completed" bool,
    "completiondate" timestamp,
    "status" int4,
    "statusmessage" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."blogsentry" (
    "uuid_" varchar,
    "entryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "title" varchar,
    "urltitle" varchar,
    "description" text,
    "content" text,
    "displaydate" timestamp,
    "allowpingbacks" bool,
    "allowtrackbacks" bool,
    "trackbacks" text,
    "smallimage" bool,
    "smallimageid" int8,
    "smallimageurl" text,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."blogsstatsuser" (
    "statsuserid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "entrycount" int4,
    "lastpostdate" timestamp,
    "ratingstotalentries" int4,
    "ratingstotalscore" float8,
    "ratingsaveragescore" float8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."bookmarksentry" (
    "uuid_" varchar,
    "entryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "resourceblockid" int8,
    "folderid" int8,
    "treepath" text,
    "name" varchar,
    "url" text,
    "description" text,
    "visits" int4,
    "priority" int4,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."bookmarksfolder" (
    "uuid_" varchar,
    "folderid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "resourceblockid" int8,
    "parentfolderid" int8,
    "treepath" text,
    "name" varchar,
    "description" text,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."browsertracker" (
    "browsertrackerid" int8 NOT NULL,
    "userid" int8,
    "browserkey" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."calendar" (
    "uuid_" varchar,
    "calendarid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "resourceblockid" int8,
    "calendarresourceid" int8,
    "name" text,
    "description" text,
    "timezoneid" varchar,
    "color" int4,
    "defaultcalendar" bool,
    "enablecomments" bool,
    "enableratings" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."calendarbooking" (
    "uuid_" varchar,
    "calendarbookingid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "resourceblockid" int8,
    "calendarid" int8,
    "calendarresourceid" int8,
    "parentcalendarbookingid" int8,
    "veventuid" varchar,
    "title" text,
    "description" text,
    "location" text,
    "starttime" int8,
    "endtime" int8,
    "allday" bool,
    "recurrence" text,
    "firstreminder" int8,
    "firstremindertype" varchar,
    "secondreminder" int8,
    "secondremindertype" varchar,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."calendarnotificationtemplate" (
    "uuid_" varchar,
    "calendarnotificationtemplateid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "calendarid" int8,
    "notificationtype" varchar,
    "notificationtypesettings" varchar,
    "notificationtemplatetype" varchar,
    "subject" varchar,
    "body" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."calendarresource" (
    "uuid_" varchar,
    "calendarresourceid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "resourceblockid" int8,
    "classnameid" int8,
    "classpk" int8,
    "classuuid" varchar,
    "code_" varchar,
    "name" text,
    "description" text,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."calevent" (
    "uuid_" varchar,
    "eventid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "title" varchar,
    "description" text,
    "location" text,
    "startdate" timestamp,
    "enddate" timestamp,
    "durationhour" int4,
    "durationminute" int4,
    "allday" bool,
    "timezonesensitive" bool,
    "type_" varchar,
    "repeating" bool,
    "recurrence" text,
    "remindby" int4,
    "firstreminder" int4,
    "secondreminder" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."classname_" (
    "classnameid" int8 NOT NULL,
    "value" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."clustergroup" (
    "clustergroupid" int8 NOT NULL,
    "name" varchar,
    "clusternodeids" varchar,
    "wholecluster" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."company" (
    "companyid" int8 NOT NULL,
    "accountid" int8,
    "webid" varchar,
    "key_" text,
    "mx" varchar,
    "homeurl" text,
    "logoid" int8,
    "system" bool,
    "maxusers" int4,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."contact_" (
    "contactid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "accountid" int8,
    "parentcontactid" int8,
    "emailaddress" varchar,
    "firstname" varchar,
    "middlename" varchar,
    "lastname" varchar,
    "prefixid" int4,
    "suffixid" int4,
    "male" bool,
    "birthday" timestamp,
    "smssn" varchar,
    "aimsn" varchar,
    "facebooksn" varchar,
    "icqsn" varchar,
    "jabbersn" varchar,
    "msnsn" varchar,
    "myspacesn" varchar,
    "skypesn" varchar,
    "twittersn" varchar,
    "ymsn" varchar,
    "employeestatusid" varchar,
    "employeenumber" varchar,
    "jobtitle" varchar,
    "jobclass" varchar,
    "hoursofoperation" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."counter" (
    "name" varchar NOT NULL,
    "currentid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."country" (
    "countryid" int8 NOT NULL,
    "name" varchar,
    "a2" varchar,
    "a3" varchar,
    "number_" varchar,
    "idd_" varchar,
    "ziprequired" bool,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."cyrususer" (
    "userid" varchar NOT NULL,
    "password_" varchar NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."cyrusvirtual" (
    "emailaddress" varchar NOT NULL,
    "userid" varchar NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ddlrecord" (
    "uuid_" varchar,
    "recordid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "versionuserid" int8,
    "versionusername" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "ddmstorageid" int8,
    "recordsetid" int8,
    "version" varchar,
    "displayindex" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ddlrecordset" (
    "uuid_" varchar,
    "recordsetid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "ddmstructureid" int8,
    "recordsetkey" varchar,
    "name" text,
    "description" text,
    "mindisplayrows" int4,
    "scope" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ddlrecordversion" (
    "recordversionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "ddmstorageid" int8,
    "recordsetid" int8,
    "recordid" int8,
    "version" varchar,
    "displayindex" int4,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ddmcontent" (
    "uuid_" varchar,
    "contentid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" text,
    "description" text,
    "xml" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ddmstoragelink" (
    "uuid_" varchar,
    "storagelinkid" int8 NOT NULL,
    "classnameid" int8,
    "classpk" int8,
    "structureid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ddmstructure" (
    "uuid_" varchar,
    "structureid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "parentstructureid" int8,
    "classnameid" int8,
    "structurekey" varchar,
    "name" text,
    "description" text,
    "xsd" text,
    "storagetype" varchar,
    "type_" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ddmstructurelink" (
    "structurelinkid" int8 NOT NULL,
    "classnameid" int8,
    "classpk" int8,
    "structureid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ddmtemplate" (
    "uuid_" varchar,
    "templateid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "templatekey" varchar,
    "name" text,
    "description" text,
    "type_" varchar,
    "mode_" varchar,
    "language" varchar,
    "script" text,
    "cacheable" bool,
    "smallimage" bool,
    "smallimageid" int8,
    "smallimageurl" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlcontent" (
    "contentid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "repositoryid" int8,
    "path_" varchar,
    "version" varchar,
    "data_" oid,
    "size_" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlfileentry" (
    "uuid_" varchar,
    "fileentryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "repositoryid" int8,
    "folderid" int8,
    "treepath" text,
    "name" varchar,
    "extension" varchar,
    "mimetype" varchar,
    "title" varchar,
    "description" text,
    "extrasettings" text,
    "fileentrytypeid" int8,
    "version" varchar,
    "size_" int8,
    "readcount" int4,
    "smallimageid" int8,
    "largeimageid" int8,
    "custom1imageid" int8,
    "custom2imageid" int8,
    "manualcheckinrequired" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlfileentrymetadata" (
    "uuid_" varchar,
    "fileentrymetadataid" int8 NOT NULL,
    "ddmstorageid" int8,
    "ddmstructureid" int8,
    "fileentrytypeid" int8,
    "fileentryid" int8,
    "fileversionid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlfileentrytype" (
    "uuid_" varchar,
    "fileentrytypeid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "fileentrytypekey" varchar,
    "name" text,
    "description" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlfileentrytypes_ddmstructures" (
    "structureid" int8 NOT NULL,
    "fileentrytypeid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlfileentrytypes_dlfolders" (
    "fileentrytypeid" int8 NOT NULL,
    "folderid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlfilerank" (
    "filerankid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "createdate" timestamp,
    "fileentryid" int8,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlfileshortcut" (
    "uuid_" varchar,
    "fileshortcutid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "repositoryid" int8,
    "folderid" int8,
    "tofileentryid" int8,
    "treepath" text,
    "active_" bool,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlfileversion" (
    "uuid_" varchar,
    "fileversionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "repositoryid" int8,
    "folderid" int8,
    "fileentryid" int8,
    "treepath" text,
    "extension" varchar,
    "mimetype" varchar,
    "title" varchar,
    "description" text,
    "changelog" varchar,
    "extrasettings" text,
    "fileentrytypeid" int8,
    "version" varchar,
    "size_" int8,
    "checksum" varchar,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlfolder" (
    "uuid_" varchar,
    "folderid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "repositoryid" int8,
    "mountpoint" bool,
    "parentfolderid" int8,
    "treepath" text,
    "name" varchar,
    "description" text,
    "lastpostdate" timestamp,
    "defaultfileentrytypeid" int8,
    "hidden_" bool,
    "overridefileentrytypes" bool,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."dlsyncevent" (
    "synceventid" int8 NOT NULL,
    "modifiedtime" int8,
    "event" varchar,
    "type_" varchar,
    "typepk" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."emailaddress" (
    "uuid_" varchar,
    "emailaddressid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "address" varchar,
    "typeid" int4,
    "primary_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."emp_bank" (
    "uuid_" varchar,
    "bank_id" int8 NOT NULL,
    "name" varchar,
    "bik" varchar,
    "address" varchar,
    PRIMARY KEY ("bank_id")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."emp_banks_employees" (
    "bank_id" int8 NOT NULL,
    "employee_id" int8 NOT NULL,
    PRIMARY KEY ("bank_id","employee_id")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."emp_employee" (
    "uuid_" varchar,
    "employee_id" int8 NOT NULL,
    "name" varchar,
    "patronymic" varchar,
    "surname" varchar,
    "gender" varchar,
    "birth_date" date,
    "date_of_employment" date,
    "salary" int4,
    "work_phone" varchar,
    "mobile_phone" varchar,
    "archive" bool,
    "position_id" int8,
    PRIMARY KEY ("employee_id")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."emp_position" (
    "uuid_" varchar,
    "position_id" int8 NOT NULL,
    "name" varchar,
    "archive" bool,
    "employee_id" int8,
    PRIMARY KEY ("position_id")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."expandocolumn" (
    "columnid" int8 NOT NULL,
    "companyid" int8,
    "tableid" int8,
    "name" varchar,
    "type_" int4,
    "defaultdata" text,
    "typesettings" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."expandorow" (
    "rowid_" int8 NOT NULL,
    "companyid" int8,
    "modifieddate" timestamp,
    "tableid" int8,
    "classpk" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."expandotable" (
    "tableid" int8 NOT NULL,
    "companyid" int8,
    "classnameid" int8,
    "name" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."expandovalue" (
    "valueid" int8 NOT NULL,
    "companyid" int8,
    "tableid" int8,
    "columnid" int8,
    "rowid_" int8,
    "classnameid" int8,
    "classpk" int8,
    "data_" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."group_" (
    "uuid_" varchar,
    "groupid" int8 NOT NULL,
    "companyid" int8,
    "creatoruserid" int8,
    "classnameid" int8,
    "classpk" int8,
    "parentgroupid" int8,
    "livegroupid" int8,
    "treepath" text,
    "name" varchar,
    "description" text,
    "type_" int4,
    "typesettings" text,
    "manualmembership" bool,
    "membershiprestriction" int4,
    "friendlyurl" varchar,
    "site" bool,
    "remotestaginggroupcount" int4,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."groups_orgs" (
    "groupid" int8 NOT NULL,
    "organizationid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."groups_roles" (
    "groupid" int8 NOT NULL,
    "roleid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."groups_usergroups" (
    "groupid" int8 NOT NULL,
    "usergroupid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."image" (
    "imageid" int8 NOT NULL,
    "modifieddate" timestamp,
    "type_" varchar,
    "height" int4,
    "width" int4,
    "size_" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."journalarticle" (
    "uuid_" varchar,
    "id_" int8 NOT NULL,
    "resourceprimkey" int8,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "folderid" int8,
    "classnameid" int8,
    "classpk" int8,
    "treepath" text,
    "articleid" varchar,
    "version" float8,
    "title" text,
    "urltitle" varchar,
    "description" text,
    "content" text,
    "type_" varchar,
    "structureid" varchar,
    "templateid" varchar,
    "layoutuuid" varchar,
    "displaydate" timestamp,
    "expirationdate" timestamp,
    "reviewdate" timestamp,
    "indexable" bool,
    "smallimage" bool,
    "smallimageid" int8,
    "smallimageurl" text,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."journalarticleimage" (
    "articleimageid" int8 NOT NULL,
    "groupid" int8,
    "articleid" varchar,
    "version" float8,
    "elinstanceid" varchar,
    "elname" varchar,
    "languageid" varchar,
    "tempimage" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."journalarticleresource" (
    "uuid_" varchar,
    "resourceprimkey" int8 NOT NULL,
    "groupid" int8,
    "articleid" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."journalcontentsearch" (
    "contentsearchid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "privatelayout" bool,
    "layoutid" int8,
    "portletid" varchar,
    "articleid" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."journalfeed" (
    "uuid_" varchar,
    "id_" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "feedid" varchar,
    "name" varchar,
    "description" text,
    "type_" varchar,
    "structureid" varchar,
    "templateid" varchar,
    "renderertemplateid" varchar,
    "delta" int4,
    "orderbycol" varchar,
    "orderbytype" varchar,
    "targetlayoutfriendlyurl" varchar,
    "targetportletid" varchar,
    "contentfield" varchar,
    "feedformat" varchar,
    "feedversion" float8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."journalfolder" (
    "uuid_" varchar,
    "folderid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "parentfolderid" int8,
    "treepath" text,
    "name" varchar,
    "description" text,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleoaction" (
    "kaleoactionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleoclassname" varchar,
    "kaleoclasspk" int8,
    "kaleodefinitionid" int8,
    "kaleonodename" varchar,
    "name" varchar,
    "description" text,
    "executiontype" varchar,
    "script" text,
    "scriptlanguage" varchar,
    "scriptrequiredcontexts" text,
    "priority" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleocondition" (
    "kaleoconditionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleodefinitionid" int8,
    "kaleonodeid" int8,
    "script" text,
    "scriptlanguage" varchar,
    "scriptrequiredcontexts" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleodefinition" (
    "kaleodefinitionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" varchar,
    "title" text,
    "description" text,
    "content" text,
    "version" int4,
    "active_" bool,
    "startkaleonodeid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleoinstance" (
    "kaleoinstanceid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleodefinitionid" int8,
    "kaleodefinitionname" varchar,
    "kaleodefinitionversion" int4,
    "rootkaleoinstancetokenid" int8,
    "classname" varchar,
    "classpk" int8,
    "completed" bool,
    "completiondate" timestamp,
    "workflowcontext" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleoinstancetoken" (
    "kaleoinstancetokenid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleodefinitionid" int8,
    "kaleoinstanceid" int8,
    "parentkaleoinstancetokenid" int8,
    "currentkaleonodeid" int8,
    "currentkaleonodename" varchar,
    "classname" varchar,
    "classpk" int8,
    "completed" bool,
    "completiondate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleolog" (
    "kaleologid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleoclassname" varchar,
    "kaleoclasspk" int8,
    "kaleodefinitionid" int8,
    "kaleoinstanceid" int8,
    "kaleoinstancetokenid" int8,
    "kaleotaskinstancetokenid" int8,
    "kaleonodename" varchar,
    "terminalkaleonode" bool,
    "kaleoactionid" int8,
    "kaleoactionname" varchar,
    "kaleoactiondescription" text,
    "previouskaleonodeid" int8,
    "previouskaleonodename" varchar,
    "previousassigneeclassname" varchar,
    "previousassigneeclasspk" int8,
    "currentassigneeclassname" varchar,
    "currentassigneeclasspk" int8,
    "type_" varchar,
    "comment_" text,
    "startdate" timestamp,
    "enddate" timestamp,
    "duration" int8,
    "workflowcontext" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleonode" (
    "kaleonodeid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleodefinitionid" int8,
    "name" varchar,
    "metadata" text,
    "description" text,
    "type_" varchar,
    "initial_" bool,
    "terminal" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleonotification" (
    "kaleonotificationid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleoclassname" varchar,
    "kaleoclasspk" int8,
    "kaleodefinitionid" int8,
    "kaleonodename" varchar,
    "name" varchar,
    "description" text,
    "executiontype" varchar,
    "template" text,
    "templatelanguage" varchar,
    "notificationtypes" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleonotificationrecipient" (
    "kaleonotificationrecipientid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleodefinitionid" int8,
    "kaleonotificationid" int8,
    "recipientclassname" varchar,
    "recipientclasspk" int8,
    "recipientroletype" int4,
    "address" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleotask" (
    "kaleotaskid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleodefinitionid" int8,
    "kaleonodeid" int8,
    "name" varchar,
    "description" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleotaskassignment" (
    "kaleotaskassignmentid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleoclassname" varchar,
    "kaleoclasspk" int8,
    "kaleodefinitionid" int8,
    "kaleonodeid" int8,
    "assigneeclassname" varchar,
    "assigneeclasspk" int8,
    "assigneeactionid" varchar,
    "assigneescript" text,
    "assigneescriptlanguage" varchar,
    "assigneescriptrequiredcontexts" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleotaskassignmentinstance" (
    "kaleotaskassignmentinstanceid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleodefinitionid" int8,
    "kaleoinstanceid" int8,
    "kaleoinstancetokenid" int8,
    "kaleotaskinstancetokenid" int8,
    "kaleotaskid" int8,
    "kaleotaskname" varchar,
    "assigneeclassname" varchar,
    "assigneeclasspk" int8,
    "completed" bool,
    "completiondate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleotaskinstancetoken" (
    "kaleotaskinstancetokenid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleodefinitionid" int8,
    "kaleoinstanceid" int8,
    "kaleoinstancetokenid" int8,
    "kaleotaskid" int8,
    "kaleotaskname" varchar,
    "classname" varchar,
    "classpk" int8,
    "completionuserid" int8,
    "completed" bool,
    "completiondate" timestamp,
    "duedate" timestamp,
    "workflowcontext" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleotimer" (
    "kaleotimerid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleoclassname" varchar,
    "kaleoclasspk" int8,
    "kaleodefinitionid" int8,
    "name" varchar,
    "blocking" bool,
    "description" text,
    "duration" float8,
    "scale" varchar,
    "recurrenceduration" float8,
    "recurrencescale" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleotimerinstancetoken" (
    "kaleotimerinstancetokenid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleoclassname" varchar,
    "kaleoclasspk" int8,
    "kaleodefinitionid" int8,
    "kaleoinstanceid" int8,
    "kaleoinstancetokenid" int8,
    "kaleotaskinstancetokenid" int8,
    "kaleotimerid" int8,
    "kaleotimername" varchar,
    "blocking" bool,
    "completionuserid" int8,
    "completed" bool,
    "completiondate" timestamp,
    "workflowcontext" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."kaleotransition" (
    "kaleotransitionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "kaleodefinitionid" int8,
    "kaleonodeid" int8,
    "name" varchar,
    "description" text,
    "sourcekaleonodeid" int8,
    "sourcekaleonodename" varchar,
    "targetkaleonodeid" int8,
    "targetkaleonodename" varchar,
    "defaulttransition" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."layout" (
    "uuid_" varchar,
    "plid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "privatelayout" bool,
    "layoutid" int8,
    "parentlayoutid" int8,
    "name" text,
    "title" text,
    "description" text,
    "keywords" text,
    "robots" text,
    "type_" varchar,
    "typesettings" text,
    "hidden_" bool,
    "friendlyurl" varchar,
    "iconimage" bool,
    "iconimageid" int8,
    "themeid" varchar,
    "colorschemeid" varchar,
    "wapthemeid" varchar,
    "wapcolorschemeid" varchar,
    "css" text,
    "priority" int4,
    "layoutprototypeuuid" varchar,
    "layoutprototypelinkenabled" bool,
    "sourceprototypelayoutuuid" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."layoutbranch" (
    "layoutbranchid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "layoutsetbranchid" int8,
    "plid" int8,
    "name" varchar,
    "description" text,
    "master" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."layoutfriendlyurl" (
    "uuid_" varchar,
    "layoutfriendlyurlid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "plid" int8,
    "privatelayout" bool,
    "friendlyurl" varchar,
    "languageid" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."layoutprototype" (
    "uuid_" varchar,
    "layoutprototypeid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" text,
    "description" text,
    "settings_" text,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."layoutrevision" (
    "layoutrevisionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "layoutsetbranchid" int8,
    "layoutbranchid" int8,
    "parentlayoutrevisionid" int8,
    "head" bool,
    "major" bool,
    "plid" int8,
    "privatelayout" bool,
    "name" text,
    "title" text,
    "description" text,
    "keywords" text,
    "robots" text,
    "typesettings" text,
    "iconimage" bool,
    "iconimageid" int8,
    "themeid" varchar,
    "colorschemeid" varchar,
    "wapthemeid" varchar,
    "wapcolorschemeid" varchar,
    "css" text,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."layoutset" (
    "layoutsetid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "privatelayout" bool,
    "logo" bool,
    "logoid" int8,
    "themeid" varchar,
    "colorschemeid" varchar,
    "wapthemeid" varchar,
    "wapcolorschemeid" varchar,
    "css" text,
    "pagecount" int4,
    "settings_" text,
    "layoutsetprototypeuuid" varchar,
    "layoutsetprototypelinkenabled" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."layoutsetbranch" (
    "layoutsetbranchid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "privatelayout" bool,
    "name" varchar,
    "description" text,
    "master" bool,
    "logo" bool,
    "logoid" int8,
    "themeid" varchar,
    "colorschemeid" varchar,
    "wapthemeid" varchar,
    "wapcolorschemeid" varchar,
    "css" text,
    "settings_" text,
    "layoutsetprototypeuuid" varchar,
    "layoutsetprototypelinkenabled" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."layoutsetprototype" (
    "uuid_" varchar,
    "layoutsetprototypeid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" text,
    "description" text,
    "settings_" text,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."listtype" (
    "listtypeid" int4 NOT NULL,
    "name" varchar,
    "type_" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."lock_" (
    "uuid_" varchar,
    "lockid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "classname" varchar,
    "key_" varchar,
    "owner" varchar,
    "inheritable" bool,
    "expirationdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."marketplace_app" (
    "uuid_" varchar,
    "appid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "remoteappid" int8,
    "title" varchar,
    "description" text,
    "category" varchar,
    "iconurl" text,
    "version" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."marketplace_module" (
    "uuid_" varchar,
    "moduleid" int8 NOT NULL,
    "appid" int8,
    "bundlesymbolicname" varchar,
    "bundleversion" varchar,
    "contextname" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mbban" (
    "uuid_" varchar,
    "banid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "banuserid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mbcategory" (
    "uuid_" varchar,
    "categoryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "parentcategoryid" int8,
    "name" varchar,
    "description" text,
    "displaystyle" varchar,
    "threadcount" int4,
    "messagecount" int4,
    "lastpostdate" timestamp,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mbdiscussion" (
    "uuid_" varchar,
    "discussionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "threadid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mbmailinglist" (
    "uuid_" varchar,
    "mailinglistid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "categoryid" int8,
    "emailaddress" varchar,
    "inprotocol" varchar,
    "inservername" varchar,
    "inserverport" int4,
    "inusessl" bool,
    "inusername" varchar,
    "inpassword" varchar,
    "inreadinterval" int4,
    "outemailaddress" varchar,
    "outcustom" bool,
    "outservername" varchar,
    "outserverport" int4,
    "outusessl" bool,
    "outusername" varchar,
    "outpassword" varchar,
    "allowanonymous" bool,
    "active_" bool,
    PRIMARY KEY ("mailinglistid")
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mbmessage" (
    "uuid_" varchar,
    "messageid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "categoryid" int8,
    "threadid" int8,
    "rootmessageid" int8,
    "parentmessageid" int8,
    "subject" varchar,
    "body" text,
    "format" varchar,
    "anonymous" bool,
    "priority" float8,
    "allowpingbacks" bool,
    "answer" bool,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mbstatsuser" (
    "statsuserid" int8 NOT NULL,
    "groupid" int8,
    "userid" int8,
    "messagecount" int4,
    "lastpostdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mbthread" (
    "uuid_" varchar,
    "threadid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "categoryid" int8,
    "rootmessageid" int8,
    "rootmessageuserid" int8,
    "messagecount" int4,
    "viewcount" int4,
    "lastpostbyuserid" int8,
    "lastpostdate" timestamp,
    "priority" float8,
    "question" bool,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mbthreadflag" (
    "uuid_" varchar,
    "threadflagid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "threadid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mdraction" (
    "uuid_" varchar,
    "actionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "rulegroupinstanceid" int8,
    "name" text,
    "description" text,
    "type_" varchar,
    "typesettings" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mdrrule" (
    "uuid_" varchar,
    "ruleid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "rulegroupid" int8,
    "name" text,
    "description" text,
    "type_" varchar,
    "typesettings" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mdrrulegroup" (
    "uuid_" varchar,
    "rulegroupid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" text,
    "description" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."mdrrulegroupinstance" (
    "uuid_" varchar,
    "rulegroupinstanceid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "rulegroupid" int8,
    "priority" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."membershiprequest" (
    "membershiprequestid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "createdate" timestamp,
    "comments" text,
    "replycomments" text,
    "replydate" timestamp,
    "replieruserid" int8,
    "statusid" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."notifications_usernotificationevent" (
    "notificationeventid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "usernotificationeventid" int8,
    "timestamp" int8,
    "delivered" bool,
    "actionrequired" bool,
    "archived" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."opensocial_gadget" (
    "uuid_" varchar,
    "gadgetid" int8 NOT NULL,
    "companyid" int8,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" varchar,
    "url" text,
    "portletcategorynames" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."opensocial_oauthconsumer" (
    "oauthconsumerid" int8 NOT NULL,
    "companyid" int8,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "gadgetkey" varchar,
    "servicename" varchar,
    "consumerkey" varchar,
    "consumersecret" text,
    "keytype" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."opensocial_oauthtoken" (
    "oauthtokenid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "gadgetkey" varchar,
    "servicename" varchar,
    "moduleid" int8,
    "accesstoken" varchar,
    "tokenname" varchar,
    "tokensecret" varchar,
    "sessionhandle" varchar,
    "expiration" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."organization_" (
    "uuid_" varchar,
    "organizationid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "parentorganizationid" int8,
    "treepath" text,
    "name" varchar,
    "type_" varchar,
    "recursable" bool,
    "regionid" int8,
    "countryid" int8,
    "statusid" int4,
    "comments" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."orggrouprole" (
    "organizationid" int8 NOT NULL,
    "groupid" int8 NOT NULL,
    "roleid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."orglabor" (
    "orglaborid" int8 NOT NULL,
    "organizationid" int8,
    "typeid" int4,
    "sunopen" int4,
    "sunclose" int4,
    "monopen" int4,
    "monclose" int4,
    "tueopen" int4,
    "tueclose" int4,
    "wedopen" int4,
    "wedclose" int4,
    "thuopen" int4,
    "thuclose" int4,
    "friopen" int4,
    "friclose" int4,
    "satopen" int4,
    "satclose" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."passwordpolicy" (
    "uuid_" varchar,
    "passwordpolicyid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "defaultpolicy" bool,
    "name" varchar,
    "description" text,
    "changeable" bool,
    "changerequired" bool,
    "minage" int8,
    "checksyntax" bool,
    "allowdictionarywords" bool,
    "minalphanumeric" int4,
    "minlength" int4,
    "minlowercase" int4,
    "minnumbers" int4,
    "minsymbols" int4,
    "minuppercase" int4,
    "regex" varchar,
    "history" bool,
    "historycount" int4,
    "expireable" bool,
    "maxage" int8,
    "warningtime" int8,
    "gracelimit" int4,
    "lockout" bool,
    "maxfailure" int4,
    "lockoutduration" int8,
    "requireunlock" bool,
    "resetfailurecount" int8,
    "resetticketmaxage" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."passwordpolicyrel" (
    "passwordpolicyrelid" int8 NOT NULL,
    "passwordpolicyid" int8,
    "classnameid" int8,
    "classpk" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."passwordtracker" (
    "passwordtrackerid" int8 NOT NULL,
    "userid" int8,
    "createdate" timestamp,
    "password_" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."phone" (
    "uuid_" varchar,
    "phoneid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "number_" varchar,
    "extension" varchar,
    "typeid" int4,
    "primary_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."pluginsetting" (
    "pluginsettingid" int8 NOT NULL,
    "companyid" int8,
    "pluginid" varchar,
    "plugintype" varchar,
    "roles" text,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."pollschoice" (
    "uuid_" varchar,
    "choiceid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "questionid" int8,
    "name" varchar,
    "description" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."pollsquestion" (
    "uuid_" varchar,
    "questionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "title" text,
    "description" text,
    "expirationdate" timestamp,
    "lastvotedate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."pollsvote" (
    "uuid_" varchar,
    "voteid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "questionid" int8,
    "choiceid" int8,
    "votedate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."portalpreferences" (
    "portalpreferencesid" int8 NOT NULL,
    "ownerid" int8,
    "ownertype" int4,
    "preferences" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."portlet" (
    "id_" int8 NOT NULL,
    "companyid" int8,
    "portletid" varchar,
    "roles" text,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."portletitem" (
    "portletitemid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" varchar,
    "portletid" varchar,
    "classnameid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."portletpreferences" (
    "portletpreferencesid" int8 NOT NULL,
    "ownerid" int8,
    "ownertype" int4,
    "plid" int8,
    "portletid" varchar,
    "preferences" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_blob_triggers" (
    "sched_name" varchar NOT NULL,
    "trigger_name" varchar NOT NULL,
    "trigger_group" varchar NOT NULL,
    "blob_data" bytea
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_calendars" (
    "sched_name" varchar NOT NULL,
    "calendar_name" varchar NOT NULL,
    "calendar" bytea NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_cron_triggers" (
    "sched_name" varchar NOT NULL,
    "trigger_name" varchar NOT NULL,
    "trigger_group" varchar NOT NULL,
    "cron_expression" varchar NOT NULL,
    "time_zone_id" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_fired_triggers" (
    "sched_name" varchar NOT NULL,
    "entry_id" varchar NOT NULL,
    "trigger_name" varchar NOT NULL,
    "trigger_group" varchar NOT NULL,
    "instance_name" varchar NOT NULL,
    "fired_time" int8 NOT NULL,
    "priority" int4 NOT NULL,
    "state" varchar NOT NULL,
    "job_name" varchar,
    "job_group" varchar,
    "is_nonconcurrent" bool,
    "requests_recovery" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_job_details" (
    "sched_name" varchar NOT NULL,
    "job_name" varchar NOT NULL,
    "job_group" varchar NOT NULL,
    "description" varchar,
    "job_class_name" varchar NOT NULL,
    "is_durable" bool NOT NULL,
    "is_nonconcurrent" bool NOT NULL,
    "is_update_data" bool NOT NULL,
    "requests_recovery" bool NOT NULL,
    "job_data" bytea
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_locks" (
    "sched_name" varchar NOT NULL,
    "lock_name" varchar NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_paused_trigger_grps" (
    "sched_name" varchar NOT NULL,
    "trigger_group" varchar NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_scheduler_state" (
    "sched_name" varchar NOT NULL,
    "instance_name" varchar NOT NULL,
    "last_checkin_time" int8 NOT NULL,
    "checkin_interval" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_simple_triggers" (
    "sched_name" varchar NOT NULL,
    "trigger_name" varchar NOT NULL,
    "trigger_group" varchar NOT NULL,
    "repeat_count" int8 NOT NULL,
    "repeat_interval" int8 NOT NULL,
    "times_triggered" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_simprop_triggers" (
    "sched_name" varchar NOT NULL,
    "trigger_name" varchar NOT NULL,
    "trigger_group" varchar NOT NULL,
    "str_prop_1" varchar,
    "str_prop_2" varchar,
    "str_prop_3" varchar,
    "int_prop_1" int4,
    "int_prop_2" int4,
    "long_prop_1" int8,
    "long_prop_2" int8,
    "dec_prop_1" numeric,
    "dec_prop_2" numeric,
    "bool_prop_1" bool,
    "bool_prop_2" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."quartz_triggers" (
    "sched_name" varchar NOT NULL,
    "trigger_name" varchar NOT NULL,
    "trigger_group" varchar NOT NULL,
    "job_name" varchar NOT NULL,
    "job_group" varchar NOT NULL,
    "description" varchar,
    "next_fire_time" int8,
    "prev_fire_time" int8,
    "priority" int4,
    "trigger_state" varchar NOT NULL,
    "trigger_type" varchar NOT NULL,
    "start_time" int8 NOT NULL,
    "end_time" int8,
    "calendar_name" varchar,
    "misfire_instr" int4,
    "job_data" bytea
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ratingsentry" (
    "entryid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "score" float8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ratingsstats" (
    "statsid" int8 NOT NULL,
    "classnameid" int8,
    "classpk" int8,
    "totalentries" int4,
    "totalscore" float8,
    "averagescore" float8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."region" (
    "regionid" int8 NOT NULL,
    "countryid" int8,
    "regioncode" varchar,
    "name" varchar,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."release_" (
    "releaseid" int8 NOT NULL,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "servletcontextname" varchar,
    "buildnumber" int4,
    "builddate" timestamp,
    "verified" bool,
    "state_" int4,
    "teststring" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."repository" (
    "uuid_" varchar,
    "repositoryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "name" varchar,
    "description" text,
    "portletid" varchar,
    "typesettings" text,
    "dlfolderid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."repositoryentry" (
    "uuid_" varchar,
    "repositoryentryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "repositoryid" int8,
    "mappedid" varchar,
    "manualcheckinrequired" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."resourceaction" (
    "resourceactionid" int8 NOT NULL,
    "name" varchar,
    "actionid" varchar,
    "bitwisevalue" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."resourceblock" (
    "resourceblockid" int8 NOT NULL,
    "companyid" int8,
    "groupid" int8,
    "name" varchar,
    "permissionshash" varchar,
    "referencecount" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."resourceblockpermission" (
    "resourceblockpermissionid" int8 NOT NULL,
    "resourceblockid" int8,
    "roleid" int8,
    "actionids" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."resourcepermission" (
    "resourcepermissionid" int8 NOT NULL,
    "companyid" int8,
    "name" varchar,
    "scope" int4,
    "primkey" varchar,
    "roleid" int8,
    "ownerid" int8,
    "actionids" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."resourcetypepermission" (
    "resourcetypepermissionid" int8 NOT NULL,
    "companyid" int8,
    "groupid" int8,
    "name" varchar,
    "roleid" int8,
    "actionids" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."role_" (
    "uuid_" varchar,
    "roleid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "name" varchar,
    "title" text,
    "description" text,
    "type_" int4,
    "subtype" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."scframeworkversi_scproductvers" (
    "frameworkversionid" int8 NOT NULL,
    "productversionid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."scframeworkversion" (
    "frameworkversionid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" varchar,
    "url" text,
    "active_" bool,
    "priority" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."sclicense" (
    "licenseid" int8 NOT NULL,
    "name" varchar,
    "url" text,
    "opensource" bool,
    "active_" bool,
    "recommended" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."sclicenses_scproductentries" (
    "licenseid" int8 NOT NULL,
    "productentryid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."scproductentry" (
    "productentryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" varchar,
    "type_" varchar,
    "tags" varchar,
    "shortdescription" text,
    "longdescription" text,
    "pageurl" text,
    "author" varchar,
    "repogroupid" varchar,
    "repoartifactid" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."scproductscreenshot" (
    "productscreenshotid" int8 NOT NULL,
    "companyid" int8,
    "groupid" int8,
    "productentryid" int8,
    "thumbnailid" int8,
    "fullimageid" int8,
    "priority" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."scproductversion" (
    "productversionid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "productentryid" int8,
    "version" varchar,
    "changelog" text,
    "downloadpageurl" text,
    "directdownloadurl" varchar,
    "repostoreartifact" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."servicecomponent" (
    "servicecomponentid" int8 NOT NULL,
    "buildnamespace" varchar,
    "buildnumber" int8,
    "builddate" int8,
    "data_" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."shard" (
    "shardid" int8 NOT NULL,
    "classnameid" int8,
    "classpk" int8,
    "name" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."shoppingcart" (
    "cartid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "itemids" text,
    "couponcodes" varchar,
    "altshipping" int4,
    "insure" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."shoppingcategory" (
    "categoryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "parentcategoryid" int8,
    "name" varchar,
    "description" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."shoppingcoupon" (
    "couponid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "code_" varchar,
    "name" varchar,
    "description" text,
    "startdate" timestamp,
    "enddate" timestamp,
    "active_" bool,
    "limitcategories" text,
    "limitskus" text,
    "minorder" float8,
    "discount" float8,
    "discounttype" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."shoppingitem" (
    "itemid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "categoryid" int8,
    "sku" varchar,
    "name" varchar,
    "description" text,
    "properties" text,
    "fields_" bool,
    "fieldsquantities" text,
    "minquantity" int4,
    "maxquantity" int4,
    "price" float8,
    "discount" float8,
    "taxable" bool,
    "shipping" float8,
    "useshippingformula" bool,
    "requiresshipping" bool,
    "stockquantity" int4,
    "featured_" bool,
    "sale_" bool,
    "smallimage" bool,
    "smallimageid" int8,
    "smallimageurl" text,
    "mediumimage" bool,
    "mediumimageid" int8,
    "mediumimageurl" text,
    "largeimage" bool,
    "largeimageid" int8,
    "largeimageurl" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."shoppingitemfield" (
    "itemfieldid" int8 NOT NULL,
    "itemid" int8,
    "name" varchar,
    "values_" text,
    "description" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."shoppingitemprice" (
    "itempriceid" int8 NOT NULL,
    "itemid" int8,
    "minquantity" int4,
    "maxquantity" int4,
    "price" float8,
    "discount" float8,
    "taxable" bool,
    "shipping" float8,
    "useshippingformula" bool,
    "status" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."shoppingorder" (
    "orderid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "number_" varchar,
    "tax" float8,
    "shipping" float8,
    "altshipping" varchar,
    "requiresshipping" bool,
    "insure" bool,
    "insurance" float8,
    "couponcodes" varchar,
    "coupondiscount" float8,
    "billingfirstname" varchar,
    "billinglastname" varchar,
    "billingemailaddress" varchar,
    "billingcompany" varchar,
    "billingstreet" varchar,
    "billingcity" varchar,
    "billingstate" varchar,
    "billingzip" varchar,
    "billingcountry" varchar,
    "billingphone" varchar,
    "shiptobilling" bool,
    "shippingfirstname" varchar,
    "shippinglastname" varchar,
    "shippingemailaddress" varchar,
    "shippingcompany" varchar,
    "shippingstreet" varchar,
    "shippingcity" varchar,
    "shippingstate" varchar,
    "shippingzip" varchar,
    "shippingcountry" varchar,
    "shippingphone" varchar,
    "ccname" varchar,
    "cctype" varchar,
    "ccnumber" varchar,
    "ccexpmonth" int4,
    "ccexpyear" int4,
    "ccvernumber" varchar,
    "comments" text,
    "pptxnid" varchar,
    "pppaymentstatus" varchar,
    "pppaymentgross" float8,
    "ppreceiveremail" varchar,
    "pppayeremail" varchar,
    "sendorderemail" bool,
    "sendshippingemail" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."shoppingorderitem" (
    "orderitemid" int8 NOT NULL,
    "orderid" int8,
    "itemid" varchar,
    "sku" varchar,
    "name" varchar,
    "description" text,
    "properties" text,
    "price" float8,
    "quantity" int4,
    "shippeddate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."socialactivity" (
    "activityid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "createdate" int8,
    "activitysetid" int8,
    "mirroractivityid" int8,
    "classnameid" int8,
    "classpk" int8,
    "parentclassnameid" int8,
    "parentclasspk" int8,
    "type_" int4,
    "extradata" text,
    "receiveruserid" int8
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."socialactivityachievement" (
    "activityachievementid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "createdate" int8,
    "name" varchar,
    "firstingroup" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."socialactivitycounter" (
    "activitycounterid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "classnameid" int8,
    "classpk" int8,
    "name" varchar,
    "ownertype" int4,
    "currentvalue" int4,
    "totalvalue" int4,
    "gracevalue" int4,
    "startperiod" int4,
    "endperiod" int4,
    "active_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."socialactivitylimit" (
    "activitylimitid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "classnameid" int8,
    "classpk" int8,
    "activitytype" int4,
    "activitycountername" varchar,
    "value" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."socialactivityset" (
    "activitysetid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "createdate" int8,
    "modifieddate" int8,
    "classnameid" int8,
    "classpk" int8,
    "type_" int4,
    "extradata" text,
    "activitycount" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."socialactivitysetting" (
    "activitysettingid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "classnameid" int8,
    "activitytype" int4,
    "name" varchar,
    "value" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."socialrelation" (
    "uuid_" varchar,
    "relationid" int8 NOT NULL,
    "companyid" int8,
    "createdate" int8,
    "userid1" int8,
    "userid2" int8,
    "type_" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."socialrequest" (
    "uuid_" varchar,
    "requestid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "createdate" int8,
    "modifieddate" int8,
    "classnameid" int8,
    "classpk" int8,
    "type_" int4,
    "extradata" text,
    "receiveruserid" int8,
    "status" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."subscription" (
    "subscriptionid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "frequency" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."syncdlfileversiondiff" (
    "syncdlfileversiondiffid" int8 NOT NULL,
    "fileentryid" int8,
    "sourcefileversionid" int8,
    "targetfileversionid" int8,
    "datafileentryid" int8,
    "size_" int8,
    "expirationdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."syncdlobject" (
    "syncdlobjectid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createtime" int8,
    "modifiedtime" int8,
    "repositoryid" int8,
    "parentfolderid" int8,
    "treepath" text,
    "name" varchar,
    "extension" varchar,
    "mimetype" varchar,
    "description" text,
    "changelog" varchar,
    "extrasettings" text,
    "version" varchar,
    "versionid" int8,
    "size_" int8,
    "checksum" varchar,
    "event" varchar,
    "lastpermissionchangedate" timestamp,
    "lockexpirationdate" timestamp,
    "lockuserid" int8,
    "lockusername" varchar,
    "type_" varchar,
    "typepk" int8,
    "typeuuid" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."systemevent" (
    "systemeventid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "classuuid" varchar,
    "referrerclassnameid" int8,
    "parentsystemeventid" int8,
    "systemeventsetkey" int8,
    "type_" int4,
    "extradata" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."team" (
    "teamid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "groupid" int8,
    "name" varchar,
    "description" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."ticket" (
    "ticketid" int8 NOT NULL,
    "companyid" int8,
    "createdate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "key_" varchar,
    "type_" int4,
    "extrainfo" text,
    "expirationdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."trashentry" (
    "entryid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "systemeventsetkey" int8,
    "typesettings" text,
    "status" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."trashversion" (
    "versionid" int8 NOT NULL,
    "entryid" int8,
    "classnameid" int8,
    "classpk" int8,
    "typesettings" text,
    "status" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."user_" (
    "uuid_" varchar,
    "userid" int8 NOT NULL,
    "companyid" int8,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "defaultuser" bool,
    "contactid" int8,
    "password_" varchar,
    "passwordencrypted" bool,
    "passwordreset" bool,
    "passwordmodifieddate" timestamp,
    "digest" varchar,
    "reminderqueryquestion" varchar,
    "reminderqueryanswer" varchar,
    "gracelogincount" int4,
    "screenname" varchar,
    "emailaddress" varchar,
    "facebookid" int8,
    "ldapserverid" int8,
    "openid" varchar,
    "portraitid" int8,
    "languageid" varchar,
    "timezoneid" varchar,
    "greeting" varchar,
    "comments" text,
    "firstname" varchar,
    "middlename" varchar,
    "lastname" varchar,
    "jobtitle" varchar,
    "logindate" timestamp,
    "loginip" varchar,
    "lastlogindate" timestamp,
    "lastloginip" varchar,
    "lastfailedlogindate" timestamp,
    "failedloginattempts" int4,
    "lockout" bool,
    "lockoutdate" timestamp,
    "agreedtotermsofuse" bool,
    "emailaddressverified" bool,
    "status" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."usergroup" (
    "uuid_" varchar,
    "usergroupid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "parentusergroupid" int8,
    "name" varchar,
    "description" text,
    "addedbyldapimport" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."usergroupgrouprole" (
    "usergroupid" int8 NOT NULL,
    "groupid" int8 NOT NULL,
    "roleid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."usergrouprole" (
    "userid" int8 NOT NULL,
    "groupid" int8 NOT NULL,
    "roleid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."usergroups_teams" (
    "teamid" int8 NOT NULL,
    "usergroupid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."useridmapper" (
    "useridmapperid" int8 NOT NULL,
    "userid" int8,
    "type_" varchar,
    "description" varchar,
    "externaluserid" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."usernotificationdelivery" (
    "usernotificationdeliveryid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "portletid" varchar,
    "classnameid" int8,
    "notificationtype" int4,
    "deliverytype" int4,
    "deliver" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."usernotificationevent" (
    "uuid_" varchar,
    "usernotificationeventid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "type_" varchar,
    "timestamp" int8,
    "deliverby" int8,
    "delivered" bool,
    "payload" text,
    "archived" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."users_groups" (
    "groupid" int8 NOT NULL,
    "userid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."users_orgs" (
    "organizationid" int8 NOT NULL,
    "userid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."users_roles" (
    "roleid" int8 NOT NULL,
    "userid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."users_teams" (
    "teamid" int8 NOT NULL,
    "userid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."users_usergroups" (
    "userid" int8 NOT NULL,
    "usergroupid" int8 NOT NULL
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."usertracker" (
    "usertrackerid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "modifieddate" timestamp,
    "sessionid" varchar,
    "remoteaddr" varchar,
    "remotehost" varchar,
    "useragent" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."usertrackerpath" (
    "usertrackerpathid" int8 NOT NULL,
    "usertrackerid" int8,
    "path_" text,
    "pathdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."virtualhost" (
    "virtualhostid" int8 NOT NULL,
    "companyid" int8,
    "layoutsetid" int8,
    "hostname" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."webdavprops" (
    "webdavpropsid" int8 NOT NULL,
    "companyid" int8,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "props" text
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."website" (
    "uuid_" varchar,
    "websiteid" int8 NOT NULL,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "url" text,
    "typeid" int4,
    "primary_" bool
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."wikinode" (
    "uuid_" varchar,
    "nodeid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "name" varchar,
    "description" text,
    "lastpostdate" timestamp,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."wikipage" (
    "uuid_" varchar,
    "pageid" int8 NOT NULL,
    "resourceprimkey" int8,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "nodeid" int8,
    "title" varchar,
    "version" float8,
    "minoredit" bool,
    "content" text,
    "summary" text,
    "format" varchar,
    "head" bool,
    "parenttitle" varchar,
    "redirecttitle" varchar,
    "status" int4,
    "statusbyuserid" int8,
    "statusbyusername" varchar,
    "statusdate" timestamp
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."wikipageresource" (
    "uuid_" varchar,
    "resourceprimkey" int8 NOT NULL,
    "nodeid" int8,
    "title" varchar
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."workflowdefinitionlink" (
    "workflowdefinitionlinkid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "typepk" int8,
    "workflowdefinitionname" varchar,
    "workflowdefinitionversion" int4
);

-- This script only contains the table creation statements and does not fully represent the table in database. It's still missing: indices, triggers. Do not use it as backup.

-- Table Definition
CREATE TABLE "public"."workflowinstancelink" (
    "workflowinstancelinkid" int8 NOT NULL,
    "groupid" int8,
    "companyid" int8,
    "userid" int8,
    "username" varchar,
    "createdate" timestamp,
    "modifieddate" timestamp,
    "classnameid" int8,
    "classpk" int8,
    "workflowinstanceid" int8
);

INSERT INTO "public"."account_" ("accountid", "companyid", "userid", "username", "createdate", "modifieddate", "parentaccountid", "name", "legalname", "legalid", "legaltype", "siccode", "tickersymbol", "industry", "type_", "size_") VALUES
(20156, 20154, 0, '', '2021-05-30 13:04:20.016', '2021-05-30 13:04:20.016', 0, 'Liferay', 'Liferay, Inc', '', '', '', '', '', '', '');




INSERT INTO "public"."announcementsdelivery" ("deliveryid", "companyid", "userid", "type_", "email", "sms", "website") VALUES
(20433, 20154, 20198, 'general', 'f', 'f', 't');
INSERT INTO "public"."announcementsdelivery" ("deliveryid", "companyid", "userid", "type_", "email", "sms", "website") VALUES
(20434, 20154, 20198, 'news', 'f', 'f', 't');
INSERT INTO "public"."announcementsdelivery" ("deliveryid", "companyid", "userid", "type_", "email", "sms", "website") VALUES
(20435, 20154, 20198, 'test', 'f', 'f', 't');













INSERT INTO "public"."assetentry" ("entryid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "classuuid", "classtypeid", "visible", "startdate", "enddate", "publishdate", "expirationdate", "mimetype", "title", "description", "summary", "url", "layoutuuid", "height", "width", "priority", "viewcount") VALUES
(20179, 20172, 20154, 20158, '', '2021-05-30 13:04:22.096', '2021-05-30 13:04:22.096', 20116, 20177, '285a326e-985b-402f-a380-e68dded721ab', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20175', '', '', '', '', 0, 0, 0, 0);
INSERT INTO "public"."assetentry" ("entryid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "classuuid", "classtypeid", "visible", "startdate", "enddate", "publishdate", "expirationdate", "mimetype", "title", "description", "summary", "url", "layoutuuid", "height", "width", "priority", "viewcount") VALUES
(20188, 20181, 20154, 20158, '', '2021-05-30 13:04:23.296', '2021-05-30 13:04:23.296', 20116, 20186, '2a5eb140-5d77-4f26-a349-cac9cc42674a', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20184', '', '', '', '', 0, 0, 0, 0);
INSERT INTO "public"."assetentry" ("entryid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "classuuid", "classtypeid", "visible", "startdate", "enddate", "publishdate", "expirationdate", "mimetype", "title", "description", "summary", "url", "layoutuuid", "height", "width", "priority", "viewcount") VALUES
(20325, 20317, 20154, 20158, '', '2021-05-30 13:04:28.708', '2021-05-30 13:04:28.708', 20116, 20322, 'cf8a4f08-9524-4735-861e-9b31643e5efe', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20320', '', '', '', '', 0, 0, 0, 0);
INSERT INTO "public"."assetentry" ("entryid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "classuuid", "classtypeid", "visible", "startdate", "enddate", "publishdate", "expirationdate", "mimetype", "title", "description", "summary", "url", "layoutuuid", "height", "width", "priority", "viewcount") VALUES
(20336, 20329, 20154, 20158, '', '2021-05-30 13:04:29.352', '2021-05-30 13:04:29.352', 20116, 20334, '12e3ff1e-4099-4adb-81ce-c433f6714eb7', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20332', '', '', '', '', 0, 0, 0, 0),
(20346, 20339, 20154, 20158, '', '2021-05-30 13:04:29.929', '2021-05-30 13:04:29.929', 20116, 20344, '1dcbc287-0100-48fd-b51b-eb2ea165fa20', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20342', '', '', '', '', 0, 0, 0, 0),
(20365, 20350, 20154, 20158, '', '2021-05-30 13:04:31.893', '2021-05-30 13:04:31.893', 20116, 20363, '44236c58-cd2a-4930-85c4-b2ee04447e33', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20361', '', '', '', '', 0, 0, 0, 0),
(20373, 20350, 20154, 20158, '', '2021-05-30 13:04:32.416', '2021-05-30 13:04:32.416', 20116, 20371, '637b9231-8eea-4204-b82f-836084b502bb', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20369', '', '', '', '', 0, 0, 0, 0),
(20391, 20376, 20154, 20158, '', '2021-05-30 13:04:33.352', '2021-05-30 13:04:33.352', 20116, 20389, 'fe1fce31-09e2-4421-a75b-4709ed1ee8dd', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20387', '', '', '', '', 0, 0, 0, 0),
(20400, 20376, 20154, 20158, '', '2021-05-30 13:04:34.221', '2021-05-30 13:04:34.221', 20116, 20398, '39bf3361-09b5-4c99-950b-ff42c7bd914c', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20396', '', '', '', '', 0, 0, 0, 0),
(20408, 20376, 20154, 20158, '', '2021-05-30 13:04:34.709', '2021-05-30 13:04:34.709', 20116, 20406, 'fb6b85e7-345d-4fbb-80fa-f7964e1ddf4e', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20404', '', '', '', '', 0, 0, 0, 0),
(20204, 20194, 20154, 20198, 'Test Test', '2021-05-30 13:04:23.819', '2021-05-30 13:04:36.533', 20005, 20198, '0d6840e8-7a5d-425c-a1a4-f0be59ac1989', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test Test', '', '', '', '', 0, 0, 0, 0),
(20524, 20517, 20154, 20158, '', '2021-05-30 13:05:23.747', '2021-05-30 13:05:23.747', 20116, 20522, '35973d94-585d-456b-be25-43f83817f33e', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20520', '', '', '', '', 0, 0, 0, 0),
(20530, 20517, 20154, 20158, '', '2021-05-30 13:05:24.596', '2021-05-30 13:05:24.596', 20116, 20528, 'fe3475ee-23c0-4f13-a6c8-8251499ff4e2', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '20526', '', '', '', '', 0, 0, 0, 0),
(20541, 20194, 20154, 20536, 'Test ORD 1', '2021-05-30 13:05:25.041', '2021-05-30 13:05:25.041', 20005, 20536, '0cfa7849-96f1-4ad2-8894-bd1120ed10a4', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 1', '', '', '', '', 0, 0, 0, 0),
(20547, 20194, 20154, 20542, 'Test ORD 2', '2021-05-30 13:05:25.513', '2021-05-30 13:05:25.513', 20005, 20542, '81139fb6-3308-41f7-99b9-d15de5159905', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 2', '', '', '', '', 0, 0, 0, 0),
(20553, 20194, 20154, 20548, 'Test ORD 3', '2021-05-30 13:05:25.929', '2021-05-30 13:05:25.929', 20005, 20548, '26365af7-2f71-4300-89ac-dc557bdaf0bf', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 3', '', '', '', '', 0, 0, 0, 0),
(20559, 20194, 20154, 20554, 'Test ORD 4', '2021-05-30 13:05:26.395', '2021-05-30 13:05:26.395', 20005, 20554, '749dbbb5-c9df-4368-bf9d-1ed64ff6c75e', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 4', '', '', '', '', 0, 0, 0, 0),
(20565, 20194, 20154, 20560, 'Test ORD 5', '2021-05-30 13:05:26.833', '2021-05-30 13:05:26.833', 20005, 20560, '90917ca7-817f-4d6a-a6aa-77e93dc59446', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 5', '', '', '', '', 0, 0, 0, 0),
(20571, 20194, 20154, 20566, 'Test ORD 6', '2021-05-30 13:05:27.295', '2021-05-30 13:05:27.295', 20005, 20566, '1084de06-c42d-41b8-b369-e03d4bd61564', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 6', '', '', '', '', 0, 0, 0, 0),
(20577, 20194, 20154, 20572, 'Test ORD 7', '2021-05-30 13:05:27.889', '2021-05-30 13:05:27.889', 20005, 20572, 'aa7b4b57-e104-4202-9d87-a99431ee4309', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 7', '', '', '', '', 0, 0, 0, 0),
(20583, 20194, 20154, 20578, 'Test ORD 8', '2021-05-30 13:05:28.368', '2021-05-30 13:05:28.368', 20005, 20578, '118a1dd6-050f-4f90-8f16-3657015097d1', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 8', '', '', '', '', 0, 0, 0, 0),
(20589, 20194, 20154, 20584, 'Test ORD 9', '2021-05-30 13:05:28.762', '2021-05-30 13:05:28.762', 20005, 20584, '4dcadb1b-6363-421d-8876-1ac8be493dd7', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 9', '', '', '', '', 0, 0, 0, 0),
(20595, 20194, 20154, 20590, 'Test ORD 10', '2021-05-30 13:05:29.234', '2021-05-30 13:05:29.234', 20005, 20590, '911c313a-5046-4508-aadf-f3dcb4c2c6f0', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test ORD 10', '', '', '', '', 0, 0, 0, 0),
(20609, 20194, 20154, 20604, 'Test DLC 1', '2021-05-30 13:05:29.873', '2021-05-30 13:05:29.873', 20005, 20604, 'dd33aef5-1fb3-4340-aaf7-3fb5b8a88365', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 1', '', '', '', '', 0, 0, 0, 0),
(20615, 20194, 20154, 20610, 'Test DLC 2', '2021-05-30 13:05:30.35', '2021-05-30 13:05:30.35', 20005, 20610, '118cea33-e8e8-48aa-a4eb-d16f0bb71634', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 2', '', '', '', '', 0, 0, 0, 0),
(20621, 20194, 20154, 20616, 'Test DLC 3', '2021-05-30 13:05:30.821', '2021-05-30 13:05:30.821', 20005, 20616, '47a633f1-bf65-43e8-acd7-a6692f312e3f', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 3', '', '', '', '', 0, 0, 0, 0),
(20627, 20194, 20154, 20622, 'Test DLC 4', '2021-05-30 13:05:31.282', '2021-05-30 13:05:31.282', 20005, 20622, 'fbf89828-804d-412d-9032-1933e96100a1', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 4', '', '', '', '', 0, 0, 0, 0),
(20633, 20194, 20154, 20628, 'Test DLC 5', '2021-05-30 13:05:31.654', '2021-05-30 13:05:31.654', 20005, 20628, 'cf105adc-b0b4-488f-9df5-2c366ffe1b08', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 5', '', '', '', '', 0, 0, 0, 0),
(20639, 20194, 20154, 20634, 'Test DLC 6', '2021-05-30 13:05:32.046', '2021-05-30 13:05:32.046', 20005, 20634, 'c8aa4680-1d5e-4957-8b8b-221827c24220', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 6', '', '', '', '', 0, 0, 0, 0),
(20645, 20194, 20154, 20640, 'Test DLC 7', '2021-05-30 13:05:32.448', '2021-05-30 13:05:32.448', 20005, 20640, 'a9797cc1-66bf-4888-98e4-e163a2934036', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 7', '', '', '', '', 0, 0, 0, 0),
(20651, 20194, 20154, 20646, 'Test DLC 8', '2021-05-30 13:05:32.834', '2021-05-30 13:05:32.834', 20005, 20646, 'f9914996-c9c0-4132-ac58-3b19f61431b9', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 8', '', '', '', '', 0, 0, 0, 0),
(20657, 20194, 20154, 20652, 'Test DLC 9', '2021-05-30 13:05:33.203', '2021-05-30 13:05:33.203', 20005, 20652, 'c39bb9bb-9008-4462-b30f-b93e37b136e5', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 9', '', '', '', '', 0, 0, 0, 0),
(20663, 20194, 20154, 20658, 'Test DLC 10', '2021-05-30 13:05:33.609', '2021-05-30 13:05:33.609', 20005, 20658, '053489dc-9288-4f63-98a1-5be909aa63a7', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test DLC 10', '', '', '', '', 0, 0, 0, 0),
(20677, 20194, 20154, 20672, 'Test FRA 1', '2021-05-30 13:05:34.099', '2021-05-30 13:05:34.099', 20005, 20672, 'f2daa511-44a3-4970-855f-61d69fd8c0f4', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 1', '', '', '', '', 0, 0, 0, 0),
(20683, 20194, 20154, 20678, 'Test FRA 2', '2021-05-30 13:05:34.519', '2021-05-30 13:05:34.519', 20005, 20678, '2e2cbb90-fea9-49dc-813a-edd05a2b312a', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 2', '', '', '', '', 0, 0, 0, 0),
(20689, 20194, 20154, 20684, 'Test FRA 3', '2021-05-30 13:05:34.957', '2021-05-30 13:05:34.957', 20005, 20684, '8edeb863-9981-4925-951f-b7b77acfda21', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 3', '', '', '', '', 0, 0, 0, 0),
(20695, 20194, 20154, 20690, 'Test FRA 4', '2021-05-30 13:05:35.303', '2021-05-30 13:05:35.303', 20005, 20690, '5233e060-eb0c-414d-9ea8-7e4b3bac05dc', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 4', '', '', '', '', 0, 0, 0, 0),
(20701, 20194, 20154, 20696, 'Test FRA 5', '2021-05-30 13:05:35.675', '2021-05-30 13:05:35.675', 20005, 20696, 'ce4cbacd-7ba0-4517-8a84-c8365d447710', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 5', '', '', '', '', 0, 0, 0, 0),
(20759, 20194, 20154, 20754, 'Test HKG 4', '2021-05-30 13:05:39.242', '2021-05-30 13:05:39.242', 20005, 20754, '02bd4aae-5eba-416d-8b6c-0db833774630', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 4', '', '', '', '', 0, 0, 0, 0),
(20765, 20194, 20154, 20760, 'Test HKG 5', '2021-05-30 13:05:39.63', '2021-05-30 13:05:39.63', 20005, 20760, '5ca4a620-1286-4828-8380-e3dc175e702c', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 5', '', '', '', '', 0, 0, 0, 0),
(20771, 20194, 20154, 20766, 'Test HKG 6', '2021-05-30 13:05:39.989', '2021-05-30 13:05:39.989', 20005, 20766, 'e36f8c3e-3140-4d99-b2dc-f09c7350c2e5', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 6', '', '', '', '', 0, 0, 0, 0),
(20777, 20194, 20154, 20772, 'Test HKG 7', '2021-05-30 13:05:40.343', '2021-05-30 13:05:40.343', 20005, 20772, '23834c2d-2b97-400e-97d0-81116c54a60a', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 7', '', '', '', '', 0, 0, 0, 0),
(20783, 20194, 20154, 20778, 'Test HKG 8', '2021-05-30 13:05:40.694', '2021-05-30 13:05:40.694', 20005, 20778, '829e15a9-e01e-427d-acdb-cca6d0ff3b75', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 8', '', '', '', '', 0, 0, 0, 0),
(20789, 20194, 20154, 20784, 'Test HKG 9', '2021-05-30 13:05:41.048', '2021-05-30 13:05:41.048', 20005, 20784, '24625f82-f7be-4834-8a36-44d422382c03', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 9', '', '', '', '', 0, 0, 0, 0),
(20707, 20194, 20154, 20702, 'Test FRA 6', '2021-05-30 13:05:36.038', '2021-05-30 13:05:36.038', 20005, 20702, '39cb56d1-b2d6-4b7e-8aed-709a26f364af', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 6', '', '', '', '', 0, 0, 0, 0),
(20713, 20194, 20154, 20708, 'Test FRA 7', '2021-05-30 13:05:36.451', '2021-05-30 13:05:36.451', 20005, 20708, '6e728134-6094-4c5b-8058-3580d8af6c94', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 7', '', '', '', '', 0, 0, 0, 0),
(20731, 20194, 20154, 20726, 'Test FRA 10', '2021-05-30 13:05:37.566', '2021-05-30 13:05:37.566', 20005, 20726, '48eefdbd-28e3-4172-8d82-9b40143402b2', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 10', '', '', '', '', 0, 0, 0, 0),
(20805, 20194, 20154, 20800, 'Test KUL 1', '2021-05-30 13:05:41.79', '2021-05-30 13:05:41.79', 20005, 20800, '9eac71dc-051d-4f15-8eac-17bd2fe0feed', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 1', '', '', '', '', 0, 0, 0, 0),
(20719, 20194, 20154, 20714, 'Test FRA 8', '2021-05-30 13:05:36.857', '2021-05-30 13:05:36.857', 20005, 20714, 'e4d4d906-f1db-45de-af25-40e6b08d5467', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 8', '', '', '', '', 0, 0, 0, 0),
(20725, 20194, 20154, 20720, 'Test FRA 9', '2021-05-30 13:05:37.199', '2021-05-30 13:05:37.199', 20005, 20720, '9b50c915-ee41-4f38-aef1-6abbd05e7b03', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test FRA 9', '', '', '', '', 0, 0, 0, 0),
(20741, 20194, 20154, 20736, 'Test HKG 1', '2021-05-30 13:05:38.107', '2021-05-30 13:05:38.107', 20005, 20736, 'bd18cfef-780f-4119-9d9c-074d025763b2', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 1', '', '', '', '', 0, 0, 0, 0),
(20747, 20194, 20154, 20742, 'Test HKG 2', '2021-05-30 13:05:38.474', '2021-05-30 13:05:38.474', 20005, 20742, 'af130543-4be8-49de-80bc-9ccd325d2ac6', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 2', '', '', '', '', 0, 0, 0, 0),
(20753, 20194, 20154, 20748, 'Test HKG 3', '2021-05-30 13:05:38.854', '2021-05-30 13:05:38.854', 20005, 20748, 'f73e9544-957f-49df-a4fe-77b0200ed674', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 3', '', '', '', '', 0, 0, 0, 0),
(20795, 20194, 20154, 20790, 'Test HKG 10', '2021-05-30 13:05:41.395', '2021-05-30 13:05:41.395', 20005, 20790, '4c5d9a19-1f5a-401f-b1fb-af0f5affde08', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test HKG 10', '', '', '', '', 0, 0, 0, 0),
(20811, 20194, 20154, 20806, 'Test KUL 2', '2021-05-30 13:05:42.221', '2021-05-30 13:05:42.221', 20005, 20806, 'c5d71cfd-a62c-480e-b8b1-de698787acb7', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 2', '', '', '', '', 0, 0, 0, 0),
(20817, 20194, 20154, 20812, 'Test KUL 3', '2021-05-30 13:05:42.64', '2021-05-30 13:05:42.64', 20005, 20812, '375b451a-a4ca-42f6-aef1-e2f05dde5086', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 3', '', '', '', '', 0, 0, 0, 0),
(20823, 20194, 20154, 20818, 'Test KUL 4', '2021-05-30 13:05:43.074', '2021-05-30 13:05:43.074', 20005, 20818, '30c48d62-a9a4-465d-85b7-05f59ec3137d', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 4', '', '', '', '', 0, 0, 0, 0),
(20829, 20194, 20154, 20824, 'Test KUL 5', '2021-05-30 13:05:43.563', '2021-05-30 13:05:43.563', 20005, 20824, '8732a943-a7ac-4f93-8c11-468e1a837cf0', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 5', '', '', '', '', 0, 0, 0, 0),
(20835, 20194, 20154, 20830, 'Test KUL 6', '2021-05-30 13:05:44.023', '2021-05-30 13:05:44.023', 20005, 20830, 'ac317944-f130-4c4a-acf9-ec2165121f95', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 6', '', '', '', '', 0, 0, 0, 0);
INSERT INTO "public"."assetentry" ("entryid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "classuuid", "classtypeid", "visible", "startdate", "enddate", "publishdate", "expirationdate", "mimetype", "title", "description", "summary", "url", "layoutuuid", "height", "width", "priority", "viewcount") VALUES
(20841, 20194, 20154, 20836, 'Test KUL 7', '2021-05-30 13:05:44.443', '2021-05-30 13:05:44.443', 20005, 20836, 'c4a833b8-67f2-4af2-823b-0097e0a91872', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 7', '', '', '', '', 0, 0, 0, 0),
(20847, 20194, 20154, 20842, 'Test KUL 8', '2021-05-30 13:05:44.887', '2021-05-30 13:05:44.887', 20005, 20842, '97a7eb3d-2c69-45e1-a030-a3f4281c2feb', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 8', '', '', '', '', 0, 0, 0, 0),
(20853, 20194, 20154, 20848, 'Test KUL 9', '2021-05-30 13:05:45.285', '2021-05-30 13:05:45.285', 20005, 20848, 'b6353999-3b3f-45fa-a126-0be6d86a49de', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 9', '', '', '', '', 0, 0, 0, 0),
(20859, 20194, 20154, 20854, 'Test KUL 10', '2021-05-30 13:05:45.644', '2021-05-30 13:05:45.644', 20005, 20854, 'b70141e4-801a-4f72-80a5-f3b738341af9', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test KUL 10', '', '', '', '', 0, 0, 0, 0),
(20869, 20194, 20154, 20864, 'Test LAX 1', '2021-05-30 13:05:46.066', '2021-05-30 13:05:46.066', 20005, 20864, '0010c0b8-4a31-476a-b908-88c1bccc0c09', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 1', '', '', '', '', 0, 0, 0, 0),
(20875, 20194, 20154, 20870, 'Test LAX 2', '2021-05-30 13:05:46.436', '2021-05-30 13:05:46.436', 20005, 20870, 'c87a687a-ebef-4390-a049-500e7fe732b7', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 2', '', '', '', '', 0, 0, 0, 0),
(20881, 20194, 20154, 20876, 'Test LAX 3', '2021-05-30 13:05:46.831', '2021-05-30 13:05:46.831', 20005, 20876, '8023aa89-a692-43db-aa02-141aa1bfa043', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 3', '', '', '', '', 0, 0, 0, 0),
(20887, 20194, 20154, 20882, 'Test LAX 4', '2021-05-30 13:05:47.182', '2021-05-30 13:05:47.182', 20005, 20882, '8e0c3441-ff8f-4013-a1be-6b7356027ebb', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 4', '', '', '', '', 0, 0, 0, 0),
(20893, 20194, 20154, 20888, 'Test LAX 5', '2021-05-30 13:05:47.539', '2021-05-30 13:05:47.539', 20005, 20888, '5e676ebb-8a30-40e1-b905-4c5c8e62f688', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 5', '', '', '', '', 0, 0, 0, 0),
(20899, 20194, 20154, 20894, 'Test LAX 6', '2021-05-30 13:05:47.898', '2021-05-30 13:05:47.898', 20005, 20894, '29db2fbe-27bb-4989-bb99-ee3f8d3fcf8a', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 6', '', '', '', '', 0, 0, 0, 0),
(20905, 20194, 20154, 20900, 'Test LAX 7', '2021-05-30 13:05:48.264', '2021-05-30 13:05:48.264', 20005, 20900, '130215b5-e1c6-4922-9524-1d7df5c7f1f0', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 7', '', '', '', '', 0, 0, 0, 0),
(20911, 20194, 20154, 20906, 'Test LAX 8', '2021-05-30 13:05:48.688', '2021-05-30 13:05:48.688', 20005, 20906, '56780201-147f-47b5-b2cb-516eaf25ef50', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 8', '', '', '', '', 0, 0, 0, 0),
(20917, 20194, 20154, 20912, 'Test LAX 9', '2021-05-30 13:05:49.069', '2021-05-30 13:05:49.069', 20005, 20912, '9d5c4818-bf45-40e7-9095-d041c134e2a9', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 9', '', '', '', '', 0, 0, 0, 0),
(20923, 20194, 20154, 20918, 'Test LAX 10', '2021-05-30 13:05:49.489', '2021-05-30 13:05:49.489', 20005, 20918, 'eb843271-8d3c-4826-a76a-96581f2f1da9', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test LAX 10', '', '', '', '', 0, 0, 0, 0),
(20933, 20194, 20154, 20928, 'Test MAD 1', '2021-05-30 13:05:49.928', '2021-05-30 13:05:49.928', 20005, 20928, '400bfc3f-ccf3-460d-992e-175bf4f6d1ca', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 1', '', '', '', '', 0, 0, 0, 0),
(20939, 20194, 20154, 20934, 'Test MAD 2', '2021-05-30 13:05:50.32', '2021-05-30 13:05:50.32', 20005, 20934, 'aff83b7e-3da5-4af5-82e6-e8a95016fb04', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 2', '', '', '', '', 0, 0, 0, 0),
(20945, 20194, 20154, 20940, 'Test MAD 3', '2021-05-30 13:05:50.663', '2021-05-30 13:05:50.663', 20005, 20940, 'c475dd96-25b0-4040-9701-1b8a03ea4a75', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 3', '', '', '', '', 0, 0, 0, 0),
(20951, 20194, 20154, 20946, 'Test MAD 4', '2021-05-30 13:05:51.012', '2021-05-30 13:05:51.012', 20005, 20946, 'f2d23089-47ae-4db9-821a-7a0026d712dd', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 4', '', '', '', '', 0, 0, 0, 0),
(20957, 20194, 20154, 20952, 'Test MAD 5', '2021-05-30 13:05:51.35', '2021-05-30 13:05:51.35', 20005, 20952, '96c95dd2-e019-44dc-b1cf-a89b84275791', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 5', '', '', '', '', 0, 0, 0, 0),
(20963, 20194, 20154, 20958, 'Test MAD 6', '2021-05-30 13:05:51.764', '2021-05-30 13:05:51.764', 20005, 20958, 'e0de2bb0-0516-41f8-b7a5-7faec1ebfdc4', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 6', '', '', '', '', 0, 0, 0, 0),
(20969, 20194, 20154, 20964, 'Test MAD 7', '2021-05-30 13:05:52.1', '2021-05-30 13:05:52.1', 20005, 20964, '545c3c34-149a-4e91-b6d8-7039031f29d8', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 7', '', '', '', '', 0, 0, 0, 0),
(20975, 20194, 20154, 20970, 'Test MAD 8', '2021-05-30 13:05:52.457', '2021-05-30 13:05:52.457', 20005, 20970, '47b690b4-12b8-47bd-a0f2-a3765fe56c95', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 8', '', '', '', '', 0, 0, 0, 0),
(20981, 20194, 20154, 20976, 'Test MAD 9', '2021-05-30 13:05:52.777', '2021-05-30 13:05:52.777', 20005, 20976, 'baacfaa7-883f-4217-9f1c-923e6970bb35', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 9', '', '', '', '', 0, 0, 0, 0),
(20987, 20194, 20154, 20982, 'Test MAD 10', '2021-05-30 13:05:53.102', '2021-05-30 13:05:53.102', 20005, 20982, '405d221f-0ab6-407d-b21b-b236f9446671', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test MAD 10', '', '', '', '', 0, 0, 0, 0),
(21001, 20194, 20154, 20996, 'Test NYC 1', '2021-05-30 13:05:53.516', '2021-05-30 13:05:53.516', 20005, 20996, '907510fa-da76-4d22-a60d-3746fb5fb5db', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 1', '', '', '', '', 0, 0, 0, 0),
(21007, 20194, 20154, 21002, 'Test NYC 2', '2021-05-30 13:05:53.835', '2021-05-30 13:05:53.835', 20005, 21002, '8ec5051a-e7c3-4e73-9f39-96443a721fbe', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 2', '', '', '', '', 0, 0, 0, 0),
(21013, 20194, 20154, 21008, 'Test NYC 3', '2021-05-30 13:05:54.149', '2021-05-30 13:05:54.149', 20005, 21008, 'c99e0355-1a13-4f49-b755-7ac97fd7123e', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 3', '', '', '', '', 0, 0, 0, 0),
(21019, 20194, 20154, 21014, 'Test NYC 4', '2021-05-30 13:05:54.524', '2021-05-30 13:05:54.524', 20005, 21014, '352388aa-1014-4a19-820e-923c551b53cf', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 4', '', '', '', '', 0, 0, 0, 0),
(21025, 20194, 20154, 21020, 'Test NYC 5', '2021-05-30 13:05:54.909', '2021-05-30 13:05:54.909', 20005, 21020, 'f8bc0387-ea75-41d6-a1a2-5e67a780a05f', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 5', '', '', '', '', 0, 0, 0, 0),
(21031, 20194, 20154, 21026, 'Test NYC 6', '2021-05-30 13:05:55.266', '2021-05-30 13:05:55.266', 20005, 21026, '181699af-b3ce-479f-bc12-eece67ce92ce', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 6', '', '', '', '', 0, 0, 0, 0),
(21037, 20194, 20154, 21032, 'Test NYC 7', '2021-05-30 13:05:55.587', '2021-05-30 13:05:55.587', 20005, 21032, 'fd12c8ad-bdf5-422b-90d9-765cda94cdda', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 7', '', '', '', '', 0, 0, 0, 0),
(21043, 20194, 20154, 21038, 'Test NYC 8', '2021-05-30 13:05:55.904', '2021-05-30 13:05:55.904', 20005, 21038, '151ec2af-dbd0-4b8e-a054-07443c77c1c9', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 8', '', '', '', '', 0, 0, 0, 0),
(21049, 20194, 20154, 21044, 'Test NYC 9', '2021-05-30 13:05:56.225', '2021-05-30 13:05:56.225', 20005, 21044, '34a9e11a-0160-4b67-be8b-76f79511b14f', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 9', '', '', '', '', 0, 0, 0, 0),
(21055, 20194, 20154, 21050, 'Test NYC 10', '2021-05-30 13:05:56.55', '2021-05-30 13:05:56.55', 20005, 21050, '0f094d18-8a8f-4949-84b5-5c7536af1e20', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test NYC 10', '', '', '', '', 0, 0, 0, 0),
(21065, 20194, 20154, 21060, 'Test GRU 1', '2021-05-30 13:05:56.905', '2021-05-30 13:05:56.905', 20005, 21060, 'a1c79af5-350d-4ec4-9666-1d56c1669e66', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 1', '', '', '', '', 0, 0, 0, 0),
(21071, 20194, 20154, 21066, 'Test GRU 2', '2021-05-30 13:05:57.245', '2021-05-30 13:05:57.245', 20005, 21066, 'a5b7ed5c-6f9d-4a91-a842-e7e4dfffd7c5', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 2', '', '', '', '', 0, 0, 0, 0),
(21077, 20194, 20154, 21072, 'Test GRU 3', '2021-05-30 13:05:57.6', '2021-05-30 13:05:57.6', 20005, 21072, '5f010eba-9b0a-4b31-9b45-05b4799cbe45', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 3', '', '', '', '', 0, 0, 0, 0),
(21083, 20194, 20154, 21078, 'Test GRU 4', '2021-05-30 13:05:58.03', '2021-05-30 13:05:58.03', 20005, 21078, '21a39890-050e-4c37-8d08-fa623cd9928b', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 4', '', '', '', '', 0, 0, 0, 0),
(21089, 20194, 20154, 21084, 'Test GRU 5', '2021-05-30 13:05:58.393', '2021-05-30 13:05:58.393', 20005, 21084, '6accdd98-f4b1-411d-89bb-02a53036e34e', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 5', '', '', '', '', 0, 0, 0, 0),
(21095, 20194, 20154, 21090, 'Test GRU 6', '2021-05-30 13:05:58.734', '2021-05-30 13:05:58.734', 20005, 21090, '923b8ebc-cdf3-4d39-bae3-ce6b00368cd3', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 6', '', '', '', '', 0, 0, 0, 0),
(21101, 20194, 20154, 21096, 'Test GRU 7', '2021-05-30 13:05:59.046', '2021-05-30 13:05:59.046', 20005, 21096, '4808d1db-f957-4cfa-b668-1d19f0322a11', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 7', '', '', '', '', 0, 0, 0, 0),
(21107, 20194, 20154, 21102, 'Test GRU 8', '2021-05-30 13:05:59.37', '2021-05-30 13:05:59.37', 20005, 21102, '5b31a024-6b3d-46f7-af08-79ffb894475c', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 8', '', '', '', '', 0, 0, 0, 0),
(21113, 20194, 20154, 21108, 'Test GRU 9', '2021-05-30 13:05:59.7', '2021-05-30 13:05:59.7', 20005, 21108, 'ee24b6c5-b69d-4598-91f8-1620cc685bec', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 9', '', '', '', '', 0, 0, 0, 0),
(21119, 20194, 20154, 21114, 'Test GRU 10', '2021-05-30 13:06:00.018', '2021-05-30 13:06:00.018', 20005, 21114, '4d2b31a6-85c4-470f-9e56-edfb2e784d17', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test GRU 10', '', '', '', '', 0, 0, 0, 0),
(21133, 20194, 20154, 21128, 'Test SFO 1', '2021-05-30 13:06:00.452', '2021-05-30 13:06:00.452', 20005, 21128, '83a20ef6-b866-432c-8954-8de96801eebd', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 1', '', '', '', '', 0, 0, 0, 0),
(21139, 20194, 20154, 21134, 'Test SFO 2', '2021-05-30 13:06:00.79', '2021-05-30 13:06:00.79', 20005, 21134, 'b36facbb-dcba-49bc-974b-5b4f7cc65f62', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 2', '', '', '', '', 0, 0, 0, 0),
(21145, 20194, 20154, 21140, 'Test SFO 3', '2021-05-30 13:06:01.11', '2021-05-30 13:06:01.11', 20005, 21140, '4fd31f5d-6c71-481c-aedd-5496f79573c8', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 3', '', '', '', '', 0, 0, 0, 0),
(21151, 20194, 20154, 21146, 'Test SFO 4', '2021-05-30 13:06:01.414', '2021-05-30 13:06:01.414', 20005, 21146, '261aacf0-ce16-4615-a895-3f7299a2e78b', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 4', '', '', '', '', 0, 0, 0, 0),
(21157, 20194, 20154, 21152, 'Test SFO 5', '2021-05-30 13:06:01.709', '2021-05-30 13:06:01.709', 20005, 21152, '11017dc4-f5da-4aaf-af33-a481f8fabf37', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 5', '', '', '', '', 0, 0, 0, 0),
(21163, 20194, 20154, 21158, 'Test SFO 6', '2021-05-30 13:06:02.04', '2021-05-30 13:06:02.04', 20005, 21158, 'afedfc25-a108-4248-afd3-bc9aeafd2b6c', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 6', '', '', '', '', 0, 0, 0, 0),
(21169, 20194, 20154, 21164, 'Test SFO 7', '2021-05-30 13:06:02.353', '2021-05-30 13:06:02.353', 20005, 21164, 'b412ae7d-0493-4469-b093-929c77888371', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 7', '', '', '', '', 0, 0, 0, 0),
(21175, 20194, 20154, 21170, 'Test SFO 8', '2021-05-30 13:06:02.663', '2021-05-30 13:06:02.663', 20005, 21170, 'c0c1c77d-be51-4fc9-a85c-9037864d3072', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 8', '', '', '', '', 0, 0, 0, 0),
(21181, 20194, 20154, 21176, 'Test SFO 9', '2021-05-30 13:06:02.972', '2021-05-30 13:06:02.972', 20005, 21176, '39ebbf29-7897-4c50-87f4-0e4efa799f31', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 9', '', '', '', '', 0, 0, 0, 0),
(21187, 20194, 20154, 21182, 'Test SFO 10', '2021-05-30 13:06:03.286', '2021-05-30 13:06:03.286', 20005, 21182, '6057633f-56b8-4e35-a231-f473a9bd7e6b', 0, 'f', NULL, NULL, NULL, NULL, '', 'Test SFO 10', '', '', '', '', 0, 0, 0, 0),
(21196, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:03.795', '2021-05-30 13:06:03.795', 20116, 21194, 'c7c4e386-dd24-415f-aa7b-bc205ed4f7e1', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '21192', '', '', '', '', 0, 0, 0, 0),
(21202, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:04.143', '2021-05-30 13:06:04.143', 20116, 21200, 'c8e804fd-51ae-4185-8022-809f521a5fad', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '21198', '', '', '', '', 0, 0, 0, 0),
(21223, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:45:22.939', '2021-05-30 13:45:22.939', 20116, 21221, '92d0c440-3fd1-4f44-b1ea-d91f3725eac7', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '21219', '', '', '', '', 0, 0, 0, 0),
(21305, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:51:26.285', '2021-05-30 13:51:26.285', 20116, 21303, '7770a4c5-9e1b-4338-9171-ba659c48cf7f', 0, 'f', NULL, NULL, NULL, NULL, 'text/html', '21301', '', '', '', '', 0, 0, 0, 0);









INSERT INTO "public"."assetvocabulary" ("uuid_", "vocabularyid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "name", "title", "description", "settings_") VALUES
('61477728-266e-4a21-9d29-932a6e6efafc', 20324, 20194, 20154, 20158, '', '2021-05-30 13:04:28.713', '2021-05-30 13:04:28.713', 'Topic', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Title language-id="en_US">Topic</Title></root>', '', '');












INSERT INTO "public"."browsertracker" ("browsertrackerid", "userid", "browserkey") VALUES
(21208, 20198, 51591500188);












INSERT INTO "public"."classname_" ("classnameid", "value") VALUES
(20001, 'com.liferay.portal.model.Group');
INSERT INTO "public"."classname_" ("classnameid", "value") VALUES
(20002, 'com.liferay.portal.model.Layout');
INSERT INTO "public"."classname_" ("classnameid", "value") VALUES
(20003, 'com.liferay.portal.model.Organization');
INSERT INTO "public"."classname_" ("classnameid", "value") VALUES
(20004, 'com.liferay.portal.model.Role'),
(20005, 'com.liferay.portal.model.User'),
(20006, 'com.liferay.portal.model.UserGroup'),
(20007, 'com.liferay.portlet.blogs.model.BlogsEntry'),
(20008, 'com.liferay.portlet.bookmarks.model.BookmarksEntry'),
(20009, 'com.liferay.portlet.bookmarks.model.BookmarksFolder'),
(20010, 'com.liferay.portlet.calendar.model.CalEvent'),
(20011, 'com.liferay.portlet.documentlibrary.model.DLFileEntry'),
(20012, 'com.liferay.portlet.documentlibrary.model.DLFolder'),
(20013, 'com.liferay.portlet.journal.model.JournalFolder'),
(20014, 'com.liferay.portlet.messageboards.model.MBMessage'),
(20015, 'com.liferay.portlet.messageboards.model.MBThread'),
(20016, 'com.liferay.portlet.wiki.model.WikiPage'),
(20017, 'com.liferay.counter.model.Counter'),
(20018, 'com.liferay.portal.kernel.workflow.WorkflowTask'),
(20019, 'com.liferay.portal.model.Account'),
(20020, 'com.liferay.portal.model.Address'),
(20021, 'com.liferay.portal.model.BackgroundTask'),
(20022, 'com.liferay.portal.model.BrowserTracker'),
(20023, 'com.liferay.portal.model.ClassName'),
(20024, 'com.liferay.portal.model.ClusterGroup'),
(20025, 'com.liferay.portal.model.Company'),
(20026, 'com.liferay.portal.model.Contact'),
(20027, 'com.liferay.portal.model.Country'),
(20028, 'com.liferay.portal.model.EmailAddress'),
(20029, 'com.liferay.portal.model.Image'),
(20030, 'com.liferay.portal.model.LayoutBranch'),
(20031, 'com.liferay.portal.model.LayoutFriendlyURL'),
(20032, 'com.liferay.portal.model.LayoutPrototype'),
(20033, 'com.liferay.portal.model.LayoutRevision'),
(20034, 'com.liferay.portal.model.LayoutSet'),
(20035, 'com.liferay.portal.model.LayoutSetBranch'),
(20036, 'com.liferay.portal.model.LayoutSetPrototype'),
(20037, 'com.liferay.portal.model.ListType'),
(20038, 'com.liferay.portal.model.Lock'),
(20039, 'com.liferay.portal.model.MembershipRequest'),
(20040, 'com.liferay.portal.model.OrgGroupRole'),
(20041, 'com.liferay.portal.model.OrgLabor'),
(20042, 'com.liferay.portal.model.PasswordPolicy'),
(20043, 'com.liferay.portal.model.PasswordPolicyRel'),
(20044, 'com.liferay.portal.model.PasswordTracker'),
(20045, 'com.liferay.portal.model.Phone'),
(20046, 'com.liferay.portal.model.PluginSetting'),
(20047, 'com.liferay.portal.model.PortalPreferences'),
(20048, 'com.liferay.portal.model.Portlet'),
(20049, 'com.liferay.portal.model.PortletItem'),
(20050, 'com.liferay.portal.model.PortletPreferences'),
(20051, 'com.liferay.portal.model.Region'),
(20052, 'com.liferay.portal.model.Release'),
(20053, 'com.liferay.portal.model.Repository'),
(20054, 'com.liferay.portal.model.RepositoryEntry'),
(20055, 'com.liferay.portal.model.ResourceAction'),
(20056, 'com.liferay.portal.model.ResourceBlock'),
(20057, 'com.liferay.portal.model.ResourceBlockPermission'),
(20058, 'com.liferay.portal.model.ResourcePermission'),
(20059, 'com.liferay.portal.model.ResourceTypePermission'),
(20060, 'com.liferay.portal.model.ServiceComponent'),
(20061, 'com.liferay.portal.model.Shard'),
(20062, 'com.liferay.portal.model.Subscription'),
(20063, 'com.liferay.portal.model.SystemEvent'),
(20064, 'com.liferay.portal.model.Team'),
(20065, 'com.liferay.portal.model.Ticket'),
(20066, 'com.liferay.portal.model.UserGroupGroupRole'),
(20067, 'com.liferay.portal.model.UserGroupRole'),
(20068, 'com.liferay.portal.model.UserIdMapper'),
(20069, 'com.liferay.portal.model.UserNotificationDelivery'),
(20070, 'com.liferay.portal.model.UserNotificationEvent'),
(20071, 'com.liferay.portal.model.UserTracker'),
(20072, 'com.liferay.portal.model.UserTrackerPath'),
(20073, 'com.liferay.portal.model.VirtualHost'),
(20074, 'com.liferay.portal.model.WebDAVProps'),
(20075, 'com.liferay.portal.model.Website'),
(20076, 'com.liferay.portal.model.WorkflowDefinitionLink'),
(20077, 'com.liferay.portal.model.WorkflowInstanceLink'),
(20078, 'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),
(20079, 'com.liferay.portlet.announcements.model.AnnouncementsEntry'),
(20080, 'com.liferay.portlet.announcements.model.AnnouncementsFlag'),
(20081, 'com.liferay.portlet.asset.model.AssetCategory'),
(20082, 'com.liferay.portlet.asset.model.AssetCategoryProperty'),
(20083, 'com.liferay.portlet.asset.model.AssetEntry'),
(20084, 'com.liferay.portlet.asset.model.AssetLink'),
(20085, 'com.liferay.portlet.asset.model.AssetTag'),
(20086, 'com.liferay.portlet.asset.model.AssetTagProperty'),
(20087, 'com.liferay.portlet.asset.model.AssetTagStats'),
(20088, 'com.liferay.portlet.asset.model.AssetVocabulary'),
(20089, 'com.liferay.portlet.blogs.model.BlogsStatsUser'),
(20090, 'com.liferay.portlet.documentlibrary.model.DLContent'),
(20091, 'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),
(20092, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),
(20093, 'com.liferay.portlet.documentlibrary.model.DLFileRank'),
(20094, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),
(20095, 'com.liferay.portlet.documentlibrary.model.DLFileVersion'),
(20096, 'com.liferay.portlet.documentlibrary.model.DLSyncEvent'),
(20097, 'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),
(20098, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),
(20099, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),
(20100, 'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),
(20101, 'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),
(20102, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),
(20103, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),
(20104, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),
(20105, 'com.liferay.portlet.expando.model.ExpandoColumn'),
(20106, 'com.liferay.portlet.expando.model.ExpandoRow'),
(20107, 'com.liferay.portlet.expando.model.ExpandoTable'),
(20108, 'com.liferay.portlet.expando.model.ExpandoValue'),
(20109, 'com.liferay.portlet.journal.model.JournalArticle'),
(20110, 'com.liferay.portlet.journal.model.JournalArticleImage'),
(20111, 'com.liferay.portlet.journal.model.JournalArticleResource'),
(20112, 'com.liferay.portlet.journal.model.JournalContentSearch'),
(20113, 'com.liferay.portlet.journal.model.JournalFeed'),
(20114, 'com.liferay.portlet.messageboards.model.MBBan'),
(20115, 'com.liferay.portlet.messageboards.model.MBCategory'),
(20116, 'com.liferay.portlet.messageboards.model.MBDiscussion'),
(20117, 'com.liferay.portlet.messageboards.model.MBMailingList'),
(20118, 'com.liferay.portlet.messageboards.model.MBStatsUser'),
(20119, 'com.liferay.portlet.messageboards.model.MBThreadFlag'),
(20120, 'com.liferay.portlet.mobiledevicerules.model.MDRAction'),
(20121, 'com.liferay.portlet.mobiledevicerules.model.MDRRule'),
(20122, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),
(20123, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),
(20124, 'com.liferay.portlet.polls.model.PollsChoice'),
(20125, 'com.liferay.portlet.polls.model.PollsQuestion'),
(20126, 'com.liferay.portlet.polls.model.PollsVote'),
(20127, 'com.liferay.portlet.ratings.model.RatingsEntry'),
(20128, 'com.liferay.portlet.ratings.model.RatingsStats'),
(20129, 'com.liferay.portlet.shopping.model.ShoppingCart'),
(20130, 'com.liferay.portlet.shopping.model.ShoppingCategory'),
(20131, 'com.liferay.portlet.shopping.model.ShoppingCoupon'),
(20132, 'com.liferay.portlet.shopping.model.ShoppingItem'),
(20133, 'com.liferay.portlet.shopping.model.ShoppingItemField'),
(20134, 'com.liferay.portlet.shopping.model.ShoppingItemPrice'),
(20135, 'com.liferay.portlet.shopping.model.ShoppingOrder'),
(20136, 'com.liferay.portlet.shopping.model.ShoppingOrderItem'),
(20137, 'com.liferay.portlet.social.model.SocialActivity'),
(20138, 'com.liferay.portlet.social.model.SocialActivityAchievement'),
(20139, 'com.liferay.portlet.social.model.SocialActivityCounter'),
(20140, 'com.liferay.portlet.social.model.SocialActivityLimit'),
(20141, 'com.liferay.portlet.social.model.SocialActivitySet'),
(20142, 'com.liferay.portlet.social.model.SocialActivitySetting'),
(20143, 'com.liferay.portlet.social.model.SocialRelation'),
(20144, 'com.liferay.portlet.social.model.SocialRequest'),
(20145, 'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),
(20146, 'com.liferay.portlet.softwarecatalog.model.SCLicense'),
(20147, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),
(20148, 'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),
(20149, 'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),
(20150, 'com.liferay.portlet.trash.model.TrashEntry'),
(20151, 'com.liferay.portlet.trash.model.TrashVersion'),
(20152, 'com.liferay.portlet.wiki.model.WikiNode'),
(20153, 'com.liferay.portlet.wiki.model.WikiPageResource'),
(20190, 'com.liferay.portal.model.UserPersonalSite'),
(20314, 'com.liferay.portlet.documentlibrary.util.RawMetadataProcessor'),
(20424, 'com.liferay.portal.kernel.repository.model.FileEntry'),
(20437, 'com.liferay.marketplace.model.App'),
(20438, 'com.liferay.marketplace.model.Module'),
(20443, 'com.liferay.calendar.model.Calendar'),
(20444, 'com.liferay.calendar.model.CalendarBooking'),
(20445, 'com.liferay.calendar.model.CalendarNotificationTemplate'),
(20446, 'com.liferay.calendar.model.CalendarResource'),
(20450, 'com.liferay.portal.workflow.kaleo.model.KaleoAction'),
(20451, 'com.liferay.portal.workflow.kaleo.model.KaleoCondition'),
(20452, 'com.liferay.portal.workflow.kaleo.model.KaleoDefinition'),
(20453, 'com.liferay.portal.workflow.kaleo.model.KaleoInstance'),
(20454, 'com.liferay.portal.workflow.kaleo.model.KaleoInstanceToken'),
(20455, 'com.liferay.portal.workflow.kaleo.model.KaleoLog'),
(20456, 'com.liferay.portal.workflow.kaleo.model.KaleoNode'),
(20457, 'com.liferay.portal.workflow.kaleo.model.KaleoNotification'),
(20458, 'com.liferay.portal.workflow.kaleo.model.KaleoNotificationRecipient'),
(20459, 'com.liferay.portal.workflow.kaleo.model.KaleoTask'),
(20460, 'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignment'),
(20461, 'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignmentInstance'),
(20462, 'com.liferay.portal.workflow.kaleo.model.KaleoTaskInstanceToken'),
(20463, 'com.liferay.portal.workflow.kaleo.model.KaleoTimer'),
(20464, 'com.liferay.portal.workflow.kaleo.model.KaleoTimerInstanceToken'),
(20465, 'com.liferay.portal.workflow.kaleo.model.KaleoTransition'),
(20493, 'com.liferay.notifications.model.UserNotificationEvent'),
(20501, 'com.liferay.opensocial.model.Gadget'),
(20502, 'com.liferay.opensocial.model.OAuthConsumer'),
(20503, 'com.liferay.opensocial.model.OAuthToken'),
(20511, 'com.liferay.sync.model.SyncDLFileVersionDiff'),
(20512, 'com.liferay.sync.model.SyncDLObject'),
(21209, 'com.liferay.EmployeeRegister.service.model.Bank'),
(21210, 'com.liferay.EmployeeRegister.service.model.Employee'),
(21211, 'com.liferay.EmployeeRegister.service.model.Position');



INSERT INTO "public"."company" ("companyid", "accountid", "webid", "key_", "mx", "homeurl", "logoid", "system", "maxusers", "active_") VALUES
(20154, 20156, 'liferay.com', 'rO0ABXNyAB9qYXZheC5jcnlwdG8uc3BlYy5TZWNyZXRLZXlTcGVjW0cLZuIwYU0CAAJMAAlhbGdvcml0aG10ABJMamF2YS9sYW5nL1N0cmluZztbAANrZXl0AAJbQnhwdAADQUVTdXIAAltCrPMX+AYIVOACAAB4cAAAABCcxS9ntlXykCvaqMIQOgm4', 'liferay.com', '', 0, 'f', 0, 't');


INSERT INTO "public"."contact_" ("contactid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "accountid", "parentcontactid", "emailaddress", "firstname", "middlename", "lastname", "prefixid", "suffixid", "male", "birthday", "smssn", "aimsn", "facebooksn", "icqsn", "jabbersn", "msnsn", "myspacesn", "skypesn", "twittersn", "ymsn", "employeestatusid", "employeenumber", "jobtitle", "jobclass", "hoursofoperation") VALUES
(20159, 20154, 20158, '', '2021-05-30 13:04:19.914', '2021-05-30 13:04:19.914', 20005, 20158, 20156, 0, 'default@liferay.com', '', '', '', 0, 0, 't', '2021-05-30 13:04:19.914', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."contact_" ("contactid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "accountid", "parentcontactid", "emailaddress", "firstname", "middlename", "lastname", "prefixid", "suffixid", "male", "birthday", "smssn", "aimsn", "facebooksn", "icqsn", "jabbersn", "msnsn", "myspacesn", "skypesn", "twittersn", "ymsn", "employeestatusid", "employeenumber", "jobtitle", "jobclass", "hoursofoperation") VALUES
(20200, 20154, 20198, '', '2021-05-30 13:04:23.819', '2021-05-30 13:04:36.533', 20005, 20198, 20156, 0, 'test@liferay.com', 'Test', '', 'Test', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."contact_" ("contactid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "accountid", "parentcontactid", "emailaddress", "firstname", "middlename", "lastname", "prefixid", "suffixid", "male", "birthday", "smssn", "aimsn", "facebooksn", "icqsn", "jabbersn", "msnsn", "myspacesn", "skypesn", "twittersn", "ymsn", "employeestatusid", "employeenumber", "jobtitle", "jobclass", "hoursofoperation") VALUES
(20537, 20154, 20536, '', '2021-05-30 13:05:25.041', '2021-05-30 13:05:25.041', 20005, 20536, 20156, 0, 'test.ord.1@liferay.com', 'Test', '', 'ORD 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."contact_" ("contactid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "accountid", "parentcontactid", "emailaddress", "firstname", "middlename", "lastname", "prefixid", "suffixid", "male", "birthday", "smssn", "aimsn", "facebooksn", "icqsn", "jabbersn", "msnsn", "myspacesn", "skypesn", "twittersn", "ymsn", "employeestatusid", "employeenumber", "jobtitle", "jobclass", "hoursofoperation") VALUES
(20543, 20154, 20542, '', '2021-05-30 13:05:25.513', '2021-05-30 13:05:25.513', 20005, 20542, 20156, 0, 'test.ord.2@liferay.com', 'Test', '', 'ORD 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20549, 20154, 20548, '', '2021-05-30 13:05:25.929', '2021-05-30 13:05:25.929', 20005, 20548, 20156, 0, 'test.ord.3@liferay.com', 'Test', '', 'ORD 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20555, 20154, 20554, '', '2021-05-30 13:05:26.395', '2021-05-30 13:05:26.395', 20005, 20554, 20156, 0, 'test.ord.4@liferay.com', 'Test', '', 'ORD 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20561, 20154, 20560, '', '2021-05-30 13:05:26.833', '2021-05-30 13:05:26.833', 20005, 20560, 20156, 0, 'test.ord.5@liferay.com', 'Test', '', 'ORD 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20567, 20154, 20566, '', '2021-05-30 13:05:27.295', '2021-05-30 13:05:27.295', 20005, 20566, 20156, 0, 'test.ord.6@liferay.com', 'Test', '', 'ORD 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20573, 20154, 20572, '', '2021-05-30 13:05:27.889', '2021-05-30 13:05:27.889', 20005, 20572, 20156, 0, 'test.ord.7@liferay.com', 'Test', '', 'ORD 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20579, 20154, 20578, '', '2021-05-30 13:05:28.368', '2021-05-30 13:05:28.368', 20005, 20578, 20156, 0, 'test.ord.8@liferay.com', 'Test', '', 'ORD 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20585, 20154, 20584, '', '2021-05-30 13:05:28.762', '2021-05-30 13:05:28.762', 20005, 20584, 20156, 0, 'test.ord.9@liferay.com', 'Test', '', 'ORD 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20591, 20154, 20590, '', '2021-05-30 13:05:29.234', '2021-05-30 13:05:29.234', 20005, 20590, 20156, 0, 'test.ord.10@liferay.com', 'Test', '', 'ORD 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20605, 20154, 20604, '', '2021-05-30 13:05:29.873', '2021-05-30 13:05:29.873', 20005, 20604, 20156, 0, 'test.dlc.1@liferay.com', 'Test', '', 'DLC 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20611, 20154, 20610, '', '2021-05-30 13:05:30.35', '2021-05-30 13:05:30.35', 20005, 20610, 20156, 0, 'test.dlc.2@liferay.com', 'Test', '', 'DLC 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20617, 20154, 20616, '', '2021-05-30 13:05:30.821', '2021-05-30 13:05:30.821', 20005, 20616, 20156, 0, 'test.dlc.3@liferay.com', 'Test', '', 'DLC 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20623, 20154, 20622, '', '2021-05-30 13:05:31.282', '2021-05-30 13:05:31.282', 20005, 20622, 20156, 0, 'test.dlc.4@liferay.com', 'Test', '', 'DLC 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20629, 20154, 20628, '', '2021-05-30 13:05:31.654', '2021-05-30 13:05:31.654', 20005, 20628, 20156, 0, 'test.dlc.5@liferay.com', 'Test', '', 'DLC 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20635, 20154, 20634, '', '2021-05-30 13:05:32.046', '2021-05-30 13:05:32.046', 20005, 20634, 20156, 0, 'test.dlc.6@liferay.com', 'Test', '', 'DLC 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20641, 20154, 20640, '', '2021-05-30 13:05:32.448', '2021-05-30 13:05:32.448', 20005, 20640, 20156, 0, 'test.dlc.7@liferay.com', 'Test', '', 'DLC 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20647, 20154, 20646, '', '2021-05-30 13:05:32.834', '2021-05-30 13:05:32.834', 20005, 20646, 20156, 0, 'test.dlc.8@liferay.com', 'Test', '', 'DLC 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20653, 20154, 20652, '', '2021-05-30 13:05:33.203', '2021-05-30 13:05:33.203', 20005, 20652, 20156, 0, 'test.dlc.9@liferay.com', 'Test', '', 'DLC 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20659, 20154, 20658, '', '2021-05-30 13:05:33.609', '2021-05-30 13:05:33.609', 20005, 20658, 20156, 0, 'test.dlc.10@liferay.com', 'Test', '', 'DLC 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20673, 20154, 20672, '', '2021-05-30 13:05:34.099', '2021-05-30 13:05:34.099', 20005, 20672, 20156, 0, 'test.fra.1@liferay.com', 'Test', '', 'FRA 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20679, 20154, 20678, '', '2021-05-30 13:05:34.519', '2021-05-30 13:05:34.519', 20005, 20678, 20156, 0, 'test.fra.2@liferay.com', 'Test', '', 'FRA 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20685, 20154, 20684, '', '2021-05-30 13:05:34.957', '2021-05-30 13:05:34.957', 20005, 20684, 20156, 0, 'test.fra.3@liferay.com', 'Test', '', 'FRA 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20691, 20154, 20690, '', '2021-05-30 13:05:35.303', '2021-05-30 13:05:35.303', 20005, 20690, 20156, 0, 'test.fra.4@liferay.com', 'Test', '', 'FRA 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20697, 20154, 20696, '', '2021-05-30 13:05:35.675', '2021-05-30 13:05:35.675', 20005, 20696, 20156, 0, 'test.fra.5@liferay.com', 'Test', '', 'FRA 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20703, 20154, 20702, '', '2021-05-30 13:05:36.038', '2021-05-30 13:05:36.038', 20005, 20702, 20156, 0, 'test.fra.6@liferay.com', 'Test', '', 'FRA 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20709, 20154, 20708, '', '2021-05-30 13:05:36.451', '2021-05-30 13:05:36.451', 20005, 20708, 20156, 0, 'test.fra.7@liferay.com', 'Test', '', 'FRA 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20715, 20154, 20714, '', '2021-05-30 13:05:36.857', '2021-05-30 13:05:36.857', 20005, 20714, 20156, 0, 'test.fra.8@liferay.com', 'Test', '', 'FRA 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20721, 20154, 20720, '', '2021-05-30 13:05:37.199', '2021-05-30 13:05:37.199', 20005, 20720, 20156, 0, 'test.fra.9@liferay.com', 'Test', '', 'FRA 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20727, 20154, 20726, '', '2021-05-30 13:05:37.566', '2021-05-30 13:05:37.566', 20005, 20726, 20156, 0, 'test.fra.10@liferay.com', 'Test', '', 'FRA 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20737, 20154, 20736, '', '2021-05-30 13:05:38.107', '2021-05-30 13:05:38.107', 20005, 20736, 20156, 0, 'test.hkg.1@liferay.com', 'Test', '', 'HKG 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20743, 20154, 20742, '', '2021-05-30 13:05:38.474', '2021-05-30 13:05:38.474', 20005, 20742, 20156, 0, 'test.hkg.2@liferay.com', 'Test', '', 'HKG 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20749, 20154, 20748, '', '2021-05-30 13:05:38.854', '2021-05-30 13:05:38.854', 20005, 20748, 20156, 0, 'test.hkg.3@liferay.com', 'Test', '', 'HKG 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20755, 20154, 20754, '', '2021-05-30 13:05:39.242', '2021-05-30 13:05:39.242', 20005, 20754, 20156, 0, 'test.hkg.4@liferay.com', 'Test', '', 'HKG 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20761, 20154, 20760, '', '2021-05-30 13:05:39.63', '2021-05-30 13:05:39.63', 20005, 20760, 20156, 0, 'test.hkg.5@liferay.com', 'Test', '', 'HKG 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20767, 20154, 20766, '', '2021-05-30 13:05:39.989', '2021-05-30 13:05:39.989', 20005, 20766, 20156, 0, 'test.hkg.6@liferay.com', 'Test', '', 'HKG 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20773, 20154, 20772, '', '2021-05-30 13:05:40.343', '2021-05-30 13:05:40.343', 20005, 20772, 20156, 0, 'test.hkg.7@liferay.com', 'Test', '', 'HKG 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO "public"."contact_" ("contactid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "accountid", "parentcontactid", "emailaddress", "firstname", "middlename", "lastname", "prefixid", "suffixid", "male", "birthday", "smssn", "aimsn", "facebooksn", "icqsn", "jabbersn", "msnsn", "myspacesn", "skypesn", "twittersn", "ymsn", "employeestatusid", "employeenumber", "jobtitle", "jobclass", "hoursofoperation") VALUES
(20779, 20154, 20778, '', '2021-05-30 13:05:40.694', '2021-05-30 13:05:40.694', 20005, 20778, 20156, 0, 'test.hkg.8@liferay.com', 'Test', '', 'HKG 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20785, 20154, 20784, '', '2021-05-30 13:05:41.048', '2021-05-30 13:05:41.048', 20005, 20784, 20156, 0, 'test.hkg.9@liferay.com', 'Test', '', 'HKG 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20791, 20154, 20790, '', '2021-05-30 13:05:41.395', '2021-05-30 13:05:41.395', 20005, 20790, 20156, 0, 'test.hkg.10@liferay.com', 'Test', '', 'HKG 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20801, 20154, 20800, '', '2021-05-30 13:05:41.79', '2021-05-30 13:05:41.79', 20005, 20800, 20156, 0, 'test.kul.1@liferay.com', 'Test', '', 'KUL 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20807, 20154, 20806, '', '2021-05-30 13:05:42.221', '2021-05-30 13:05:42.221', 20005, 20806, 20156, 0, 'test.kul.2@liferay.com', 'Test', '', 'KUL 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20813, 20154, 20812, '', '2021-05-30 13:05:42.64', '2021-05-30 13:05:42.64', 20005, 20812, 20156, 0, 'test.kul.3@liferay.com', 'Test', '', 'KUL 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20819, 20154, 20818, '', '2021-05-30 13:05:43.074', '2021-05-30 13:05:43.074', 20005, 20818, 20156, 0, 'test.kul.4@liferay.com', 'Test', '', 'KUL 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20825, 20154, 20824, '', '2021-05-30 13:05:43.563', '2021-05-30 13:05:43.563', 20005, 20824, 20156, 0, 'test.kul.5@liferay.com', 'Test', '', 'KUL 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20831, 20154, 20830, '', '2021-05-30 13:05:44.023', '2021-05-30 13:05:44.023', 20005, 20830, 20156, 0, 'test.kul.6@liferay.com', 'Test', '', 'KUL 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20843, 20154, 20842, '', '2021-05-30 13:05:44.887', '2021-05-30 13:05:44.887', 20005, 20842, 20156, 0, 'test.kul.8@liferay.com', 'Test', '', 'KUL 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20849, 20154, 20848, '', '2021-05-30 13:05:45.285', '2021-05-30 13:05:45.285', 20005, 20848, 20156, 0, 'test.kul.9@liferay.com', 'Test', '', 'KUL 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20855, 20154, 20854, '', '2021-05-30 13:05:45.644', '2021-05-30 13:05:45.644', 20005, 20854, 20156, 0, 'test.kul.10@liferay.com', 'Test', '', 'KUL 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20865, 20154, 20864, '', '2021-05-30 13:05:46.066', '2021-05-30 13:05:46.066', 20005, 20864, 20156, 0, 'test.lax.1@liferay.com', 'Test', '', 'LAX 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20871, 20154, 20870, '', '2021-05-30 13:05:46.436', '2021-05-30 13:05:46.436', 20005, 20870, 20156, 0, 'test.lax.2@liferay.com', 'Test', '', 'LAX 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20877, 20154, 20876, '', '2021-05-30 13:05:46.831', '2021-05-30 13:05:46.831', 20005, 20876, 20156, 0, 'test.lax.3@liferay.com', 'Test', '', 'LAX 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20883, 20154, 20882, '', '2021-05-30 13:05:47.182', '2021-05-30 13:05:47.182', 20005, 20882, 20156, 0, 'test.lax.4@liferay.com', 'Test', '', 'LAX 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20889, 20154, 20888, '', '2021-05-30 13:05:47.539', '2021-05-30 13:05:47.539', 20005, 20888, 20156, 0, 'test.lax.5@liferay.com', 'Test', '', 'LAX 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20901, 20154, 20900, '', '2021-05-30 13:05:48.264', '2021-05-30 13:05:48.264', 20005, 20900, 20156, 0, 'test.lax.7@liferay.com', 'Test', '', 'LAX 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20941, 20154, 20940, '', '2021-05-30 13:05:50.663', '2021-05-30 13:05:50.663', 20005, 20940, 20156, 0, 'test.mad.3@liferay.com', 'Test', '', 'MAD 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20837, 20154, 20836, '', '2021-05-30 13:05:44.443', '2021-05-30 13:05:44.443', 20005, 20836, 20156, 0, 'test.kul.7@liferay.com', 'Test', '', 'KUL 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20895, 20154, 20894, '', '2021-05-30 13:05:47.898', '2021-05-30 13:05:47.898', 20005, 20894, 20156, 0, 'test.lax.6@liferay.com', 'Test', '', 'LAX 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20907, 20154, 20906, '', '2021-05-30 13:05:48.688', '2021-05-30 13:05:48.688', 20005, 20906, 20156, 0, 'test.lax.8@liferay.com', 'Test', '', 'LAX 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20913, 20154, 20912, '', '2021-05-30 13:05:49.069', '2021-05-30 13:05:49.069', 20005, 20912, 20156, 0, 'test.lax.9@liferay.com', 'Test', '', 'LAX 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20919, 20154, 20918, '', '2021-05-30 13:05:49.489', '2021-05-30 13:05:49.489', 20005, 20918, 20156, 0, 'test.lax.10@liferay.com', 'Test', '', 'LAX 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20929, 20154, 20928, '', '2021-05-30 13:05:49.928', '2021-05-30 13:05:49.928', 20005, 20928, 20156, 0, 'test.mad.1@liferay.com', 'Test', '', 'MAD 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20935, 20154, 20934, '', '2021-05-30 13:05:50.32', '2021-05-30 13:05:50.32', 20005, 20934, 20156, 0, 'test.mad.2@liferay.com', 'Test', '', 'MAD 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21015, 20154, 21014, '', '2021-05-30 13:05:54.524', '2021-05-30 13:05:54.524', 20005, 21014, 20156, 0, 'test.nyc.4@liferay.com', 'Test', '', 'NYC 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21021, 20154, 21020, '', '2021-05-30 13:05:54.909', '2021-05-30 13:05:54.909', 20005, 21020, 20156, 0, 'test.nyc.5@liferay.com', 'Test', '', 'NYC 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21027, 20154, 21026, '', '2021-05-30 13:05:55.266', '2021-05-30 13:05:55.266', 20005, 21026, 20156, 0, 'test.nyc.6@liferay.com', 'Test', '', 'NYC 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21033, 20154, 21032, '', '2021-05-30 13:05:55.587', '2021-05-30 13:05:55.587', 20005, 21032, 20156, 0, 'test.nyc.7@liferay.com', 'Test', '', 'NYC 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21039, 20154, 21038, '', '2021-05-30 13:05:55.904', '2021-05-30 13:05:55.904', 20005, 21038, 20156, 0, 'test.nyc.8@liferay.com', 'Test', '', 'NYC 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21045, 20154, 21044, '', '2021-05-30 13:05:56.225', '2021-05-30 13:05:56.225', 20005, 21044, 20156, 0, 'test.nyc.9@liferay.com', 'Test', '', 'NYC 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21051, 20154, 21050, '', '2021-05-30 13:05:56.55', '2021-05-30 13:05:56.55', 20005, 21050, 20156, 0, 'test.nyc.10@liferay.com', 'Test', '', 'NYC 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21061, 20154, 21060, '', '2021-05-30 13:05:56.905', '2021-05-30 13:05:56.905', 20005, 21060, 20156, 0, 'test.gru.1@liferay.com', 'Test', '', 'GRU 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21067, 20154, 21066, '', '2021-05-30 13:05:57.245', '2021-05-30 13:05:57.245', 20005, 21066, 20156, 0, 'test.gru.2@liferay.com', 'Test', '', 'GRU 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21115, 20154, 21114, '', '2021-05-30 13:06:00.018', '2021-05-30 13:06:00.018', 20005, 21114, 20156, 0, 'test.gru.10@liferay.com', 'Test', '', 'GRU 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21129, 20154, 21128, '', '2021-05-30 13:06:00.452', '2021-05-30 13:06:00.452', 20005, 21128, 20156, 0, 'test.sfo.1@liferay.com', 'Test', '', 'SFO 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21135, 20154, 21134, '', '2021-05-30 13:06:00.79', '2021-05-30 13:06:00.79', 20005, 21134, 20156, 0, 'test.sfo.2@liferay.com', 'Test', '', 'SFO 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21141, 20154, 21140, '', '2021-05-30 13:06:01.11', '2021-05-30 13:06:01.11', 20005, 21140, 20156, 0, 'test.sfo.3@liferay.com', 'Test', '', 'SFO 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21147, 20154, 21146, '', '2021-05-30 13:06:01.414', '2021-05-30 13:06:01.414', 20005, 21146, 20156, 0, 'test.sfo.4@liferay.com', 'Test', '', 'SFO 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21153, 20154, 21152, '', '2021-05-30 13:06:01.709', '2021-05-30 13:06:01.709', 20005, 21152, 20156, 0, 'test.sfo.5@liferay.com', 'Test', '', 'SFO 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21159, 20154, 21158, '', '2021-05-30 13:06:02.04', '2021-05-30 13:06:02.04', 20005, 21158, 20156, 0, 'test.sfo.6@liferay.com', 'Test', '', 'SFO 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21183, 20154, 21182, '', '2021-05-30 13:06:03.286', '2021-05-30 13:06:03.286', 20005, 21182, 20156, 0, 'test.sfo.10@liferay.com', 'Test', '', 'SFO 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20947, 20154, 20946, '', '2021-05-30 13:05:51.012', '2021-05-30 13:05:51.012', 20005, 20946, 20156, 0, 'test.mad.4@liferay.com', 'Test', '', 'MAD 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20953, 20154, 20952, '', '2021-05-30 13:05:51.35', '2021-05-30 13:05:51.35', 20005, 20952, 20156, 0, 'test.mad.5@liferay.com', 'Test', '', 'MAD 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20959, 20154, 20958, '', '2021-05-30 13:05:51.764', '2021-05-30 13:05:51.764', 20005, 20958, 20156, 0, 'test.mad.6@liferay.com', 'Test', '', 'MAD 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20965, 20154, 20964, '', '2021-05-30 13:05:52.1', '2021-05-30 13:05:52.1', 20005, 20964, 20156, 0, 'test.mad.7@liferay.com', 'Test', '', 'MAD 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20971, 20154, 20970, '', '2021-05-30 13:05:52.457', '2021-05-30 13:05:52.457', 20005, 20970, 20156, 0, 'test.mad.8@liferay.com', 'Test', '', 'MAD 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20977, 20154, 20976, '', '2021-05-30 13:05:52.777', '2021-05-30 13:05:52.777', 20005, 20976, 20156, 0, 'test.mad.9@liferay.com', 'Test', '', 'MAD 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20983, 20154, 20982, '', '2021-05-30 13:05:53.102', '2021-05-30 13:05:53.102', 20005, 20982, 20156, 0, 'test.mad.10@liferay.com', 'Test', '', 'MAD 10', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20997, 20154, 20996, '', '2021-05-30 13:05:53.516', '2021-05-30 13:05:53.516', 20005, 20996, 20156, 0, 'test.nyc.1@liferay.com', 'Test', '', 'NYC 1', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21003, 20154, 21002, '', '2021-05-30 13:05:53.835', '2021-05-30 13:05:53.835', 20005, 21002, 20156, 0, 'test.nyc.2@liferay.com', 'Test', '', 'NYC 2', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21009, 20154, 21008, '', '2021-05-30 13:05:54.149', '2021-05-30 13:05:54.149', 20005, 21008, 20156, 0, 'test.nyc.3@liferay.com', 'Test', '', 'NYC 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21073, 20154, 21072, '', '2021-05-30 13:05:57.6', '2021-05-30 13:05:57.6', 20005, 21072, 20156, 0, 'test.gru.3@liferay.com', 'Test', '', 'GRU 3', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21079, 20154, 21078, '', '2021-05-30 13:05:58.03', '2021-05-30 13:05:58.03', 20005, 21078, 20156, 0, 'test.gru.4@liferay.com', 'Test', '', 'GRU 4', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21085, 20154, 21084, '', '2021-05-30 13:05:58.393', '2021-05-30 13:05:58.393', 20005, 21084, 20156, 0, 'test.gru.5@liferay.com', 'Test', '', 'GRU 5', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21091, 20154, 21090, '', '2021-05-30 13:05:58.734', '2021-05-30 13:05:58.734', 20005, 21090, 20156, 0, 'test.gru.6@liferay.com', 'Test', '', 'GRU 6', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21097, 20154, 21096, '', '2021-05-30 13:05:59.046', '2021-05-30 13:05:59.046', 20005, 21096, 20156, 0, 'test.gru.7@liferay.com', 'Test', '', 'GRU 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21103, 20154, 21102, '', '2021-05-30 13:05:59.37', '2021-05-30 13:05:59.37', 20005, 21102, 20156, 0, 'test.gru.8@liferay.com', 'Test', '', 'GRU 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21109, 20154, 21108, '', '2021-05-30 13:05:59.7', '2021-05-30 13:05:59.7', 20005, 21108, 20156, 0, 'test.gru.9@liferay.com', 'Test', '', 'GRU 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21165, 20154, 21164, '', '2021-05-30 13:06:02.353', '2021-05-30 13:06:02.353', 20005, 21164, 20156, 0, 'test.sfo.7@liferay.com', 'Test', '', 'SFO 7', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21171, 20154, 21170, '', '2021-05-30 13:06:02.663', '2021-05-30 13:06:02.663', 20005, 21170, 20156, 0, 'test.sfo.8@liferay.com', 'Test', '', 'SFO 8', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21177, 20154, 21176, '', '2021-05-30 13:06:02.972', '2021-05-30 13:06:02.972', 20005, 21176, 20156, 0, 'test.sfo.9@liferay.com', 'Test', '', 'SFO 9', 0, 0, 't', '1970-01-01 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

INSERT INTO "public"."counter" ("name", "currentid") VALUES
('com.liferay.portal.model.Layout#20172#true', 1);
INSERT INTO "public"."counter" ("name", "currentid") VALUES
('com.liferay.portal.model.ResourcePermission', 800);
INSERT INTO "public"."counter" ("name", "currentid") VALUES
('com.liferay.counter.model.Counter', 21600);
INSERT INTO "public"."counter" ("name", "currentid") VALUES
('com.liferay.EmployeeRegister.service.model.Employee', 200),
('com.liferay.portal.model.Layout#20317#true', 1),
('com.liferay.portal.model.Layout#20329#true', 1),
('com.liferay.portal.model.Layout#20339#true', 1),
('com.liferay.portal.model.Layout#20350#true', 2),
('com.liferay.portal.model.Layout#20376#true', 3),
('com.liferay.portal.model.Layout#20517#false', 1),
('com.liferay.portal.model.Layout#20517#true', 1),
('com.liferay.portal.model.Layout#20201#true', 1),
('com.liferay.portal.model.Layout#20201#false', 1),
('com.liferay.EmployeeRegister.service.model.Position', 100),
('com.liferay.EmployeeRegister.service.model.Bank', 100),
('com.liferay.portal.model.Layout#20181#false', 3),
('com.liferay.portal.model.ResourceAction', 1300);

INSERT INTO "public"."country" ("countryid", "name", "a2", "a3", "number_", "idd_", "ziprequired", "active_") VALUES
(1, 'canada', 'CA', 'CAN', '124', '001', 't', 't');
INSERT INTO "public"."country" ("countryid", "name", "a2", "a3", "number_", "idd_", "ziprequired", "active_") VALUES
(2, 'china', 'CN', 'CHN', '156', '086', 't', 't');
INSERT INTO "public"."country" ("countryid", "name", "a2", "a3", "number_", "idd_", "ziprequired", "active_") VALUES
(3, 'france', 'FR', 'FRA', '250', '033', 't', 't');
INSERT INTO "public"."country" ("countryid", "name", "a2", "a3", "number_", "idd_", "ziprequired", "active_") VALUES
(4, 'germany', 'DE', 'DEU', '276', '049', 't', 't'),
(5, 'hong-kong', 'HK', 'HKG', '344', '852', 't', 't'),
(6, 'hungary', 'HU', 'HUN', '348', '036', 't', 't'),
(7, 'israel', 'IL', 'ISR', '376', '972', 't', 't'),
(8, 'italy', 'IT', 'ITA', '380', '039', 't', 't'),
(9, 'japan', 'JP', 'JPN', '392', '081', 'f', 't'),
(10, 'south-korea', 'KR', 'KOR', '410', '082', 't', 't'),
(11, 'netherlands', 'NL', 'NLD', '528', '031', 't', 't'),
(12, 'portugal', 'PT', 'PRT', '620', '351', 't', 't'),
(13, 'russia', 'RU', 'RUS', '643', '007', 't', 't'),
(14, 'singapore', 'SG', 'SGP', '702', '065', 't', 't'),
(15, 'spain', 'ES', 'ESP', '724', '034', 't', 't'),
(16, 'turkey', 'TR', 'TUR', '792', '090', 't', 't'),
(17, 'vietnam', 'VN', 'VNM', '704', '084', 't', 't'),
(18, 'united-kingdom', 'GB', 'GBR', '826', '044', 't', 't'),
(19, 'united-states', 'US', 'USA', '840', '001', 't', 't'),
(20, 'afghanistan', 'AF', 'AFG', '4', '093', 't', 't'),
(21, 'albania', 'AL', 'ALB', '8', '355', 't', 't'),
(22, 'algeria', 'DZ', 'DZA', '12', '213', 't', 't'),
(23, 'american-samoa', 'AS', 'ASM', '16', '684', 't', 't'),
(24, 'andorra', 'AD', 'AND', '20', '376', 't', 't'),
(25, 'angola', 'AO', 'AGO', '24', '244', 'f', 't'),
(26, 'anguilla', 'AI', 'AIA', '660', '264', 't', 't'),
(27, 'antarctica', 'AQ', 'ATA', '10', '672', 't', 't'),
(28, 'antigua-barbuda', 'AG', 'ATG', '28', '268', 'f', 't'),
(29, 'argentina', 'AR', 'ARG', '32', '054', 't', 't'),
(30, 'armenia', 'AM', 'ARM', '51', '374', 't', 't'),
(31, 'aruba', 'AW', 'ABW', '533', '297', 'f', 't'),
(32, 'australia', 'AU', 'AUS', '36', '061', 't', 't'),
(33, 'austria', 'AT', 'AUT', '40', '043', 't', 't'),
(34, 'azerbaijan', 'AZ', 'AZE', '31', '994', 't', 't'),
(35, 'bahamas', 'BS', 'BHS', '44', '242', 'f', 't'),
(36, 'bahrain', 'BH', 'BHR', '48', '973', 't', 't'),
(37, 'bangladesh', 'BD', 'BGD', '50', '880', 't', 't'),
(38, 'barbados', 'BB', 'BRB', '52', '246', 't', 't'),
(39, 'belarus', 'BY', 'BLR', '112', '375', 't', 't'),
(40, 'belgium', 'BE', 'BEL', '56', '032', 't', 't'),
(41, 'belize', 'BZ', 'BLZ', '84', '501', 'f', 't'),
(42, 'benin', 'BJ', 'BEN', '204', '229', 'f', 't'),
(43, 'bermuda', 'BM', 'BMU', '60', '441', 't', 't'),
(44, 'bhutan', 'BT', 'BTN', '64', '975', 't', 't'),
(45, 'bolivia', 'BO', 'BOL', '68', '591', 't', 't'),
(46, 'bosnia-herzegovina', 'BA', 'BIH', '70', '387', 't', 't'),
(47, 'botswana', 'BW', 'BWA', '72', '267', 'f', 't'),
(48, 'brazil', 'BR', 'BRA', '76', '055', 't', 't'),
(49, 'british-virgin-islands', 'VG', 'VGB', '92', '284', 't', 't'),
(50, 'brunei', 'BN', 'BRN', '96', '673', 't', 't'),
(51, 'bulgaria', 'BG', 'BGR', '100', '359', 't', 't'),
(52, 'burkina-faso', 'BF', 'BFA', '854', '226', 'f', 't'),
(53, 'burma-myanmar', 'MM', 'MMR', '104', '095', 't', 't'),
(54, 'burundi', 'BI', 'BDI', '108', '257', 'f', 't'),
(55, 'cambodia', 'KH', 'KHM', '116', '855', 't', 't'),
(56, 'cameroon', 'CM', 'CMR', '120', '237', 't', 't'),
(57, 'cape-verde-island', 'CV', 'CPV', '132', '238', 't', 't'),
(58, 'cayman-islands', 'KY', 'CYM', '136', '345', 't', 't'),
(59, 'central-african-republic', 'CF', 'CAF', '140', '236', 'f', 't'),
(60, 'chad', 'TD', 'TCD', '148', '235', 't', 't'),
(61, 'chile', 'CL', 'CHL', '152', '056', 't', 't'),
(62, 'christmas-island', 'CX', 'CXR', '162', '061', 't', 't'),
(63, 'cocos-islands', 'CC', 'CCK', '166', '061', 't', 't'),
(64, 'colombia', 'CO', 'COL', '170', '057', 't', 't'),
(65, 'comoros', 'KM', 'COM', '174', '269', 'f', 't'),
(66, 'republic-of-congo', 'CD', 'COD', '180', '242', 'f', 't'),
(67, 'democratic-republic-of-congo', 'CG', 'COG', '178', '243', 'f', 't'),
(68, 'cook-islands', 'CK', 'COK', '184', '682', 'f', 't'),
(69, 'costa-rica', 'CR', 'CRI', '188', '506', 't', 't'),
(70, 'croatia', 'HR', 'HRV', '191', '385', 't', 't'),
(71, 'cuba', 'CU', 'CUB', '192', '053', 't', 't'),
(72, 'cyprus', 'CY', 'CYP', '196', '357', 't', 't'),
(73, 'czech-republic', 'CZ', 'CZE', '203', '420', 't', 't'),
(74, 'denmark', 'DK', 'DNK', '208', '045', 't', 't'),
(75, 'djibouti', 'DJ', 'DJI', '262', '253', 'f', 't'),
(76, 'dominica', 'DM', 'DMA', '212', '767', 'f', 't'),
(77, 'dominican-republic', 'DO', 'DOM', '214', '809', 't', 't'),
(78, 'ecuador', 'EC', 'ECU', '218', '593', 't', 't'),
(79, 'egypt', 'EG', 'EGY', '818', '020', 't', 't'),
(80, 'el-salvador', 'SV', 'SLV', '222', '503', 't', 't'),
(81, 'equatorial-guinea', 'GQ', 'GNQ', '226', '240', 'f', 't'),
(82, 'eritrea', 'ER', 'ERI', '232', '291', 'f', 't'),
(83, 'estonia', 'EE', 'EST', '233', '372', 't', 't'),
(84, 'ethiopia', 'ET', 'ETH', '231', '251', 't', 't'),
(85, 'faeroe-islands', 'FO', 'FRO', '234', '298', 't', 't'),
(86, 'falkland-islands', 'FK', 'FLK', '238', '500', 't', 't'),
(87, 'fiji-islands', 'FJ', 'FJI', '242', '679', 'f', 't'),
(88, 'finland', 'FI', 'FIN', '246', '358', 't', 't'),
(89, 'french-guiana', 'GF', 'GUF', '254', '594', 't', 't'),
(90, 'french-polynesia', 'PF', 'PYF', '258', '689', 't', 't'),
(91, 'gabon', 'GA', 'GAB', '266', '241', 't', 't'),
(92, 'gambia', 'GM', 'GMB', '270', '220', 'f', 't'),
(93, 'georgia', 'GE', 'GEO', '268', '995', 't', 't'),
(94, 'ghana', 'GH', 'GHA', '288', '233', 'f', 't'),
(95, 'gibraltar', 'GI', 'GIB', '292', '350', 't', 't'),
(96, 'greece', 'GR', 'GRC', '300', '030', 't', 't'),
(97, 'greenland', 'GL', 'GRL', '304', '299', 't', 't'),
(98, 'grenada', 'GD', 'GRD', '308', '473', 'f', 't'),
(99, 'guadeloupe', 'GP', 'GLP', '312', '590', 't', 't'),
(100, 'guam', 'GU', 'GUM', '316', '671', 't', 't');
INSERT INTO "public"."country" ("countryid", "name", "a2", "a3", "number_", "idd_", "ziprequired", "active_") VALUES
(101, 'guatemala', 'GT', 'GTM', '320', '502', 't', 't'),
(102, 'guinea', 'GN', 'GIN', '324', '224', 'f', 't'),
(103, 'guinea-bissau', 'GW', 'GNB', '624', '245', 't', 't'),
(104, 'guyana', 'GY', 'GUY', '328', '592', 'f', 't'),
(105, 'haiti', 'HT', 'HTI', '332', '509', 't', 't'),
(106, 'honduras', 'HN', 'HND', '340', '504', 't', 't'),
(107, 'iceland', 'IS', 'ISL', '352', '354', 't', 't'),
(108, 'india', 'IN', 'IND', '356', '091', 't', 't'),
(109, 'indonesia', 'ID', 'IDN', '360', '062', 't', 't'),
(110, 'iran', 'IR', 'IRN', '364', '098', 't', 't'),
(111, 'iraq', 'IQ', 'IRQ', '368', '964', 't', 't'),
(112, 'ireland', 'IE', 'IRL', '372', '353', 'f', 't'),
(113, 'ivory-coast', 'CI', 'CIV', '384', '225', 't', 't'),
(114, 'jamaica', 'JM', 'JAM', '388', '876', 't', 't'),
(115, 'jordan', 'JO', 'JOR', '400', '962', 't', 't'),
(116, 'kazakhstan', 'KZ', 'KAZ', '398', '007', 't', 't'),
(117, 'kenya', 'KE', 'KEN', '404', '254', 't', 't'),
(118, 'kiribati', 'KI', 'KIR', '408', '686', 'f', 't'),
(119, 'kuwait', 'KW', 'KWT', '414', '965', 't', 't'),
(120, 'north-korea', 'KP', 'PRK', '408', '850', 'f', 't'),
(121, 'kyrgyzstan', 'KG', 'KGZ', '471', '996', 't', 't'),
(122, 'laos', 'LA', 'LAO', '418', '856', 't', 't'),
(123, 'latvia', 'LV', 'LVA', '428', '371', 't', 't'),
(124, 'lebanon', 'LB', 'LBN', '422', '961', 't', 't'),
(125, 'lesotho', 'LS', 'LSO', '426', '266', 't', 't'),
(126, 'liberia', 'LR', 'LBR', '430', '231', 't', 't'),
(127, 'libya', 'LY', 'LBY', '434', '218', 't', 't'),
(133, 'madagascar', 'MG', 'MDG', '450', '261', 't', 't'),
(134, 'malawi', 'MW', 'MWI', '454', '265', 'f', 't'),
(135, 'malaysia', 'MY', 'MYS', '458', '060', 't', 't'),
(136, 'maldives', 'MV', 'MDV', '462', '960', 't', 't'),
(137, 'mali', 'ML', 'MLI', '466', '223', 'f', 't'),
(138, 'malta', 'MT', 'MLT', '470', '356', 't', 't'),
(139, 'marshall-islands', 'MH', 'MHL', '584', '692', 't', 't'),
(140, 'martinique', 'MQ', 'MTQ', '474', '596', 't', 't'),
(141, 'mauritania', 'MR', 'MRT', '478', '222', 'f', 't'),
(142, 'mauritius', 'MU', 'MUS', '480', '230', 'f', 't'),
(143, 'mayotte-island', 'YT', 'MYT', '175', '269', 't', 't'),
(144, 'mexico', 'MX', 'MEX', '484', '052', 't', 't'),
(145, 'micronesia', 'FM', 'FSM', '583', '691', 't', 't'),
(146, 'moldova', 'MD', 'MDA', '498', '373', 't', 't'),
(147, 'monaco', 'MC', 'MCO', '492', '377', 't', 't'),
(148, 'mongolia', 'MN', 'MNG', '496', '976', 't', 't'),
(150, 'montserrat', 'MS', 'MSR', '500', '664', 'f', 't'),
(152, 'mozambique', 'MZ', 'MOZ', '508', '258', 't', 't'),
(153, 'namibia', 'NA', 'NAM', '516', '264', 't', 't'),
(154, 'nauru', 'NR', 'NRU', '520', '674', 'f', 't'),
(155, 'nepal', 'NP', 'NPL', '524', '977', 't', 't'),
(156, 'netherlands-antilles', 'AN', 'ANT', '530', '599', 't', 't'),
(163, 'norfolk-island', 'NF', 'NFK', '574', '672', 't', 't'),
(166, 'pakistan', 'PK', 'PAK', '586', '092', 't', 't'),
(167, 'palau', 'PW', 'PLW', '585', '680', 't', 't'),
(168, 'palestine', 'PS', 'PSE', '275', '970', 't', 't'),
(169, 'panama', 'PA', 'PAN', '591', '507', 't', 't'),
(170, 'papua-new-guinea', 'PG', 'PNG', '598', '675', 't', 't'),
(171, 'paraguay', 'PY', 'PRY', '600', '595', 't', 't'),
(172, 'peru', 'PE', 'PER', '604', '051', 't', 't'),
(173, 'philippines', 'PH', 'PHL', '608', '063', 't', 't'),
(174, 'poland', 'PL', 'POL', '616', '048', 't', 't'),
(175, 'puerto-rico', 'PR', 'PRI', '630', '787', 't', 't'),
(176, 'qatar', 'QA', 'QAT', '634', '974', 'f', 't'),
(177, 'reunion-island', 'RE', 'REU', '638', '262', 't', 't'),
(178, 'romania', 'RO', 'ROU', '642', '040', 't', 't'),
(180, 'st-helena', 'SH', 'SHN', '654', '290', 't', 't'),
(191, 'sierra-leone', 'SL', 'SLE', '694', '249', 'f', 't'),
(196, 'south-africa', 'ZA', 'ZAF', '710', '027', 't', 't'),
(197, 'sri-lanka', 'LK', 'LKA', '144', '094', 't', 't'),
(198, 'sudan', 'SD', 'SDN', '736', '095', 't', 't'),
(200, 'swaziland', 'SZ', 'SWZ', '748', '268', 't', 't'),
(201, 'sweden', 'SE', 'SWE', '752', '046', 't', 't'),
(202, 'switzerland', 'CH', 'CHE', '756', '041', 't', 't'),
(203, 'syria', 'SY', 'SYR', '760', '963', 'f', 't'),
(205, 'tajikistan', 'TJ', 'TJK', '762', '992', 't', 't'),
(207, 'thailand', 'TH', 'THA', '764', '066', 't', 't'),
(209, 'tonga', 'TO', 'TON', '776', '676', 'f', 't'),
(210, 'trinidad-tobago', 'TT', 'TTO', '780', '868', 'f', 't'),
(211, 'tunisia', 'TN', 'TUN', '788', '216', 't', 't'),
(223, 'wallis-futuna', 'WF', 'WLF', '876', '681', 't', 't'),
(224, 'western-samoa', 'WS', 'WSM', '882', '685', 't', 't'),
(225, 'yemen', 'YE', 'YEM', '887', '967', 'f', 't'),
(227, 'zimbabwe', 'ZW', 'ZWE', '716', '263', 'f', 't'),
(230, 'bouvet-island', 'BV', 'BVT', '74', '047', 't', 't'),
(232, 'curacao', 'CW', 'CUW', '531', '599', 't', 't'),
(234, 'guernsey', 'GG', 'GGY', '831', '044', 't', 't'),
(236, 'isle-of-man', 'IM', 'IMN', '833', '044', 't', 't'),
(237, 'jersey', 'JE', 'JEY', '832', '044', 't', 't'),
(238, 'northern-mariana-islands', 'MP', 'MNP', '580', '670', 't', 't'),
(239, 'pitcairn', 'PN', 'PCN', '612', '649', 't', 't'),
(240, 'south-georgia-south-sandwich-islands', 'GS', 'SGS', '239', '044', 't', 't'),
(241, 'south-sudan', 'SS', 'SSD', '728', '211', 't', 't'),
(243, 'st-barthelemy', 'BL', 'BLM', '652', '590', 't', 't'),
(246, 'timor-leste', 'TL', 'TLS', '626', '670', 't', 't'),
(247, 'united-states-minor-outlying-islands', 'UM', 'UMI', '581', '699', 't', 't'),
(248, 'united-states-virgin-islands', 'VI', 'VIR', '850', '340', 't', 't'),
(128, 'liechtenstein', 'LI', 'LIE', '438', '423', 't', 't'),
(129, 'lithuania', 'LT', 'LTU', '440', '370', 't', 't'),
(130, 'luxembourg', 'LU', 'LUX', '442', '352', 't', 't'),
(131, 'macau', 'MO', 'MAC', '446', '853', 'f', 't'),
(132, 'macedonia', 'MK', 'MKD', '807', '389', 't', 't'),
(149, 'montenegro', 'ME', 'MNE', '499', '382', 't', 't'),
(151, 'morocco', 'MA', 'MAR', '504', '212', 't', 't'),
(157, 'new-caledonia', 'NC', 'NCL', '540', '687', 't', 't'),
(158, 'new-zealand', 'NZ', 'NZL', '554', '064', 't', 't'),
(159, 'nicaragua', 'NI', 'NIC', '558', '505', 't', 't'),
(160, 'niger', 'NE', 'NER', '562', '227', 't', 't'),
(161, 'nigeria', 'NG', 'NGA', '566', '234', 't', 't'),
(162, 'niue', 'NU', 'NIU', '570', '683', 'f', 't'),
(164, 'norway', 'NO', 'NOR', '578', '047', 't', 't'),
(165, 'oman', 'OM', 'OMN', '512', '968', 't', 't'),
(179, 'rwanda', 'RW', 'RWA', '646', '250', 'f', 't'),
(181, 'st-kitts', 'KN', 'KNA', '659', '869', 'f', 't'),
(182, 'st-lucia', 'LC', 'LCA', '662', '758', 'f', 't'),
(183, 'st-pierre-miquelon', 'PM', 'SPM', '666', '508', 't', 't'),
(184, 'st-vincent', 'VC', 'VCT', '670', '784', 't', 't'),
(185, 'san-marino', 'SM', 'SMR', '674', '378', 't', 't'),
(186, 'sao-tome-principe', 'ST', 'STP', '678', '239', 'f', 't'),
(187, 'saudi-arabia', 'SA', 'SAU', '682', '966', 't', 't'),
(188, 'senegal', 'SN', 'SEN', '686', '221', 't', 't'),
(189, 'serbia', 'RS', 'SRB', '688', '381', 't', 't'),
(190, 'seychelles', 'SC', 'SYC', '690', '248', 'f', 't'),
(192, 'slovakia', 'SK', 'SVK', '703', '421', 't', 't'),
(193, 'slovenia', 'SI', 'SVN', '705', '386', 't', 't'),
(194, 'solomon-islands', 'SB', 'SLB', '90', '677', 'f', 't'),
(195, 'somalia', 'SO', 'SOM', '706', '252', 'f', 't'),
(199, 'suriname', 'SR', 'SUR', '740', '597', 'f', 't'),
(204, 'taiwan', 'TW', 'TWN', '158', '886', 't', 't'),
(206, 'tanzania', 'TZ', 'TZA', '834', '255', 'f', 't'),
(208, 'togo', 'TG', 'TGO', '768', '228', 't', 't'),
(212, 'turkmenistan', 'TM', 'TKM', '795', '993', 't', 't'),
(213, 'turks-caicos', 'TC', 'TCA', '796', '649', 't', 't'),
(214, 'tuvalu', 'TV', 'TUV', '798', '688', 'f', 't'),
(215, 'uganda', 'UG', 'UGA', '800', '256', 'f', 't'),
(216, 'ukraine', 'UA', 'UKR', '804', '380', 't', 't'),
(217, 'united-arab-emirates', 'AE', 'ARE', '784', '971', 'f', 't'),
(218, 'uruguay', 'UY', 'URY', '858', '598', 't', 't'),
(219, 'uzbekistan', 'UZ', 'UZB', '860', '998', 't', 't'),
(220, 'vanuatu', 'VU', 'VUT', '548', '678', 'f', 't'),
(221, 'vatican-city', 'VA', 'VAT', '336', '039', 't', 't'),
(222, 'venezuela', 'VE', 'VEN', '862', '058', 't', 't'),
(226, 'zambia', 'ZM', 'ZMB', '894', '260', 't', 't'),
(228, 'aland-islands', 'AX', 'ALA', '248', '359', 't', 't'),
(229, 'bonaire-st-eustatius-saba', 'BQ', 'BES', '535', '599', 't', 't'),
(231, 'british-indian-ocean-territory', 'IO', 'IOT', '86', '246', 't', 't'),
(233, 'french-southern-territories', 'TF', 'ATF', '260', '033', 'f', 't'),
(235, 'heard-island-mcdonald-islands', 'HM', 'HMD', '334', '061', 't', 't'),
(242, 'sint-maarten', 'SX', 'SXM', '534', '721', 't', 't'),
(244, 'st-martin', 'MF', 'MAF', '663', '590', 't', 't'),
(245, 'tokelau', 'TK', 'TKL', '772', '690', 'f', 't'),
(249, 'western-sahara', 'EH', 'ESH', '732', '212', 't', 't');















INSERT INTO "public"."ddmstructure" ("uuid_", "structureid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "parentstructureid", "classnameid", "structurekey", "name", "description", "xsd", "storagetype", "type_") VALUES
('e3a592fb-eb5d-49d0-aa38-8e0ce56ed757', 20303, 20194, 20154, 20158, '', '2021-05-30 13:04:27.177', '2021-05-30 13:04:27.177', 0, 20091, 'LEARNING MODULE METADATA', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Learning Module Metadata</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Learning Module Metadata</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select2235" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="home_edition" type="option" value="HE">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Home Edition]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="business_edition" type="option" value="BE">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Business Edition]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="enterprise_edition" type="option" value="EE">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Enterprise Edition]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Product]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select3212" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="1_0" type="option" value="1">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[1.0]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="2_0" type="option" value="2">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[2.0]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="3_0" type="option" value="3">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[3.0]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Version]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select4115" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="administration" type="option" value="admin">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Administration]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="installation" type="option" value="install">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Installation]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="configuration" type="option" value="config">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Configuration]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Topics]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select5069" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="beginner" type="option" value="beginner">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Beginner]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="intermediate" type="option" value="intermediate">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Intermediate]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="advanced" type="option" value="advanced">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Advanced]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Level]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 0);
INSERT INTO "public"."ddmstructure" ("uuid_", "structureid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "parentstructureid", "classnameid", "structurekey", "name", "description", "xsd", "storagetype", "type_") VALUES
('12e4c2e4-0219-4d4a-b273-9dcd2778369a', 20304, 20194, 20154, 20158, '', '2021-05-30 13:04:27.566', '2021-05-30 13:04:27.566', 0, 20091, 'MARKETING CAMPAIGN THEME METADATA', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Marketing Campaign Theme Metadata</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Marketing Campaign Theme Metadata</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select2305" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="strong_company" type="option" value="strong">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Strong Company]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="new_product_launch" type="option" value="product">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[New Product Launch]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="company_philosophy" type="option" value="philosophy">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Company Philosophy]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Select]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select3229" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="your_trusted_advisor" type="option" value="advisor">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Your Trusted Advisor]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="10_years_of_customer_solutions" type="option" value="solutions">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[10 Years of Customer Solutions]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="making_a_difference" type="option" value="difference">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Making a Difference]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Campaign Theme]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select4282" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="awareness" type="option" value="awareness">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Awareness]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="lead_generation" type="option" value="leads">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Lead Generation]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="customer_service" type="option" value="service">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Customer Service]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Business Goal]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 0);
INSERT INTO "public"."ddmstructure" ("uuid_", "structureid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "parentstructureid", "classnameid", "structurekey", "name", "description", "xsd", "storagetype", "type_") VALUES
('1fcd6c17-470d-4e04-a02b-a5f68d42019e', 20305, 20194, 20154, 20158, '', '2021-05-30 13:04:27.647', '2021-05-30 13:04:27.647', 0, 20091, 'MEETING METADATA', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Meeting Metadata</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Metadata for meeting</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="date" fieldNamespace="ddm" indexType="keyword" name="ddm-date3054" readOnly="false" required="false" showLabel="true" type="ddm-date" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Date]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" name="text2217" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Meeting Name]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" name="text4569" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Time]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" name="text5638" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Location]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="text" name="textarea6584" readOnly="false" required="false" showLabel="true" type="textarea" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Description]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="text" name="textarea7502" readOnly="false" required="false" showLabel="true" type="textarea" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Participants]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 0);
INSERT INTO "public"."ddmstructure" ("uuid_", "structureid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "parentstructureid", "classnameid", "structurekey", "name", "description", "xsd", "storagetype", "type_") VALUES
('29e0776c-f978-4f4e-a2a5-fccf330b037b', 20307, 20194, 20154, 20158, '', '2021-05-30 13:04:27.779', '2021-05-30 13:04:27.779', 0, 20091, 'AUTO_39CAED83-577C-408B-8371-F4915ECAECB3', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Contract</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Contract</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="date" fieldNamespace="ddm" indexType="keyword" name="ddm-date18949" readOnly="false" required="false" showLabel="true" type="ddm-date" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Effective Date]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="date" fieldNamespace="ddm" indexType="keyword" name="ddm-date20127" readOnly="false" required="false" showLabel="true" type="ddm-date" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Expiration Date]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select10264" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="nda" type="option" value="NDA">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[NDA]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="msa" type="option" value="MSA">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[MSA]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="license_agreement" type="option" value="License">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[License Agreement]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Contract Type]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select4893" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="draft" type="option" value="Draft">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Draft]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="in_review" type="option" value="Review">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[In Review]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="suspended" type="option" value="Suspended">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Suspended]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="signed" type="option" value="Signed">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Signed]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Status]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" name="text14822" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Legal Reviewer]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" name="text17700" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Signing Authority]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" name="text2087" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Deal Name]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 1),
('4c88b7ce-1a5c-40fd-8cec-3d1ed668883b', 20309, 20194, 20154, 20158, '', '2021-05-30 13:04:27.932', '2021-05-30 13:04:27.932', 0, 20091, 'AUTO_923844AB-D7FE-403F-A95C-D2FD0B3271FD', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Marketing Banner</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Marketing Banner</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="string" indexType="keyword" name="radio5547" readOnly="false" required="false" showLabel="true" type="radio">
		<dynamic-element name="yes" type="option" value="yes">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Yes]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="no" type="option" value="no">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[No]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Needs Legal Review]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" name="text2033" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Banner Name]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="text" name="textarea2873" readOnly="false" required="false" showLabel="true" type="textarea" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Description]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 1),
('ff5e1531-4339-483e-b347-2422edbd5177', 20311, 20194, 20154, 20158, '', '2021-05-30 13:04:28.067', '2021-05-30 13:04:28.067', 0, 20091, 'AUTO_3B5A12EA-1CA4-4929-8786-86A8FC4D94D0', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Online Training</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Online Training</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="string" indexType="keyword" name="text2082" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Lesson Title]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" name="text2979" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Author]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 1),
('c2ac3cca-3750-4c9f-8d36-e96d5ed022c2', 20313, 20194, 20154, 20158, '', '2021-05-30 13:04:28.196', '2021-05-30 13:04:28.196', 0, 20091, 'AUTO_7F361D77-47CC-49C8-BD24-BF70F9CB355E', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Sales Presentation</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Sales Presentation</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select2890" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="home_edition" type="option" value="HE">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Home Edition]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="business_edition" type="option" value="BE">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Business Edition]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="enterprise_edition" type="option" value="EE">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Enterprise Edition]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Product]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="false" name="select3864" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="1_0" type="option" value="1">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[1.0]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="2_0" type="option" value="2">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[2.0]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="3_0" type="option" value="3">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[3.0]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Version]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select4831" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="website" type="option" value="website">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Website]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="collaboration" type="option" value="collaboration">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Collaboration]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="intranet" type="option" value="intranet">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Intranet]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Areas of Interest]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" multiple="true" name="select5929" readOnly="false" required="false" showLabel="true" type="select">
		<dynamic-element name="acme" type="option" value="acme">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[ACME]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="sevencogs" type="option" value="sevencogs">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[SevenCogs]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="freeplus" type="option" value="freeplus">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[FreePlus]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Competitors]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" indexType="keyword" name="text1993" readOnly="false" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Prospect Name]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 1),
('7e9c23ec-35f6-4de9-9013-9423040d13ea', 20412, 20181, 20154, 20158, '', '2021-05-30 13:04:34.987', '2021-05-30 13:04:34.987', 0, 20098, 'CONTACTS', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Contacts</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Contacts</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="string" name="company" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Company]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="email" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Email]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="firstName" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[First Name]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" multiple="false" name="imService" required="false" showLabel="true" type="select">
		<dynamic-element name="aol" type="option" value="aol">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[AOL]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="yahoo" type="option" value="yahoo">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Yahoo]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="gtalk" type="option" value="gtalk">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[GTalk]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Instant Messenger Service]]></entry>
			<entry name="predefinedValue"><![CDATA[["gtalk"]]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="imUserName" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Instant Messenger]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="jobTitle" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Job Title]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="lastName" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Last Name]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="notes" required="false" showLabel="true" type="textarea" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Notes]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="phoneMobile" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Phone (Mobile)]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="phoneOffice" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Phone (Office)]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 0),
('a67eefae-bb43-4f11-98b1-9875a4c62322', 20413, 20181, 20154, 20158, '', '2021-05-30 13:04:35.113', '2021-05-30 13:04:35.113', 0, 20098, 'EVENTS', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Events</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Events</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="document-library" fieldNamespace="ddm" name="attachment" required="false" showLabel="true" type="ddm-documentlibrary">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Attachment]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[Upload documents no larger than 3,000k.]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="double" fieldNamespace="ddm" name="cost" required="false" showLabel="true" type="ddm-number" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Cost]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Description]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="date" fieldNamespace="ddm" name="eventDate" required="false" showLabel="true" type="ddm-date" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Date]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="eventName" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Event Name]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="eventTime" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Time]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="location" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Location]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 0),
('743bdb67-381b-4b72-8f71-9a4addea1303', 20414, 20181, 20154, 20158, '', '2021-05-30 13:04:35.241', '2021-05-30 13:04:35.241', 0, 20098, 'INVENTORY', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Inventory</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Inventory</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Description]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="style"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="item" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Item]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="style"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="location" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Location]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="style"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="date" fieldNamespace="ddm" name="purchaseDate" required="false" showLabel="true" type="ddm-date" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Purchase Date]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="style"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="double" fieldNamespace="ddm" name="purchasePrice" required="false" showLabel="true" type="ddm-number" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Purchase Price]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="double" fieldNamespace="ddm" name="quantity" required="false" showLabel="true" type="ddm-number" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Quantity]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 0),
('dff81d98-575e-4bb0-99fa-91abf1400636', 20415, 20181, 20154, 20158, '', '2021-05-30 13:04:35.346', '2021-05-30 13:04:35.346', 0, 20098, 'ISSUES TRACKING', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Issues Tracking</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Issue Tracking</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="string" name="assignedTo" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Assigned To]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="document-library" fieldNamespace="ddm" name="attachment" required="false" showLabel="true" type="ddm-documentlibrary">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Attachment]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[Upload documents no larger than 3,000k.]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="comments" required="false" showLabel="true" type="textarea" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Comments]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Description]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="date" fieldNamespace="ddm" name="dueDate" required="false" showLabel="true" type="ddm-date">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Due Date]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="issueId" required="false" showLabel="true" type="text" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Issue ID]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" multiple="false" name="severity" required="false" showLabel="true" type="select">
		<dynamic-element name="critical" type="option" value="critical">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Critical]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="major" type="option" value="major">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Major]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="minor" type="option" value="minor">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Minor]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="trivial" type="option" value="trivial">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Trivial]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Severity]]></entry>
			<entry name="predefinedValue"><![CDATA[["minor"]]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" multiple="false" name="status" required="false" showLabel="true" type="select">
		<dynamic-element name="open" type="option" value="open">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Open]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="pending" type="option" value="pending">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Pending]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="completed" type="option" value="completed">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Completed]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Status]]></entry>
			<entry name="predefinedValue"><![CDATA[["open"]]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="title" required="false" showLabel="true" type="text" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Title]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 0),
('76bcfeea-8e20-4176-a779-678ef5676d03', 20416, 20181, 20154, 20158, '', '2021-05-30 13:04:35.465', '2021-05-30 13:04:35.465', 0, 20098, 'MEETING MINUTES', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Meeting Minutes</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Meeting Minutes</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="document-library" fieldNamespace="ddm" name="attachment" required="false" showLabel="true" type="ddm-documentlibrary">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Attachment]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[Upload documents no larger than 3,000k.]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="author" required="false" showLabel="true" type="text">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Author]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Description]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="duration" required="false" showLabel="true" type="text">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Meeting Duration]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="date" fieldNamespace="ddm" name="meetingDate" required="false" showLabel="true" type="ddm-date">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Meeting Date]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="minutes" required="false" showLabel="true" type="textarea" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Minutes]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="title" required="false" showLabel="true" type="text" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Title]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 0),
('eec20208-e3da-496e-a969-41232d043bc3', 20315, 20194, 20154, 20158, '', '2021-05-30 13:04:28.409', '2021-05-30 13:04:28.409', 0, 20314, 'TIKARAWMETADATA', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">TIKARAWMETADATA</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">TIKARAWMETADATA</Description></root>', '<root available-locales="en_US" default-locale="en_US"><dynamic-element dataType="string" name="ClimateForcast_PROGRAM_ID" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_COMMAND_LINE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_HISTORY" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_TABLE_ID" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_INSTITUTION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_SOURCE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_CONTACT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_PROJECT_ID" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_CONVENTIONS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_REFERENCES" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_ACKNOWLEDGEMENT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_REALIZATION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_EXPERIMENT_ID" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_COMMENT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="ClimateForcast_MODEL_NAME_ENGLISH" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="CreativeCommons_LICENSE_URL" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="CreativeCommons_LICENSE_LOCATION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="CreativeCommons_WORK_TYPE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_NAMESPACE_URI_DC" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_NAMESPACE_URI_DC_TERMS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_PREFIX_DC" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_PREFIX_DC_TERMS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_FORMAT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_IDENTIFIER" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_MODIFIED" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_CONTRIBUTOR" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_COVERAGE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_CREATOR" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_CREATED" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.CREATED]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_DATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_DESCRIPTION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_LANGUAGE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_PUBLISHER" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_RELATION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_RIGHTS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_SOURCE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_SUBJECT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_TITLE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="DublinCore_TYPE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="Geographic_LATITUDE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="Geographic_LONGITUDE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="Geographic_ALTITUDE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="HttpHeaders_CONTENT_ENCODING" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="HttpHeaders_CONTENT_LANGUAGE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="HttpHeaders_CONTENT_LENGTH" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="HttpHeaders_CONTENT_LOCATION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="HttpHeaders_CONTENT_DISPOSITION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="HttpHeaders_CONTENT_MD5" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="HttpHeaders_CONTENT_TYPE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="HttpHeaders_LAST_MODIFIED" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="HttpHeaders_LOCATION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="Message_MESSAGE_RECIPIENT_ADDRESS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="Message_MESSAGE_FROM" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="Message_MESSAGE_TO" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="Message_MESSAGE_CC" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="Message_MESSAGE_BCC" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_KEYWORDS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_COMMENTS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_LAST_AUTHOR" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_AUTHOR" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_APPLICATION_NAME" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_REVISION_NUMBER" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_TEMPLATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_TOTAL_TIME" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_PRESENTATION_FORMAT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_NOTES" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_MANAGER" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_APPLICATION_VERSION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_VERSION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_CONTENT_STATUS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_CATEGORY" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_COMPANY" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_SECURITY" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_SLIDE_COUNT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_PAGE_COUNT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_PARAGRAPH_COUNT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_LINE_COUNT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_WORD_COUNT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_CHARACTER_COUNT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_CHARACTER_COUNT_WITH_SPACES" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_TABLE_COUNT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_IMAGE_COUNT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_OBJECT_COUNT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_EDIT_TIME" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_CREATION_DATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_LAST_SAVED" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_LAST_PRINTED" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="MSOffice_USER_DEFINED_METADATA_NAME_PREFIX" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_BITS_PER_SAMPLE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_IMAGE_LENGTH" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_IMAGE_WIDTH" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_SAMPLES_PER_PIXEL" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_FLASH_FIRED" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_EXPOSURE_TIME" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_F_NUMBER" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_FOCAL_LENGTH" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_ISO_SPEED_RATINGS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_EQUIPMENT_MAKE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_EQUIPMENT_MODEL" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_SOFTWARE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_ORIENTATION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_RESOLUTION_HORIZONTAL" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_RESOLUTION_VERTICAL" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_RESOLUTION_UNIT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TIFF_ORIGINAL_DATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TikaMetadataKeys_RESOURCE_NAME_KEY" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TikaMetadataKeys_PROTECTED" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TikaMimeKeys_TIKA_MIME_FILE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="TikaMimeKeys_MIME_TYPE_MAGIC" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_DURATION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_ABS_PEAK_AUDIO_FILE_PATH" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_ALBUM" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_ALT_TAPE_NAME" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_ARTIST" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_AUDIO_MOD_DATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_AUDIO_SAMPLE_RATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_AUDIO_SAMPLE_TYPE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_AUDIO_CHANNEL_TYPE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_AUDIO_COMPRESSOR" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_COMPOSER" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_COPYRIGHT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_ENGINEER" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_FILE_DATA_RATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_GENRE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_INSTRUMENT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_KEY" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_LOG_COMMENT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_LOOP" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_NUMBER_OF_BEATS" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_METADATA_MOD_DATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_PULL_DOWN" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_RELEASE_DATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_SCALE_TYPE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_SCENE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_SHOT_DATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_SHOT_LOCATION" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_SHOT_NAME" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_SPEAKER_PLACEMENT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_STRETCH_MODE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_TAPE_NAME" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_TEMPO" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_TIME_SIGNATURE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_TRACK_NUMBER" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_VIDEO_ALPHA_MODE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_VIDEO_COLOR_SPACE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_VIDEO_COMPRESSOR" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_VIDEO_FIELD_ORDER" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_VIDEO_FRAME_RATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_VIDEO_MOD_DATE" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_VIDEO_PIXEL_DEPTH" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element><dynamic-element dataType="string" name="XMPDM_VIDEO_PIXEL_ASPECT_RATIO" required="false" showLabel="true" type="text"><meta-data locale="en_US"><entry name="label"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name="predefinedValue"><![CDATA[]]></entry></meta-data></dynamic-element></root>', 'xml', 0);
INSERT INTO "public"."ddmstructure" ("uuid_", "structureid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "parentstructureid", "classnameid", "structurekey", "name", "description", "xsd", "storagetype", "type_") VALUES
('58ec0c15-8013-4416-9701-a7d433a33fc3', 20417, 20181, 20154, 20158, '', '2021-05-30 13:04:35.593', '2021-05-30 13:04:35.593', 0, 20098, 'TO DO', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">To Do</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">To Do</Description></root>', '<?xml version="1.0"?>

<root available-locales="en_US" default-locale="en_US">
	<dynamic-element dataType="string" name="assignedTo" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Assigned To]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="document-library" fieldNamespace="ddm" name="attachment" required="false" showLabel="true" type="ddm-documentlibrary">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Attachment]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
			<entry name="tip"><![CDATA[Upload documents no larger than 3,000k.]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="comments" required="false" showLabel="true" type="textarea" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Comments]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="description" required="false" showLabel="true" type="textarea" width="100">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Description]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="date" fieldNamespace="ddm" name="endDate" required="false" showLabel="true" type="ddm-date">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[End Date]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="integer" fieldNamespace="ddm" name="percentComplete" required="false" showLabel="true" type="ddm-integer" width="25">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[% Complete]]></entry>
			<entry name="predefinedValue"><![CDATA[0]]></entry>
			<entry name="tip"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" multiple="false" name="severity" required="false" showLabel="true" type="select">
		<dynamic-element name="critical" type="option" value="critical">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Critical]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="major" type="option" value="major">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Major]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="minor" type="option" value="minor">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Minor]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="trivial" type="option" value="trivial">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Trivial]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Severity]]></entry>
			<entry name="predefinedValue"><![CDATA[["minor"]]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="date" fieldNamespace="ddm" name="startDate" required="false" showLabel="true" type="ddm-date">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Start Date]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" multiple="false" name="status" required="false" showLabel="true" type="select">
		<dynamic-element name="open" type="option" value="open">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Open]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="pending" type="option" value="pending">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Pending]]></entry>
			</meta-data>
		</dynamic-element>
		<dynamic-element name="completed" type="option" value="completed">
			<meta-data locale="en_US">
				<entry name="label"><![CDATA[Completed]]></entry>
			</meta-data>
		</dynamic-element>
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Status]]></entry>
			<entry name="predefinedValue"><![CDATA[["open"]]]></entry>
		</meta-data>
	</dynamic-element>
	<dynamic-element dataType="string" name="title" required="false" showLabel="true" type="text" width="50">
		<meta-data locale="en_US">
			<entry name="label"><![CDATA[Title]]></entry>
			<entry name="predefinedValue"><![CDATA[]]></entry>
		</meta-data>
	</dynamic-element>
</root>', 'xml', 0);



INSERT INTO "public"."ddmtemplate" ("uuid_", "templateid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "templatekey", "name", "description", "type_", "mode_", "language", "script", "cacheable", "smallimage", "smallimageid", "smallimageurl") VALUES
('0903315f-ffcf-4430-874a-ba6da13f1585', 20418, 20194, 20154, 20158, '', '2021-05-30 13:04:35.765', '2021-05-30 13:04:35.765', 20007, 0, 'BLOGS-BASIC-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Basic</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays titles, authors, and abstracts compactly for blog entries.</Description></root>', 'display', '', 'ftl', '<#assign liferay_ui = taglibLiferayHash["/WEB-INF/tld/liferay-ui.tld"] />

<#list entries as entry>
	<div class="entry">
		<#assign viewURL = renderResponse.createRenderURL() />

		${viewURL.setParameter("struts_action", "/blogs/view_entry")}
		${viewURL.setParameter("redirect", currentURL)}
		${viewURL.setParameter("urlTitle", entry.getUrlTitle())}

		<div class="entry-content">
			<div class="entry-title">
				<h2><a href="${viewURL}">${htmlUtil.escape(entry.getTitle())}</a></h2>
			</div>
		</div>

		<div class="entry-body">
			<div class="entry-author">
				<@liferay.language key="written-by" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}
			</div>

			<#assign summary = entry.getDescription() />

			<#if (validator.isNull(summary))>
				<#assign summary = entry.getContent() />
			</#if>

			${stringUtil.shorten(htmlUtil.stripHtml(summary), 100)}

			<a href="${viewURL}"><@liferay.language key="read-more" /> <span class="hide-accessible"><@liferay.language key="about"/>${htmlUtil.escape(entry.getTitle())}</span> &raquo;</a>
		</div>

		<div class="entry-footer">
			<span class="entry-date">
				${dateUtil.getDate(entry.getCreateDate(), "dd MMM yyyy - HH:mm:ss", locale)}
			</span>

			<#assign blogsEntryClassName = "com.liferay.portlet.blogs.model.BlogsEntry" />

			<#if (enableFlags == "true")>
				<@liferay_ui["flags"]
					className=blogsEntryClassName
					classPK=entry.getEntryId()
					contentTitle=entry.getTitle()
					reportedUserId=entry.getUserId()
				/>
			</#if>

			<span class="entry-categories">
				<@liferay_ui["asset-categories-summary"]
					className=blogsEntryClassName
					classPK=entry.getEntryId()
					portletURL=renderResponse.createRenderURL()
				/>
			</span>

			<span class="entry-tags">
				<@liferay_ui["asset-tags-summary"]
					className=blogsEntryClassName
					classPK=entry.getEntryId()
					portletURL=renderResponse.createRenderURL()
				/>
			</span>
		</div>
	</div>

	<div class="separator"><!-- --></div>
</#list>', 'f', 'f', 20419, '');
INSERT INTO "public"."ddmtemplate" ("uuid_", "templateid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "templatekey", "name", "description", "type_", "mode_", "language", "script", "cacheable", "smallimage", "smallimageid", "smallimageurl") VALUES
('3030b8a0-c9a8-4950-b345-c8dc0480899f', 20420, 20194, 20154, 20158, '', '2021-05-30 13:04:35.888', '2021-05-30 13:04:35.888', 20083, 0, 'ASSET-PUBLISHER-RICH-SUMMARY-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Rich Summary</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays abstracts, icons, related assets, and print/edit actions for assets. Optionally include asset bookmarks and ratings.</Description></root>', 'display', '', 'ftl', '<#assign liferay_ui = taglibLiferayHash["/WEB-INF/tld/liferay-ui.tld"] />

<#list entries as entry>
	<#assign entry = entry />

	<#assign assetRenderer = entry.getAssetRenderer() />

	<#assign entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale)) />

	<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />

	<#if assetLinkBehavior != "showFullContent">
		<#assign viewURL = assetPublisherHelperImpl.getAssetViewURL(renderRequest, renderResponse, entry, true) />
	</#if>

	<div class="asset-abstract">
		<div class="lfr-meta-actions asset-actions">
			<@getPrintIcon />

			<@getFlagsIcon />

			<@getEditIcon />
		</div>

		<h3 class="asset-title">
			<a href="${viewURL}"><img alt="" src="${assetRenderer.getIconPath(renderRequest)}" />${entryTitle}</a>
		</h3>

		<@getMetadataField fieldName="tags" />

		<@getMetadataField fieldName="create-date" />

		<@getMetadataField fieldName="view-count" />

		<div class="asset-content">
			<@getSocialBookmarks />

			<div class="asset-summary">
				<@getMetadataField fieldName="author" />

				${htmlUtil.escape(assetRenderer.getSummary(locale))}

				<a href="${viewURL}"><@liferay.language key="read-more" /><span class="hide-accessible"><@liferay.language key="about" />${entryTitle}</span> &raquo;</a>
			</div>

			<@getRatings />

			<@getRelatedAssets />

			<@getDiscussion />
		</div>
	</div>

</#list>

<#macro getDiscussion>
	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == "true")>
		<br />

		<#assign discussionURL = renderResponse.createActionURL() />

		${discussionURL.setParameter("struts_action", "/asset_publisher/" + assetRenderer.getDiscussionPath())}

		<@liferay_ui["discussion"]
			className=entry.getClassName()
			classPK=entry.getClassPK()
			formAction=discussionURL?string
			formName="fm" + entry.getClassPK()
			ratingsEnabled=enableCommentRatings == "true"
			redirect=portalUtil.getCurrentURL(request)
			userId=assetRenderer.getUserId()
		/>
	</#if>
</#macro>

<#macro getEditIcon>
	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>
		<#assign redirectURL = renderResponse.createRenderURL() />

		${redirectURL.setParameter("struts_action", "/asset_publisher/add_asset_redirect")}
		${redirectURL.setWindowState("pop_up")}

		<#assign editPortletURL = assetRenderer.getURLEdit(renderRequest, renderResponse, windowStateFactory.getWindowState("pop_up"), redirectURL)!"" />

		<#if validator.isNotNull(editPortletURL)>
			<#assign title = languageUtil.format(locale, "edit-x", entryTitle) />

			<@liferay_ui["icon"]
				image="edit"
				message=title
				url="javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:''" + renderResponse.getNamespace() + "editAsset'', title: ''" + title + "'', uri:''" + htmlUtil.escapeURL(editPortletURL.toString()) + "''});"
			/>
		</#if>
	</#if>
</#macro>

<#macro getFlagsIcon>
	<#if enableFlags == "true">
		<@liferay_ui["flags"]
			className=entry.getClassName()
			classPK=entry.getClassPK()
			contentTitle=entry.getTitle(locale)
			label=false
			reportedUserId=entry.getUserId()
		/>
	</#if>
</#macro>

<#macro getMetadataField
	fieldName
>
	<#if stringUtil.split(metadataFields)?seq_contains(fieldName)>
		<span class="metadata-entry metadata-"${fieldName}">
			<#assign dateFormat = "dd MMM yyyy - HH:mm:ss" />

			<#if fieldName == "author">
				<@liferay.language key="by" /> ${portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName())}
			<#elseif fieldName == "categories">
				<@liferay_ui["asset-categories-summary"]
					className=entry.getClassName()
					classPK=entry.getClassPK()
					portletURL=renderResponse.createRenderURL()
				/>
			<#elseif fieldName == "create-date">
				${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}
			<#elseif fieldName == "expiration-date">
				${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}
			<#elseif fieldName == "modified-date">
				${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}
			<#elseif fieldName == "priority">
				${entry.getPriority()}
			<#elseif fieldName == "publish-date">
				${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}
			<#elseif fieldName == "tags">
				<@liferay_ui["asset-tags-summary"]
					className=entry.getClassName()
					classPK=entry.getClassPK()
					portletURL=renderResponse.createRenderURL()
				/>
			<#elseif fieldName == "view-count">
				<@liferay_ui["icon"]
					image="history"
				/>

				${entry.getViewCount()} <@liferay.language key="views" />
			</#if>
		</span>
	</#if>
</#macro>

<#macro getPrintIcon>
	<#if enablePrint == "true" >
		<#assign printURL = renderResponse.createRenderURL() />

		${printURL.setParameter("struts_action", "/asset_publisher/view_content")}
		${printURL.setParameter("assetEntryId", entry.getEntryId()?string)}
		${printURL.setParameter("viewMode", "print")}
		${printURL.setParameter("type", entry.getAssetRendererFactory().getType())}

		<#if (validator.isNotNull(assetRenderer.getUrlTitle()))>
			<#if (assetRenderer.getGroupId() != themeDisplay.getScopeGroupId())>
				${printURL.setParameter("groupId", assetRenderer.getGroupId()?string)}
			</#if>

			${printURL.setParameter("urlTitle", assetRenderer.getUrlTitle())}
		</#if>

		${printURL.setWindowState("pop_up")}

		<@liferay_ui["icon"]
			image="print"
			message="print"
			url="javascript:Liferay.Util.openWindow({id:''" + renderResponse.getNamespace() + "printAsset'', title: ''" + languageUtil.format(locale, "print-x-x", ["hide-accessible", entryTitle]) + "'', uri: ''" + htmlUtil.escapeURL(printURL.toString()) + "''});"
		/>
	</#if>
</#macro>

<#macro getRatings>
	<#if (enableRatings == "true")>
		<div class="asset-ratings">
			<@liferay_ui["ratings"]
				className=entry.getClassName()
				classPK=entry.getClassPK()
			/>
		</div>
	</#if>
</#macro>

<#macro getRelatedAssets>
	<#if enableRelatedAssets == "true">
		<@liferay_ui["asset-links"]
			assetEntryId=entry.getEntryId()
		/>
	</#if>
</#macro>

<#macro getSocialBookmarks>
	<#if enableSocialBookmarks == "true">
		<@liferay_ui["social-bookmarks"]
			displayStyle="${socialBookmarksDisplayStyle}"
			target="_blank"
			title=entry.getTitle(locale)
			url=viewURL
		/>
	</#if>
</#macro>', 'f', 'f', 20421, '');
INSERT INTO "public"."ddmtemplate" ("uuid_", "templateid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "templatekey", "name", "description", "type_", "mode_", "language", "script", "cacheable", "smallimage", "smallimageid", "smallimageurl") VALUES
('c1698631-63cb-44b8-86ba-6dc5cd04a56a', 20422, 20194, 20154, 20158, '', '2021-05-30 13:04:35.973', '2021-05-30 13:04:35.973', 20034, 0, 'SITE-MAP-MULTI-COLUMN-LAYOUT-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Multi Column Layout</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays a column for each top level page. Each column includes the name of a top level page with the page''s immediate children listed underneath.</Description></root>', 'display', '', 'ftl', '<#assign aui = taglibLiferayHash["/WEB-INF/tld/aui.tld"] />

<#if entries?has_content>
	<@aui.layout>
		<#list entries as entry>
		    <@aui.column columnWidth=25>
				<div class="results-header">
					<h3>
						<#assign layoutURL = portalUtil.getLayoutURL(entry, themeDisplay)>

						<a href="${layoutURL}">${entry.getName(locale)}</a>
					</h3>
				</div>

				<#assign pages = entry.getChildren()>

				<@displayPages pages = pages />
		    </@aui.column>
		</#list>
	</@aui.layout>
</#if>

<#macro displayPages
	pages
>
	<#if pages?has_content>
		<ul class="child-pages">
			<#list pages as page>
				<li>
					<#assign pageLayoutURL = portalUtil.getLayoutURL(page, themeDisplay)>

					<a href="${pageLayoutURL}">${page.getName(locale)}</a>

					<#assign childPages = page.getChildren()>

					<@displayPages pages = childPages />
				</li>
			</#list>
		</ul>
	</#if>
</#macro>', 'f', 'f', 20423, '');
INSERT INTO "public"."ddmtemplate" ("uuid_", "templateid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "templatekey", "name", "description", "type_", "mode_", "language", "script", "cacheable", "smallimage", "smallimageid", "smallimageurl") VALUES
('4cd10f67-4fdf-4e24-a5b7-eaab88f6ebf6', 20425, 20194, 20154, 20158, '', '2021-05-30 13:04:36.11', '2021-05-30 13:04:36.11', 20424, 0, 'DOCUMENTLIBRARY-CAROUSEL-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Carousel</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays images in a carousel.</Description></root>', 'display', '', 'ftl', '<#assign aui = taglibLiferayHash["/WEB-INF/tld/aui.tld"] />
<#assign liferay_portlet = taglibLiferayHash["/WEB-INF/tld/liferay-portlet.tld"] />

<#if entries?has_content>
	<style>
		#<@liferay_portlet.namespace />carousel .carousel-item {
			background-color: #000;
			height: 250px;
			overflow: hidden;
			text-align: center;
			width: 700px;
		}

		#<@liferay_portlet.namespace />carousel .carousel-item img {
			max-height: 250px;
			max-width: 700px;
		}
	</style>

	<div id="<@liferay_portlet.namespace />carousel">
		<#assign imageMimeTypes = propsUtil.getArray("dl.file.entry.preview.image.mime.types") />

		<#list entries as entry>
			<#if imageMimeTypes?seq_contains(entry.getMimeType()) >
				<div class="carousel-item">
					<img src="${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, "")}" />
				</div>
			</#if>
		</#list>
	</div>

	<@aui.script use="aui-carousel">
		new A.Carousel(
			{
				contentBox: ''#<@liferay_portlet.namespace />carousel'',
				height: 250,
				intervalTime: 2,
				width: 700
			}
		).render();
	</@aui.script>
</#if>', 'f', 'f', 20426, ''),
('5f17bcf4-8c51-4edb-8e75-781eb7f09cd8', 20427, 20194, 20154, 20158, '', '2021-05-30 13:04:36.267', '2021-05-30 13:04:36.267', 20016, 0, 'WIKI-SOCIAL-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Social</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays social bookmarks and ratings for wiki pages and their child pages.</Description></root>', 'display', '', 'ftl', '<#assign liferay_ui = taglibLiferayHash["/WEB-INF/tld/liferay-ui.tld"] />

<#assign wikiPageClassName = "com.liferay.portlet.wiki.model.WikiPage" />

<#assign assetRenderer = assetEntry.getAssetRenderer() />

<div class="taglib-header">
	<h1 class="header-title">${entry.getTitle()}</h1>
</div>

<div style="float: right;">
	<@getEditIcon />

	<@getPageDetailsIcon />

	<@getPrintIcon />
</div>

<div class="wiki-body">
	<div class="wiki-info">
		<span class="stats">${assetEntry.getViewCount()} <@liferay.language key="views" /></span> |

		<span class="date"><@liferay.language key="last-modified" /> ${dateUtil.getDate(entry.getModifiedDate(), "dd MMM yyyy - HH:mm:ss", locale)}</span>

		<span class="author"><@liferay.language key="by" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}</span>
	</div>

	<div class="wiki-content">
		<@liferay_ui["social-bookmarks"]
			displayStyle="normal"
			target="_blank"
			title=entry.getTitle()
			url=viewURL
		/>

		${formattedContent}
	</div>

	<div class="page-actions">
		<div class="article-actions">
			<@getAddChildPageIcon />

			<@getAttatchmentsIcon />
		</div>
	</div>

	 <br />

	<@getRatings cssClass="page-ratings" entry=entry />

	<@getRelatedAssets />
</div>

<div class="page-categorization">
	<div class="page-categories">
		<#assign viewCategorizedPagesURL = renderResponse.createRenderURL() />

		${viewCategorizedPagesURL.setParameter("struts_action", "/wiki/view_categorized_pages")}
		${viewCategorizedPagesURL.setParameter("nodeId", entry.getNodeId()?string)}

		<@liferay_ui["asset-categories-summary"]
			className=wikiPageClassName
			classPK=entry.getResourcePrimKey()
			portletURL=viewCategorizedPagesURL
		/>
	</div>

	<div class="page-tags">
		<#assign viewTaggedPagesURL = renderResponse.createRenderURL() />

		${viewTaggedPagesURL.setParameter("struts_action", "/wiki/view_tagged_pages")}
		${viewTaggedPagesURL.setParameter("nodeId", entry.getNodeId()?string)}

		<@liferay_ui["asset-tags-summary"]
			className=wikiPageClassName
			classPK=entry.getResourcePrimKey()
			portletURL=viewTaggedPagesURL
		/>
	</div>
</div>

<#assign childPages = entry.getChildPages() />

<#if (childPages?has_content)>
	<div class="child-pages">
		<h2><@liferay.language key="children-pages" /></h2>

		<table class="taglib-search-iterator">
			<tr class="portlet-section-header results-header">
				<th>
					<@liferay.language key="page" />
				</th>
				<th>
					<@liferay.language key="last-modified" />
				</th>
				<th>
					<@liferay.language key="ratings" />
				</th>
			</tr>

			<#list childPages as childPage>
				<tr class="results-row">
					<#assign viewPageURL = renderResponse.createRenderURL() />

					${viewPageURL.setParameter("struts_action", "/wiki/view")}

					<#assign childNode = childPage.getNode() />

					${viewPageURL.setParameter("nodeName", childNode.getName())}
					${viewPageURL.setParameter("title", childPage.getTitle())}

					<td>
						<a href="${viewPageURL}">${childPage.getTitle()}</a>
					</td>
					<td>
						<a href="${viewPageURL}">${dateUtil.getDate(childPage.getModifiedDate(),"dd MMM yyyy - HH:mm:ss", locale)} <@liferay.language key="by" /> ${htmlUtil.escape(portalUtil.getUserName(childPage.getUserId(), childPage.getUserName()))}</a>
					</td>
					<td>
						<@getRatings cssClass="child-ratings" entry=childPage />
					</td>
				</tr>
			</#list>
		</table>
	</div>
</#if>

<@getDiscussion />

<#macro getAddChildPageIcon>
	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>
		<#assign addPageURL = renderResponse.createRenderURL() />

		${addPageURL.setParameter("struts_action", "/wiki/edit_page")}
		${addPageURL.setParameter("redirect", currentURL)}
		${addPageURL.setParameter("nodeId", entry.getNodeId()?string)}
		${addPageURL.setParameter("title", "")}
		${addPageURL.setParameter("editTitle", "1")}
		${addPageURL.setParameter("parentTitle", entry.getTitle())}

		<@liferay_ui["icon"]
			image="add_article"
			label=true
			message="add-child-page"
			url=addPageURL?string
		/>
	</#if>
</#macro>

<#macro getAttatchmentsIcon>
	<#assign viewPageAttachmentsURL = renderResponse.createRenderURL() />

	${viewPageAttachmentsURL.setParameter("struts_action", "/wiki/view_page_attachments") }

	<@liferay_ui["icon"]
		image="clip"
		label=true
		message=''${entry.getAttachmentsFileEntriesCount() + languageUtil.get(locale, "attachments")}''
		url=viewPageAttachmentsURL?string
	/>
</#macro>

<#macro getDiscussion>
	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == "true")>
		<br />

		<#assign discussionURL = renderResponse.createActionURL() />

		${discussionURL.setParameter("struts_action", "/wiki/" + assetRenderer.getDiscussionPath())}

		<@liferay_ui["discussion"]
			className=wikiPageClassName
			classPK=entry.getResourcePrimKey()
			formAction=discussionURL?string
			formName="fm2"
			ratingsEnabled=enableCommentRatings == "true"
			redirect=currentURL
			subject=assetRenderer.getTitle(locale)
			userId=assetRenderer.getUserId()
		/>
	</#if>
</#macro>

<#macro getEditIcon>
	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>
		<#assign editPageURL = renderResponse.createRenderURL() />

		${editPageURL.setParameter("struts_action", "/wiki/edit_page")}
		${editPageURL.setParameter("redirect", currentURL)}
		${editPageURL.setParameter("nodeId", entry.getNodeId()?string)}
		${editPageURL.setParameter("title", entry.getTitle())}

		<@liferay_ui["icon"]
			image="edit"
			message=entry.getTitle()
			url=editPageURL?string
		/>
	</#if>
</#macro>

<#macro getPageDetailsIcon>
	<#assign viewPageDetailsURL = renderResponse.createRenderURL() />

	${viewPageDetailsURL.setParameter("struts_action", "/wiki/view_page_details")}
	${viewPageDetailsURL.setParameter("redirect", currentURL)}

	<@liferay_ui["icon"]
		image="history"
		message="details"
		url=viewPageDetailsURL?string
	/>
</#macro>

<#macro getPrintIcon>
	<#assign printURL = renderResponse.createRenderURL() />

	${printURL.setParameter("viewMode", "print")}
	${printURL.setWindowState("pop_up")}

	<#assign title = languageUtil.format(locale, "print-x-x", ["hide-accessible", htmlUtil.escape(assetRenderer.getTitle(locale))]) />
	<#assign taglibPrintURL = "javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:''" + renderResponse.getNamespace() + "printAsset'', title: ''" + title + "'', uri: ''" + htmlUtil.escapeURL(printURL.toString()) + "''});" />

	<@liferay_ui["icon"]
		image="print"
		message="print"
		url=taglibPrintURL
	/>
</#macro>

<#macro getRatings
	cssClass
	entry
>
	<#if enablePageRatings == "true">
		<div class="${cssClass}">
			<@liferay_ui["ratings"]
				className=wikiPageClassName
				classPK=entry.getResourcePrimKey()
			/>
		</div>
	</#if>
</#macro>

<#macro getRelatedAssets>
	<#if assetEntry?? && (enableRelatedAssets == "true")>
		<@liferay_ui["asset-links"]
			assetEntryId=assetEntry.getEntryId()
		/>
	</#if>
</#macro>', 'f', 'f', 20428, ''),
('3c6d0699-95fb-4dd9-bd44-0507e84ff864', 20429, 20194, 20154, 20158, '', '2021-05-30 13:04:36.34', '2021-05-30 13:04:36.34', 20085, 0, 'ASSET-TAGS-NAVIGATION-COLOR-BY-POPULARITY-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Color by Popularity</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays asset tags colored by popularity: red (high), yellow (medium), and green (low).</Description></root>', 'display', '', 'ftl', '<#if entries?has_content>
	<ul class="tag-items tag-list">
		<#assign scopeGroupId = getterUtil.getLong(scopeGroupId, themeDisplay.getScopeGroupId()) />
		<#assign classNameId = getterUtil.getLong(classNameId, 0) />

		<#assign maxCount = 1 />
		<#assign minCount = 1 />

		<#list entries as entry>
			<#assign maxCount = liferay.max(maxCount, entry.getAssetCount()) />
			<#assign minCount = liferay.min(minCount, entry.getAssetCount()) />
		</#list>

		<#assign multiplier = 1 />

		<#if maxCount != minCount>
			<#assign multiplier = 3 / (maxCount - minCount) />
		</#if>

		<#list entries as entry>
			<li class="taglib-asset-tags-summary">
				<#assign popularity = (maxCount - (maxCount - (entry.getAssetCount() - minCount))) * multiplier />

				<#if popularity < 1>
					<#assign color = "green" />
				<#elseif (popularity >= 1) && (popularity < 2)>
					<#assign color = "orange" />
				<#else>
					<#assign color = "red" />
				</#if>

				<#assign tagURL = renderResponse.createRenderURL() />

				${tagURL.setParameter("resetCur", "true")}
				${tagURL.setParameter("tag", entry.getName())}

				<a class ="tag" style="color: ${color};" href="${tagURL}">
					${entry.getName()}

					<#if (showAssetCount == "true")>
						<span class="tag-asset-count">(${count})</span>
					</#if>
				</a>
			</li>
		</#list>
	</ul>

	<br style="clear: both;" />
</#if>', 'f', 'f', 20430, ''),
('714aa02d-dd2e-4847-a09a-486477f6d0e5', 20431, 20194, 20154, 20158, '', '2021-05-30 13:04:36.421', '2021-05-30 13:04:36.421', 20081, 0, 'ASSET-CATEGORIES-NAVIGATION-MULTI-COLUMN-LAYOUT-FTL', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Multi Column Layout</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Displays a column for each vocabulary. Each column includes the name of a vocabulary with the vocabulary''s top level categories listed underneath.</Description></root>', 'display', '', 'ftl', '<#assign aui = taglibLiferayHash["/WEB-INF/tld/aui.tld"] />

<#if entries?has_content>
	<@aui.layout>
		<#list entries as entry>
			<@aui.column columnWidth=25>
				<div class="results-header">
					<h3>
						${entry.getName()}
					</h3>
				</div>

				<#assign categories = entry.getCategories()>

				<@displayCategories categories=categories />
			</@aui.column>
		</#list>
	</@aui.layout>
</#if>

<#macro displayCategories
	categories
>
	<#if categories?has_content>
		<ul class="categories">
			<#list categories as category>
				<li>
					<#assign categoryURL = renderResponse.createRenderURL()>

					${categoryURL.setParameter("resetCur", "true")}
					${categoryURL.setParameter("categoryId", category.getCategoryId()?string)}

					<a href="${categoryURL}">${category.getName()}</a>

					<#if serviceLocator??>
						<#assign assetCategoryService = serviceLocator.findService("com.liferay.portlet.asset.service.AssetCategoryService")>

						<#assign childCategories = assetCategoryService.getChildCategories(category.getCategoryId())>

						<@displayCategories categories=childCategories />
					</#if>
				</li>
			</#list>
		</ul>
	</#if>
</#macro>', 'f', 'f', 20432, '');







INSERT INTO "public"."dlfileentrytype" ("uuid_", "fileentrytypeid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "fileentrytypekey", "name", "description") VALUES
('a45606db-01ce-46b7-b757-32cbc176f297', 0, 0, 0, 0, '', '2021-05-30 13:04:19.018', '2021-05-30 13:04:19.018', 'BASIC-DOCUMENT', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">basic-document</Name></root>', '');
INSERT INTO "public"."dlfileentrytype" ("uuid_", "fileentrytypeid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "fileentrytypekey", "name", "description") VALUES
('39caed83-577c-408b-8371-f4915ecaecb3', 20306, 20194, 20154, 20158, '', '2021-05-30 13:04:27.845', '2021-05-30 13:04:27.845', 'CONTRACT', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Contract</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Contract</Description></root>');
INSERT INTO "public"."dlfileentrytype" ("uuid_", "fileentrytypeid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "fileentrytypekey", "name", "description") VALUES
('923844ab-d7fe-403f-a95c-d2fd0b3271fd', 20308, 20194, 20154, 20158, '', '2021-05-30 13:04:27.998', '2021-05-30 13:04:27.998', 'MARKETING BANNER', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Marketing Banner</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Marketing Banner</Description></root>');
INSERT INTO "public"."dlfileentrytype" ("uuid_", "fileentrytypeid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "fileentrytypekey", "name", "description") VALUES
('3b5a12ea-1ca4-4929-8786-86a8fc4d94d0', 20310, 20194, 20154, 20158, '', '2021-05-30 13:04:28.111', '2021-05-30 13:04:28.111', 'ONLINE TRAINING', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Online Training</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Online Training</Description></root>'),
('7f361d77-47cc-49c8-bd24-bf70f9cb355e', 20312, 20194, 20154, 20158, '', '2021-05-30 13:04:28.27', '2021-05-30 13:04:28.27', 'SALES PRESENTATION', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Sales Presentation</Name></root>', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Sales Presentation</Description></root>');

INSERT INTO "public"."dlfileentrytypes_ddmstructures" ("structureid", "fileentrytypeid") VALUES
(20307, 20306);
INSERT INTO "public"."dlfileentrytypes_ddmstructures" ("structureid", "fileentrytypeid") VALUES
(20304, 20308);
INSERT INTO "public"."dlfileentrytypes_ddmstructures" ("structureid", "fileentrytypeid") VALUES
(20309, 20308);
INSERT INTO "public"."dlfileentrytypes_ddmstructures" ("structureid", "fileentrytypeid") VALUES
(20303, 20310),
(20311, 20310),
(20305, 20312),
(20313, 20312);















INSERT INTO "public"."emp_bank" ("uuid_", "bank_id", "name", "bik", "address") VALUES
('222fa59a-753b-4246-aa8b-57c9d63f7f74', 1, 'Сбербанк', '658625', 'Новосибирск, Ленина 1');
INSERT INTO "public"."emp_bank" ("uuid_", "bank_id", "name", "bik", "address") VALUES
('75cf5372-b902-4cf5-bf23-c78d1b38da51', 2, 'Тинькофф', '254863', 'Новосибирск, Советская 18');
INSERT INTO "public"."emp_bank" ("uuid_", "bank_id", "name", "bik", "address") VALUES
('6a02c1ad-8886-408d-97c0-40257683f7db', 3, 'ВТБ', '853698', 'Москва, Фрунзе 152');
INSERT INTO "public"."emp_bank" ("uuid_", "bank_id", "name", "bik", "address") VALUES
('7fecee28-501d-447e-8c4d-982e4998c58b', 4, 'Почта банк', '526812', 'Екатеринбург, Ломоносова 23'),
('b3228577-fdae-4808-8027-3ea79dd12c50', 5, 'Альфа', '852468', 'Кемерово, Ленина 16'),
('f01eb40b-5df1-4699-aa06-c8f63c454e9e', 6, 'Левобережный', '852398', 'Москва, Аникина 34');

INSERT INTO "public"."emp_banks_employees" ("bank_id", "employee_id") VALUES
(5, 1);
INSERT INTO "public"."emp_banks_employees" ("bank_id", "employee_id") VALUES
(1, 2);
INSERT INTO "public"."emp_banks_employees" ("bank_id", "employee_id") VALUES
(2, 3);
INSERT INTO "public"."emp_banks_employees" ("bank_id", "employee_id") VALUES
(3, 4),
(6, 5),
(3, 6),
(1, 101),
(5, 102);

INSERT INTO "public"."emp_employee" ("uuid_", "employee_id", "name", "patronymic", "surname", "gender", "birth_date", "date_of_employment", "salary", "work_phone", "mobile_phone", "archive", "position_id") VALUES
('2b760ed6-f4b0-4059-a1c9-f3a8be0b4f83', 5, 'Лариса', 'Егоровна', 'Губко', 'Female', '1983-05-23', '2018-10-17', 51000, '+79145268563', '+79584523212', 'f', 10);
INSERT INTO "public"."emp_employee" ("uuid_", "employee_id", "name", "patronymic", "surname", "gender", "birth_date", "date_of_employment", "salary", "work_phone", "mobile_phone", "archive", "position_id") VALUES
('7e1186e4-11e4-48d9-9096-b0de474e9792', 1, 'Иван', 'Иванович', 'Иванов', 'Male', '1976-05-03', '2011-11-01', 500000, '+79232273337', '+79232273336', 'f', 1);
INSERT INTO "public"."emp_employee" ("uuid_", "employee_id", "name", "patronymic", "surname", "gender", "birth_date", "date_of_employment", "salary", "work_phone", "mobile_phone", "archive", "position_id") VALUES
('9c8ea187-f421-4328-9249-67448f9d6252', 4, 'Софья', 'Павловна', 'Молодина', 'Female', '1996-08-30', '2020-07-08', 45000, '', '+79625463625', 'f', 9);
INSERT INTO "public"."emp_employee" ("uuid_", "employee_id", "name", "patronymic", "surname", "gender", "birth_date", "date_of_employment", "salary", "work_phone", "mobile_phone", "archive", "position_id") VALUES
('349817fa-f0ff-4ecc-9ebb-9940bba9c084', 2, 'Сергей', 'Андреевич', 'Иванов', 'Male', '1965-08-02', '2015-06-05', 25000, '+76257622565', '+79625468523', 'f', 2),
('78ef4b54-526e-40c7-9622-5edcb75f914b', 3, 'Александр', 'Антонович', 'Петров', 'Male', '1999-07-23', '2021-05-30', 27000, '+79652584682', '+79584632584', 'f', 7),
('710ed35c-f6e9-4d13-acdc-f246e7beac16', 101, 'Игорь', 'Андреевич', 'Иванов', 'Male', '1983-02-16', '2019-10-10', 31000, '', '+79523655874', 'f', 6),
('dbf2cbea-950a-4e56-8cca-9aa50df801f0', 102, 'Ирина', 'Анатольевна', 'Артемьева', 'Female', '1986-12-09', '2017-12-04', 38000, '', '+79663584625', 'f', 8),
('7a268e0a-a47c-4451-a2d6-2d056e059770', 6, 'Мария', 'Владимировна', 'Белецкая', 'Female', '1971-12-15', '2019-09-24', 23000, '', '+79584256235', 't', 4);

INSERT INTO "public"."emp_position" ("uuid_", "position_id", "name", "archive", "employee_id") VALUES
('2036c972-c274-4273-8e95-c34cefa036c0', 3, 'Дворник', 'f', -1);
INSERT INTO "public"."emp_position" ("uuid_", "position_id", "name", "archive", "employee_id") VALUES
('bc3905c5-71eb-4a19-8219-ccacee44b70e', 5, 'Уборщица', 'f', -1);
INSERT INTO "public"."emp_position" ("uuid_", "position_id", "name", "archive", "employee_id") VALUES
('ef7475e9-0c55-45bf-833d-d4cf991dd96d', 2, 'Дворник', 'f', 2);
INSERT INTO "public"."emp_position" ("uuid_", "position_id", "name", "archive", "employee_id") VALUES
('34a49e9e-f19b-4821-8eb3-557cdf04c460', 10, 'Менеджер', 'f', 5),
('82ed5b59-9fa1-4c1c-9987-b7de8ec23317', 4, 'Уборщица', 'f', 6),
('d4f41943-8a5a-431f-b23e-034e8cdb82d0', 1, 'Директор', 'f', 1),
('b3c742bb-6b19-4731-abfc-7ded00c33ebf', 9, 'Менеджер', 'f', 4),
('486b5e1d-d372-4e68-9ca6-7516276d3cae', 6, 'Кассир', 'f', 101),
('5a355c4e-81d1-48bc-9074-5b68f52a6f08', 7, 'Кассир', 't', 3),
('34dd355b-4125-49ef-9776-a454bd9f6542', 8, 'Кассир', 'f', 102);

INSERT INTO "public"."expandocolumn" ("columnid", "companyid", "tableid", "name", "type_", "defaultdata", "typesettings") VALUES
(20442, 20154, 20441, 'clientId', 15, '', '');




INSERT INTO "public"."expandotable" ("tableid", "companyid", "classnameid", "name") VALUES
(20441, 20154, 20005, 'MP');
INSERT INTO "public"."expandotable" ("tableid", "companyid", "classnameid", "name") VALUES
(20509, 20154, 20002, 'OPEN_SOCIAL_DATA_');
INSERT INTO "public"."expandotable" ("tableid", "companyid", "classnameid", "name") VALUES
(20510, 20154, 20005, 'OPEN_SOCIAL_DATA_');



INSERT INTO "public"."group_" ("uuid_", "groupid", "companyid", "creatoruserid", "classnameid", "classpk", "parentgroupid", "livegroupid", "treepath", "name", "description", "type_", "typesettings", "manualmembership", "membershiprestriction", "friendlyurl", "site", "remotestaginggroupcount", "active_") VALUES
('64f427ff-a924-4b87-98c2-600dd28695dc', 20172, 20154, 20158, 20001, 20172, 0, 0, '/20172/', 'Control Panel', '', 3, '', 't', 0, '/control_panel', 'f', 0, 't');
INSERT INTO "public"."group_" ("uuid_", "groupid", "companyid", "creatoruserid", "classnameid", "classpk", "parentgroupid", "livegroupid", "treepath", "name", "description", "type_", "typesettings", "manualmembership", "membershiprestriction", "friendlyurl", "site", "remotestaginggroupcount", "active_") VALUES
('78817221-3598-4ef1-8c83-df0d63daf98a', 20181, 20154, 20158, 20001, 20181, 0, 0, '/20181/', 'Guest', '', 1, '', 't', 0, '/guest', 't', 0, 't');
INSERT INTO "public"."group_" ("uuid_", "groupid", "companyid", "creatoruserid", "classnameid", "classpk", "parentgroupid", "livegroupid", "treepath", "name", "description", "type_", "typesettings", "manualmembership", "membershiprestriction", "friendlyurl", "site", "remotestaginggroupcount", "active_") VALUES
('6667774b-0e76-470c-8239-72355b281820', 20191, 20154, 20158, 20190, 20158, 0, 0, '/20191/', 'User Personal Site', '', 3, '', 't', 0, '/personal_site', 'f', 0, 't');
INSERT INTO "public"."group_" ("uuid_", "groupid", "companyid", "creatoruserid", "classnameid", "classpk", "parentgroupid", "livegroupid", "treepath", "name", "description", "type_", "typesettings", "manualmembership", "membershiprestriction", "friendlyurl", "site", "remotestaginggroupcount", "active_") VALUES
('8a200f84-3dfe-4320-a523-43a2544457ec', 20194, 20154, 20158, 20025, 20154, 0, 0, '/20194/', '20154', '', 0, '', 't', 0, '/global', 't', 0, 't'),
('0e39384a-39c6-4b9c-9992-7dc998e66a2d', 20201, 20154, 20198, 20005, 20198, 0, 0, '/20201/', '20198', '', 0, '', 't', 0, '/test', 'f', 0, 't'),
('a8cfad18-907f-4b8c-82f1-818a0d425771', 20317, 20154, 20158, 20032, 20316, 0, 0, '/20317/', '20316', '', 0, '', 't', 0, '/template-20316', 'f', 0, 't'),
('d55efe07-e6a1-4b0e-b164-49751d447c61', 20329, 20154, 20158, 20032, 20328, 0, 0, '/20329/', '20328', '', 0, '', 't', 0, '/template-20328', 'f', 0, 't'),
('2e279cd1-1e86-4b36-87c9-947cbe37d34e', 20339, 20154, 20158, 20032, 20338, 0, 0, '/20339/', '20338', '', 0, '', 't', 0, '/template-20338', 'f', 0, 't'),
('52726d33-f185-449e-8a71-07b45e153b07', 20350, 20154, 20158, 20036, 20349, 0, 0, '/20350/', '20349', '', 0, '', 't', 0, '/template-20349', 'f', 0, 't'),
('0e4652ca-4dd8-4592-9e73-adfceef59d09', 20376, 20154, 20158, 20036, 20375, 0, 0, '/20376/', '20375', '', 0, '', 't', 0, '/template-20375', 'f', 0, 't'),
('66815295-e64b-44cb-9381-1b5462b93772', 20517, 20154, 20158, 20003, 20516, 0, 0, '/20517/', 'Liferay, Inc. LFR_ORGANIZATION', '', 3, '', 'f', 0, '/liferay', 't', 0, 't'),
('797039c3-04f6-47e3-85c8-8c03ceb6eab4', 20533, 20154, 20158, 20003, 20532, 20517, 0, '/20517/20533/', 'Liferay Chicago LFR_ORGANIZATION', '', 3, '', 'f', 0, '/chicago', 't', 0, 't'),
('27d477fa-eedf-403f-ab49-373d75d17fb3', 20538, 20154, 20536, 20005, 20536, 0, 0, '/20538/', '20536', '', 0, '', 't', 0, '/ord1', 'f', 0, 't'),
('839585bf-8847-4514-b256-77cb472b0930', 20544, 20154, 20542, 20005, 20542, 0, 0, '/20544/', '20542', '', 0, '', 't', 0, '/ord2', 'f', 0, 't'),
('d0da8d20-49f6-47b9-a23f-0c51bb00d3bd', 20550, 20154, 20548, 20005, 20548, 0, 0, '/20550/', '20548', '', 0, '', 't', 0, '/ord3', 'f', 0, 't'),
('201177de-921e-4273-b05e-2b8dfb311d00', 20556, 20154, 20554, 20005, 20554, 0, 0, '/20556/', '20554', '', 0, '', 't', 0, '/ord4', 'f', 0, 't'),
('c3842e94-c426-471a-895f-6bfd162e460b', 20562, 20154, 20560, 20005, 20560, 0, 0, '/20562/', '20560', '', 0, '', 't', 0, '/ord5', 'f', 0, 't'),
('ad5db67a-e17d-466c-894e-3227f7f15380', 20568, 20154, 20566, 20005, 20566, 0, 0, '/20568/', '20566', '', 0, '', 't', 0, '/ord6', 'f', 0, 't'),
('9e65e17b-4c3a-4072-b23c-a2522743bfba', 20574, 20154, 20572, 20005, 20572, 0, 0, '/20574/', '20572', '', 0, '', 't', 0, '/ord7', 'f', 0, 't'),
('961e1366-c653-41ba-8b1b-f7a3852a9b81', 20580, 20154, 20578, 20005, 20578, 0, 0, '/20580/', '20578', '', 0, '', 't', 0, '/ord8', 'f', 0, 't'),
('629227d0-7bee-4391-ac04-aff842d3bcac', 20586, 20154, 20584, 20005, 20584, 0, 0, '/20586/', '20584', '', 0, '', 't', 0, '/ord9', 'f', 0, 't'),
('4fca5fc7-c5d9-4c0f-8c19-49c12d988edd', 20592, 20154, 20590, 20005, 20590, 0, 0, '/20592/', '20590', '', 0, '', 't', 0, '/ord10', 'f', 0, 't'),
('44fa3bc5-da87-4e8e-8c81-54eb3a4b5a6e', 20597, 20154, 20158, 20003, 20596, 20517, 0, '/20517/20597/', 'Liferay Consulting LFR_ORGANIZATION', '', 3, '', 'f', 0, '/consulting', 't', 0, 't'),
('3337ea54-a8dd-4dfb-9e7b-9e5cd1d3a7cc', 20601, 20154, 20158, 20003, 20600, 20517, 0, '/20517/20601/', 'Liferay Dalian LFR_ORGANIZATION', '', 3, '', 'f', 0, '/dalian', 't', 0, 't'),
('2987dd42-62cc-41b5-aeb5-b7773d586edc', 20606, 20154, 20604, 20005, 20604, 0, 0, '/20606/', '20604', '', 0, '', 't', 0, '/dlc1', 'f', 0, 't'),
('f550c6b3-6c44-454d-b3fc-4fc0a9bd8483', 20612, 20154, 20610, 20005, 20610, 0, 0, '/20612/', '20610', '', 0, '', 't', 0, '/dlc2', 'f', 0, 't'),
('d8cf64db-f32a-4ce3-a05b-e2f98d389b5c', 20618, 20154, 20616, 20005, 20616, 0, 0, '/20618/', '20616', '', 0, '', 't', 0, '/dlc3', 'f', 0, 't'),
('7c06efc2-5b44-4406-bb99-931a056c6b7b', 20624, 20154, 20622, 20005, 20622, 0, 0, '/20624/', '20622', '', 0, '', 't', 0, '/dlc4', 'f', 0, 't'),
('9663f915-7114-4ad9-a3ae-96a9b09b685d', 20630, 20154, 20628, 20005, 20628, 0, 0, '/20630/', '20628', '', 0, '', 't', 0, '/dlc5', 'f', 0, 't'),
('a7df9f7a-5621-4d0c-a036-d838d8bb90b7', 20636, 20154, 20634, 20005, 20634, 0, 0, '/20636/', '20634', '', 0, '', 't', 0, '/dlc6', 'f', 0, 't'),
('9acff7fc-6198-433b-851f-7b4498111115', 20642, 20154, 20640, 20005, 20640, 0, 0, '/20642/', '20640', '', 0, '', 't', 0, '/dlc7', 'f', 0, 't'),
('727d113c-3cff-4b7a-aff8-ec5d452da07e', 20648, 20154, 20646, 20005, 20646, 0, 0, '/20648/', '20646', '', 0, '', 't', 0, '/dlc8', 'f', 0, 't'),
('7129a7e1-cad5-4aed-b726-f42bcee4d39d', 20654, 20154, 20652, 20005, 20652, 0, 0, '/20654/', '20652', '', 0, '', 't', 0, '/dlc9', 'f', 0, 't'),
('410e74b9-9d3e-4099-96f0-791c527fb7cd', 20660, 20154, 20658, 20005, 20658, 0, 0, '/20660/', '20658', '', 0, '', 't', 0, '/dlc10', 'f', 0, 't'),
('73592bb1-37e8-48ff-93b2-fb7b1cf95268', 20665, 20154, 20158, 20003, 20664, 20517, 0, '/20517/20665/', 'Liferay Engineering LFR_ORGANIZATION', '', 3, '', 'f', 0, '/engineering', 't', 0, 't'),
('a67316d7-8e8e-42a0-aaaa-e705f24ea605', 20669, 20154, 20158, 20003, 20668, 20517, 0, '/20517/20669/', 'Liferay Frankfurt LFR_ORGANIZATION', '', 3, '', 'f', 0, '/frankfurt', 't', 0, 't'),
('0ef06486-33dd-46a4-a39a-7dd4d5330911', 20674, 20154, 20672, 20005, 20672, 0, 0, '/20674/', '20672', '', 0, '', 't', 0, '/fra1', 'f', 0, 't'),
('05fe7a48-5869-4c0e-af4f-a8fa77e44f50', 20680, 20154, 20678, 20005, 20678, 0, 0, '/20680/', '20678', '', 0, '', 't', 0, '/fra2', 'f', 0, 't'),
('b65082ee-b576-473b-9d72-b73286b9b075', 20686, 20154, 20684, 20005, 20684, 0, 0, '/20686/', '20684', '', 0, '', 't', 0, '/fra3', 'f', 0, 't'),
('40206025-2c02-40e4-995b-289e33e8f73b', 20692, 20154, 20690, 20005, 20690, 0, 0, '/20692/', '20690', '', 0, '', 't', 0, '/fra4', 'f', 0, 't'),
('9ce81e9d-4e30-427b-a915-8de2245d3813', 20698, 20154, 20696, 20005, 20696, 0, 0, '/20698/', '20696', '', 0, '', 't', 0, '/fra5', 'f', 0, 't'),
('a69cf415-b4bc-489c-b61f-b8df94078b23', 20704, 20154, 20702, 20005, 20702, 0, 0, '/20704/', '20702', '', 0, '', 't', 0, '/fra6', 'f', 0, 't'),
('b2ed7b0d-0109-4672-8d47-1838b5409847', 20710, 20154, 20708, 20005, 20708, 0, 0, '/20710/', '20708', '', 0, '', 't', 0, '/fra7', 'f', 0, 't'),
('f32771f8-06f4-4d9b-9892-88093ad5a48b', 20716, 20154, 20714, 20005, 20714, 0, 0, '/20716/', '20714', '', 0, '', 't', 0, '/fra8', 'f', 0, 't'),
('4fab2e3c-e56b-4c50-a0fe-48662c1c8db6', 20722, 20154, 20720, 20005, 20720, 0, 0, '/20722/', '20720', '', 0, '', 't', 0, '/fra9', 'f', 0, 't'),
('21afa471-e1ff-40b7-b94b-1bd0209ce395', 20728, 20154, 20726, 20005, 20726, 0, 0, '/20728/', '20726', '', 0, '', 't', 0, '/fra10', 'f', 0, 't'),
('0042d4e9-2562-47b1-9641-0e2afdc51956', 20802, 20154, 20800, 20005, 20800, 0, 0, '/20802/', '20800', '', 0, '', 't', 0, '/kul1', 'f', 0, 't'),
('7d91c4a9-3b7e-4c69-944e-9e93f99ba6f4', 20733, 20154, 20158, 20003, 20732, 20517, 0, '/20517/20733/', 'Liferay Hong Kong LFR_ORGANIZATION', '', 3, '', 'f', 0, '/hong-kong', 't', 0, 't'),
('343665b9-f10f-4ae8-94aa-82c907783424', 20756, 20154, 20754, 20005, 20754, 0, 0, '/20756/', '20754', '', 0, '', 't', 0, '/hkg4', 'f', 0, 't'),
('df3c85e5-a6df-4ec3-967d-64017fc76135', 20762, 20154, 20760, 20005, 20760, 0, 0, '/20762/', '20760', '', 0, '', 't', 0, '/hkg5', 'f', 0, 't'),
('9a896467-d631-4d51-92b1-002c97da71b6', 20768, 20154, 20766, 20005, 20766, 0, 0, '/20768/', '20766', '', 0, '', 't', 0, '/hkg6', 'f', 0, 't'),
('857ae54b-7b8e-4687-a1f6-ca8efa41c2ff', 20774, 20154, 20772, 20005, 20772, 0, 0, '/20774/', '20772', '', 0, '', 't', 0, '/hkg7', 'f', 0, 't'),
('623bd4eb-2290-4b66-9005-e69ac1beb3a5', 20780, 20154, 20778, 20005, 20778, 0, 0, '/20780/', '20778', '', 0, '', 't', 0, '/hkg8', 'f', 0, 't'),
('613e8158-404f-44a5-bbe8-be3ae616a506', 20786, 20154, 20784, 20005, 20784, 0, 0, '/20786/', '20784', '', 0, '', 't', 0, '/hkg9', 'f', 0, 't'),
('533d936b-7e04-4ce7-bbff-0418c4ab89e8', 20797, 20154, 20158, 20003, 20796, 20517, 0, '/20517/20797/', 'Liferay Kuala Lumpur LFR_ORGANIZATION', '', 3, '', 'f', 0, '/kuala-lumpur', 't', 0, 't'),
('7f3b3a13-2fe5-44c1-814f-537b9cd45337', 20814, 20154, 20812, 20005, 20812, 0, 0, '/20814/', '20812', '', 0, '', 't', 0, '/kul3', 'f', 0, 't'),
('82b632dd-b4e6-433d-b302-e8ad9725c8bc', 20820, 20154, 20818, 20005, 20818, 0, 0, '/20820/', '20818', '', 0, '', 't', 0, '/kul4', 'f', 0, 't'),
('06448435-1249-4ae5-a601-039d3c964830', 20738, 20154, 20736, 20005, 20736, 0, 0, '/20738/', '20736', '', 0, '', 't', 0, '/hkg1', 'f', 0, 't'),
('25189805-cda1-44da-9c19-ba9c7e78a983', 20744, 20154, 20742, 20005, 20742, 0, 0, '/20744/', '20742', '', 0, '', 't', 0, '/hkg2', 'f', 0, 't'),
('e2962f9f-2600-452b-8dda-2376d25a6ed7', 20750, 20154, 20748, 20005, 20748, 0, 0, '/20750/', '20748', '', 0, '', 't', 0, '/hkg3', 'f', 0, 't'),
('485f19d9-1471-4c69-95c9-cde156ab501c', 20792, 20154, 20790, 20005, 20790, 0, 0, '/20792/', '20790', '', 0, '', 't', 0, '/hkg10', 'f', 0, 't'),
('1ce15246-0aef-4676-8462-2cafe2c37750', 20808, 20154, 20806, 20005, 20806, 0, 0, '/20808/', '20806', '', 0, '', 't', 0, '/kul2', 'f', 0, 't'),
('61af3453-9a82-4275-ab51-73356342b1fb', 20826, 20154, 20824, 20005, 20824, 0, 0, '/20826/', '20824', '', 0, '', 't', 0, '/kul5', 'f', 0, 't'),
('68480c91-fa7c-47f9-a9fe-81e063f04f18', 20832, 20154, 20830, 20005, 20830, 0, 0, '/20832/', '20830', '', 0, '', 't', 0, '/kul6', 'f', 0, 't'),
('bb50086d-fb54-43f1-8199-d1d5957a5c3a', 20838, 20154, 20836, 20005, 20836, 0, 0, '/20838/', '20836', '', 0, '', 't', 0, '/kul7', 'f', 0, 't'),
('2a3dcfb0-5568-4372-b6f3-227779c61d83', 20844, 20154, 20842, 20005, 20842, 0, 0, '/20844/', '20842', '', 0, '', 't', 0, '/kul8', 'f', 0, 't'),
('a332e29f-ed45-4c8b-818e-2a62bbdc4e0f', 20850, 20154, 20848, 20005, 20848, 0, 0, '/20850/', '20848', '', 0, '', 't', 0, '/kul9', 'f', 0, 't'),
('a791eae8-db8f-4018-886f-3d270c8c4073', 20856, 20154, 20854, 20005, 20854, 0, 0, '/20856/', '20854', '', 0, '', 't', 0, '/kul10', 'f', 0, 't'),
('ea020bd0-32f6-4e88-afed-3592d194535d', 20861, 20154, 20158, 20003, 20860, 20517, 0, '/20517/20861/', 'Liferay Los Angeles LFR_ORGANIZATION', '', 3, '', 'f', 0, '/los-angeles', 't', 0, 't'),
('eb83f931-b3e5-4d24-adbd-6e5b9c4d13da', 20866, 20154, 20864, 20005, 20864, 0, 0, '/20866/', '20864', '', 0, '', 't', 0, '/lax1', 'f', 0, 't'),
('7ce314f7-1fc4-4881-bbee-3e4f612a99ac', 20872, 20154, 20870, 20005, 20870, 0, 0, '/20872/', '20870', '', 0, '', 't', 0, '/lax2', 'f', 0, 't'),
('bbc1e9f9-df5f-421f-8d30-db570e218c40', 20878, 20154, 20876, 20005, 20876, 0, 0, '/20878/', '20876', '', 0, '', 't', 0, '/lax3', 'f', 0, 't'),
('e4fd6586-48a9-411a-ac1e-6360d5b89ebf', 20884, 20154, 20882, 20005, 20882, 0, 0, '/20884/', '20882', '', 0, '', 't', 0, '/lax4', 'f', 0, 't');
INSERT INTO "public"."group_" ("uuid_", "groupid", "companyid", "creatoruserid", "classnameid", "classpk", "parentgroupid", "livegroupid", "treepath", "name", "description", "type_", "typesettings", "manualmembership", "membershiprestriction", "friendlyurl", "site", "remotestaginggroupcount", "active_") VALUES
('82e908a6-0050-445b-a3e3-b558317c2b47', 20890, 20154, 20888, 20005, 20888, 0, 0, '/20890/', '20888', '', 0, '', 't', 0, '/lax5', 'f', 0, 't'),
('f7af2229-4229-4c2a-8446-7e4d91b733c5', 20896, 20154, 20894, 20005, 20894, 0, 0, '/20896/', '20894', '', 0, '', 't', 0, '/lax6', 'f', 0, 't'),
('2810cb5c-2ca9-4ab4-810f-576c38186d2c', 20902, 20154, 20900, 20005, 20900, 0, 0, '/20902/', '20900', '', 0, '', 't', 0, '/lax7', 'f', 0, 't'),
('1e942baa-3b38-4579-847d-6da562247068', 20908, 20154, 20906, 20005, 20906, 0, 0, '/20908/', '20906', '', 0, '', 't', 0, '/lax8', 'f', 0, 't'),
('f7e8fe5c-90d1-4ed6-b5c0-dd044c364755', 20914, 20154, 20912, 20005, 20912, 0, 0, '/20914/', '20912', '', 0, '', 't', 0, '/lax9', 'f', 0, 't'),
('64d1eb83-99b3-4aec-b36a-b0728d9b6b63', 20920, 20154, 20918, 20005, 20918, 0, 0, '/20920/', '20918', '', 0, '', 't', 0, '/lax10', 'f', 0, 't'),
('c30617e4-213f-4125-baa2-3e33328d86e7', 20925, 20154, 20158, 20003, 20924, 20517, 0, '/20517/20925/', 'Liferay Madrid LFR_ORGANIZATION', '', 3, '', 'f', 0, '/madrid', 't', 0, 't'),
('043a6a7c-4293-4a93-9237-166aeab72f5c', 20930, 20154, 20928, 20005, 20928, 0, 0, '/20930/', '20928', '', 0, '', 't', 0, '/mad1', 'f', 0, 't'),
('05b84a72-6954-4268-a92c-b75c404d5aec', 20936, 20154, 20934, 20005, 20934, 0, 0, '/20936/', '20934', '', 0, '', 't', 0, '/mad2', 'f', 0, 't'),
('00a9579a-930b-479e-b35f-25f26e70b4e7', 20942, 20154, 20940, 20005, 20940, 0, 0, '/20942/', '20940', '', 0, '', 't', 0, '/mad3', 'f', 0, 't'),
('abdb3b4d-b79b-4569-81c2-2dbf733ade85', 20948, 20154, 20946, 20005, 20946, 0, 0, '/20948/', '20946', '', 0, '', 't', 0, '/mad4', 'f', 0, 't'),
('ccbf7e8c-fdf3-419f-a7f5-717d67b0edb3', 20954, 20154, 20952, 20005, 20952, 0, 0, '/20954/', '20952', '', 0, '', 't', 0, '/mad5', 'f', 0, 't'),
('1a9b2914-bdc0-47d4-8752-09f614fee6da', 20960, 20154, 20958, 20005, 20958, 0, 0, '/20960/', '20958', '', 0, '', 't', 0, '/mad6', 'f', 0, 't'),
('896d3d4f-efa5-4d95-b322-d9641cac7897', 20966, 20154, 20964, 20005, 20964, 0, 0, '/20966/', '20964', '', 0, '', 't', 0, '/mad7', 'f', 0, 't'),
('8ac6a234-5b28-4e41-9098-b7854348231f', 20972, 20154, 20970, 20005, 20970, 0, 0, '/20972/', '20970', '', 0, '', 't', 0, '/mad8', 'f', 0, 't'),
('95e8917d-f299-4702-b972-2a36f2b9a7fc', 20978, 20154, 20976, 20005, 20976, 0, 0, '/20978/', '20976', '', 0, '', 't', 0, '/mad9', 'f', 0, 't'),
('cf0d23c0-97cc-40cf-b248-92f1bc7f67c5', 20984, 20154, 20982, 20005, 20982, 0, 0, '/20984/', '20982', '', 0, '', 't', 0, '/mad10', 'f', 0, 't'),
('3e9f6ae2-42c8-45ed-8690-ba04f247718f', 20989, 20154, 20158, 20003, 20988, 20517, 0, '/20517/20989/', 'Liferay Marketing LFR_ORGANIZATION', '', 3, '', 'f', 0, '/marketing', 't', 0, 't'),
('d8645faf-5bc0-4777-a4f9-5174f1d1ae9e', 20993, 20154, 20158, 20003, 20992, 20517, 0, '/20517/20993/', 'Liferay New York LFR_ORGANIZATION', '', 3, '', 'f', 0, '/new-york', 't', 0, 't'),
('cce56836-4c02-4ccd-84c7-9d50523237d9', 20998, 20154, 20996, 20005, 20996, 0, 0, '/20998/', '20996', '', 0, '', 't', 0, '/nyc1', 'f', 0, 't'),
('a527cda1-1091-4d8b-8056-ccad99fd3086', 21004, 20154, 21002, 20005, 21002, 0, 0, '/21004/', '21002', '', 0, '', 't', 0, '/nyc2', 'f', 0, 't'),
('90ab7aa3-94e8-41b7-a113-b594cc4c8061', 21010, 20154, 21008, 20005, 21008, 0, 0, '/21010/', '21008', '', 0, '', 't', 0, '/nyc3', 'f', 0, 't'),
('e12ec217-e12f-48e8-a277-4363cd400c2d', 21016, 20154, 21014, 20005, 21014, 0, 0, '/21016/', '21014', '', 0, '', 't', 0, '/nyc4', 'f', 0, 't'),
('8132015a-2b0e-4ee8-a29d-f85cc89959ab', 21022, 20154, 21020, 20005, 21020, 0, 0, '/21022/', '21020', '', 0, '', 't', 0, '/nyc5', 'f', 0, 't'),
('42199837-4c10-4e26-9fea-7ac7276bc91f', 21028, 20154, 21026, 20005, 21026, 0, 0, '/21028/', '21026', '', 0, '', 't', 0, '/nyc6', 'f', 0, 't'),
('2883f6ff-bdb0-48ac-a9b0-a8646d60a0c5', 21034, 20154, 21032, 20005, 21032, 0, 0, '/21034/', '21032', '', 0, '', 't', 0, '/nyc7', 'f', 0, 't'),
('0064a34e-6c0d-4dd9-84b9-960d33db9ea3', 21040, 20154, 21038, 20005, 21038, 0, 0, '/21040/', '21038', '', 0, '', 't', 0, '/nyc8', 'f', 0, 't'),
('22acf991-ae93-4494-b03d-a7597d354fa1', 21046, 20154, 21044, 20005, 21044, 0, 0, '/21046/', '21044', '', 0, '', 't', 0, '/nyc9', 'f', 0, 't'),
('0cdb789d-3bb6-4bb4-a871-bf07841d5941', 21052, 20154, 21050, 20005, 21050, 0, 0, '/21052/', '21050', '', 0, '', 't', 0, '/nyc10', 'f', 0, 't'),
('bb451d2e-2253-4933-916a-4dcd614eb06d', 21057, 20154, 20158, 20003, 21056, 20517, 0, '/20517/21057/', 'Liferay Saint Paulo LFR_ORGANIZATION', '', 3, '', 'f', 0, '/saint-paulo', 't', 0, 't'),
('6d89317f-4e6f-44b1-91a8-8d5a738000ca', 21062, 20154, 21060, 20005, 21060, 0, 0, '/21062/', '21060', '', 0, '', 't', 0, '/gru1', 'f', 0, 't'),
('326de46e-095d-48f3-b009-2fe2d0e51d5b', 21068, 20154, 21066, 20005, 21066, 0, 0, '/21068/', '21066', '', 0, '', 't', 0, '/gru2', 'f', 0, 't'),
('61b90b36-3667-4a79-939c-1cfcbaa1e27b', 21074, 20154, 21072, 20005, 21072, 0, 0, '/21074/', '21072', '', 0, '', 't', 0, '/gru3', 'f', 0, 't'),
('837c7450-13a4-4cae-a7a3-185a36c1ab02', 21080, 20154, 21078, 20005, 21078, 0, 0, '/21080/', '21078', '', 0, '', 't', 0, '/gru4', 'f', 0, 't'),
('2435e340-708e-406d-8fd8-27a68780768a', 21086, 20154, 21084, 20005, 21084, 0, 0, '/21086/', '21084', '', 0, '', 't', 0, '/gru5', 'f', 0, 't'),
('f284900e-6faf-4aac-afb3-e50b930fca29', 21092, 20154, 21090, 20005, 21090, 0, 0, '/21092/', '21090', '', 0, '', 't', 0, '/gru6', 'f', 0, 't'),
('e5f62633-24f6-4d17-9475-3f32d23b83ec', 21098, 20154, 21096, 20005, 21096, 0, 0, '/21098/', '21096', '', 0, '', 't', 0, '/gru7', 'f', 0, 't'),
('3c606777-75ef-426b-8389-2f1e04b716f8', 21104, 20154, 21102, 20005, 21102, 0, 0, '/21104/', '21102', '', 0, '', 't', 0, '/gru8', 'f', 0, 't'),
('2cbae20c-f8c3-4105-a037-8fa0fcd0ed24', 21110, 20154, 21108, 20005, 21108, 0, 0, '/21110/', '21108', '', 0, '', 't', 0, '/gru9', 'f', 0, 't'),
('8f5c5e51-19cd-4f14-afdf-d06344f46892', 21116, 20154, 21114, 20005, 21114, 0, 0, '/21116/', '21114', '', 0, '', 't', 0, '/gru10', 'f', 0, 't'),
('7f7c6633-0491-4c41-a5c9-c1b751dafb94', 21121, 20154, 20158, 20003, 21120, 20517, 0, '/20517/21121/', 'Liferay Sales LFR_ORGANIZATION', '', 3, '', 'f', 0, '/sales', 't', 0, 't'),
('b3c4bb8d-ea3b-4994-be60-f73ee9559630', 21125, 20154, 20158, 20003, 21124, 20517, 0, '/20517/21125/', 'Liferay San Francisco LFR_ORGANIZATION', '', 3, '', 'f', 0, '/san-francisco', 't', 0, 't'),
('e527caf9-d92f-4196-8e8e-e2cf279a84e5', 21130, 20154, 21128, 20005, 21128, 0, 0, '/21130/', '21128', '', 0, '', 't', 0, '/sfo1', 'f', 0, 't'),
('327e3d40-4b1a-4553-92f7-8b077227e051', 21136, 20154, 21134, 20005, 21134, 0, 0, '/21136/', '21134', '', 0, '', 't', 0, '/sfo2', 'f', 0, 't'),
('6a3843d1-88b8-4234-bc2b-6b3586d7b00a', 21142, 20154, 21140, 20005, 21140, 0, 0, '/21142/', '21140', '', 0, '', 't', 0, '/sfo3', 'f', 0, 't'),
('7777357a-3e7b-4bcd-81f3-062d5e21c5e5', 21148, 20154, 21146, 20005, 21146, 0, 0, '/21148/', '21146', '', 0, '', 't', 0, '/sfo4', 'f', 0, 't'),
('2c3af408-70a7-4863-aa95-d0aa3e85d813', 21154, 20154, 21152, 20005, 21152, 0, 0, '/21154/', '21152', '', 0, '', 't', 0, '/sfo5', 'f', 0, 't'),
('75ad38de-590f-4f2f-91eb-e4260310ec16', 21160, 20154, 21158, 20005, 21158, 0, 0, '/21160/', '21158', '', 0, '', 't', 0, '/sfo6', 'f', 0, 't'),
('b5991e8e-f64b-47fb-aada-1591d7d95754', 21166, 20154, 21164, 20005, 21164, 0, 0, '/21166/', '21164', '', 0, '', 't', 0, '/sfo7', 'f', 0, 't'),
('6ad65823-f031-4588-b6bf-c553a878800b', 21172, 20154, 21170, 20005, 21170, 0, 0, '/21172/', '21170', '', 0, '', 't', 0, '/sfo8', 'f', 0, 't'),
('17deee5f-e8ab-4305-b785-f1c3ea554293', 21178, 20154, 21176, 20005, 21176, 0, 0, '/21178/', '21176', '', 0, '', 't', 0, '/sfo9', 'f', 0, 't'),
('7c08d08e-57df-44ae-813a-2c245c9135f2', 21184, 20154, 21182, 20005, 21182, 0, 0, '/21184/', '21182', '', 0, '', 't', 0, '/sfo10', 'f', 0, 't'),
('f6b318e7-7d30-40be-b53d-bf23f23002c0', 21189, 20154, 20158, 20003, 21188, 20517, 0, '/20517/21189/', 'Liferay Support LFR_ORGANIZATION', '', 3, '', 'f', 0, '/support', 't', 0, 't');





















INSERT INTO "public"."kaleoaction" ("kaleoactionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleoclassname", "kaleoclasspk", "kaleodefinitionid", "kaleonodename", "name", "description", "executiontype", "script", "scriptlanguage", "scriptrequiredcontexts", "priority") VALUES
(20470, 0, 20154, 20158, '', '2021-05-30 13:05:04.278', '2021-05-30 13:05:04.278', 'com.liferay.portal.workflow.kaleo.model.KaleoNode', 20469, 20468, 'approved', 'approve', '', 'onEntry', '
					
						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;
						import com.liferay.portal.kernel.workflow.WorkflowConstants;

						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus("approved"), workflowContext);
					
				', 'groovy', '', 0);
INSERT INTO "public"."kaleoaction" ("kaleoactionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleoclassname", "kaleoclasspk", "kaleodefinitionid", "kaleonodename", "name", "description", "executiontype", "script", "scriptlanguage", "scriptrequiredcontexts", "priority") VALUES
(20489, 0, 20154, 20158, '', '2021-05-30 13:05:04.959', '2021-05-30 13:05:04.959', 'com.liferay.portal.workflow.kaleo.model.KaleoNode', 20488, 20468, 'update', 'reject', '', 'onAssignment', '
					
						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus("denied"), workflowContext);
						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus("pending"), workflowContext);
					
				', 'javascript', '', 0);




INSERT INTO "public"."kaleodefinition" ("kaleodefinitionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "name", "title", "description", "content", "version", "active_", "startkaleonodeid") VALUES
(20468, 0, 20154, 20158, '', '2021-05-30 13:05:04.155', '2021-05-30 13:05:05.115', 'Single Approver', 'Single Approver', 'A single approver can approve a workflow content.', '<?xml version="1.0"?>

<workflow-definition xmlns="urn:liferay.com:liferay-workflow_6.2.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:liferay.com:liferay-workflow_6.2.0 http://www.liferay.com/dtd/liferay-workflow-definition_6_2_0.xsd">
	<name>Single Approver</name>
	<description>A single approver can approve a workflow content.</description>
	<version>1</version>
	<state>
		<name>created</name>
		<metadata> <![CDATA[{"xy":[36,51]}]]> </metadata>
		<initial>true</initial>
		<transitions>
			<transition>
				<name>review</name>
				<target>review</target>
			</transition>
		</transitions>
	</state>
	<task>
		<name>update</name>
		<metadata> <![CDATA[{"transitions":{"resubmit":{"bendpoints":[[303,140]]}},"xy":[328,199]}]]> </metadata>
		<actions>
			<action>
				<name>reject</name>
				<script> <![CDATA[
						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus("denied"), workflowContext);
						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus("pending"), workflowContext);
					]]> </script>
				<script-language>javascript</script-language>
				<execution-type>onAssignment</execution-type>
			</action>
			<notification>
				<name>Creator Modification Notification</name>
				<template>Your submission was rejected by ${userName}, please modify and resubmit.</template>
				<template-language>freemarker</template-language>
				<notification-type>email</notification-type>
				<notification-type>user-notification</notification-type>
				<execution-type>onAssignment</execution-type>
			</notification>
		</actions>
		<assignments>
			<user/>
		</assignments>
		<transitions>
			<transition>
				<name>resubmit</name>
				<target>review</target>
			</transition>
		</transitions>
	</task>
	<task>
		<name>review</name>
		<metadata> <![CDATA[{"xy":[168,36]}]]> </metadata>
		<actions>
			<notification>
				<name>Review Notification</name>
				<template>${userName} sent you a ${entryType} for review in the workflow.</template>
				<template-language>freemarker</template-language>
				<notification-type>email</notification-type>
				<notification-type>user-notification</notification-type>
				<execution-type>onAssignment</execution-type>
			</notification>
			<notification>
				<name>Review Completion Notification</name>
				<template>Your submission has been reviewed and the reviewer has applied the following ${taskComments}.</template>
				<template-language>freemarker</template-language>
				<notification-type>email</notification-type>
				<recipients>
					<user/>
				</recipients>
				<execution-type>onExit</execution-type>
			</notification>
		</actions>
		<assignments>
			<roles>
				<role>
					<role-type>organization</role-type>
					<name>Organization Administrator</name>
				</role>
				<role>
					<role-type>organization</role-type>
					<name>Organization Content Reviewer</name>
				</role>
				<role>
					<role-type>organization</role-type>
					<name>Organization Owner</name>
				</role>
				<role>
					<role-type>regular</role-type>
					<name>Administrator</name>
				</role>
				<role>
					<role-type>regular</role-type>
					<name>Portal Content Reviewer</name>
				</role>
				<role>
					<role-type>site</role-type>
					<name>Site Administrator</name>
				</role>
				<role>
					<role-type>site</role-type>
					<name>Site Content Reviewer</name>
				</role>
				<role>
					<role-type>site</role-type>
					<name>Site Owner</name>
				</role>
			</roles>
		</assignments>
		<transitions>
			<transition>
				<name>approve</name>
				<target>approved</target>
			</transition>
			<transition>
				<name>reject</name>
				<target>update</target>
				<default>false</default>
			</transition>
		</transitions>
	</task>
	<state>
		<name>approved</name>
		<metadata> <![CDATA[
				{"xy":[380,51]}
			]]> </metadata>
		<actions>
			<action>
				<name>approve</name>
				<script> <![CDATA[
						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;
						import com.liferay.portal.kernel.workflow.WorkflowConstants;

						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus("approved"), workflowContext);
					]]> </script>
				<script-language>groovy</script-language>
				<execution-type>onEntry</execution-type>
			</action>
		</actions>
	</state>
</workflow-definition>', 1, 't', 20471);








INSERT INTO "public"."kaleonode" ("kaleonodeid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "name", "metadata", "description", "type_", "initial_", "terminal") VALUES
(20469, 0, 20154, 20158, '', '2021-05-30 13:05:04.228', '2021-05-30 13:05:04.228', 20468, 'approved', '
			
				{"xy":[380,51]}
			
		', '', 'STATE', 'f', 't');
INSERT INTO "public"."kaleonode" ("kaleonodeid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "name", "metadata", "description", "type_", "initial_", "terminal") VALUES
(20471, 0, 20154, 20158, '', '2021-05-30 13:05:04.32', '2021-05-30 13:05:04.32', 20468, 'created', '
			{"xy":[36,51]}
		', '', 'STATE', 't', 'f');
INSERT INTO "public"."kaleonode" ("kaleonodeid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "name", "metadata", "description", "type_", "initial_", "terminal") VALUES
(20472, 0, 20154, 20158, '', '2021-05-30 13:05:04.326', '2021-05-30 13:05:04.326', 20468, 'review', '
			{"xy":[168,36]}
		', '', 'TASK', 'f', 'f');
INSERT INTO "public"."kaleonode" ("kaleonodeid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "name", "metadata", "description", "type_", "initial_", "terminal") VALUES
(20488, 0, 20154, 20158, '', '2021-05-30 13:05:04.957', '2021-05-30 13:05:04.957', 20468, 'update', '
			{"transitions":{"resubmit":{"bendpoints":[[303,140]]}},"xy":[328,199]}
		', '', 'TASK', 'f', 'f');

INSERT INTO "public"."kaleonotification" ("kaleonotificationid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleoclassname", "kaleoclasspk", "kaleodefinitionid", "kaleonodename", "name", "description", "executiontype", "template", "templatelanguage", "notificationtypes") VALUES
(20473, 0, 20154, 20158, '', '2021-05-30 13:05:04.33', '2021-05-30 13:05:04.33', 'com.liferay.portal.workflow.kaleo.model.KaleoNode', 20472, 20468, 'review', 'Review Notification', '', 'onAssignment', '${userName} sent you a ${entryType} for review in the workflow.', 'freemarker', 'user-notification,email');
INSERT INTO "public"."kaleonotification" ("kaleonotificationid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleoclassname", "kaleoclasspk", "kaleodefinitionid", "kaleonodename", "name", "description", "executiontype", "template", "templatelanguage", "notificationtypes") VALUES
(20474, 0, 20154, 20158, '', '2021-05-30 13:05:04.357', '2021-05-30 13:05:04.357', 'com.liferay.portal.workflow.kaleo.model.KaleoNode', 20472, 20468, 'review', 'Review Completion Notification', '', 'onExit', '
					Your submission has been reviewed and the reviewer has applied the following ${taskComments}.', 'freemarker', 'email');
INSERT INTO "public"."kaleonotification" ("kaleonotificationid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleoclassname", "kaleoclasspk", "kaleodefinitionid", "kaleonodename", "name", "description", "executiontype", "template", "templatelanguage", "notificationtypes") VALUES
(20490, 0, 20154, 20158, '', '2021-05-30 13:05:04.961', '2021-05-30 13:05:04.961', 'com.liferay.portal.workflow.kaleo.model.KaleoNode', 20488, 20468, 'update', 'Creator Modification Notification', '', 'onAssignment', 'Your submission was rejected by ${userName}, please modify and resubmit.', 'freemarker', 'user-notification,email');

INSERT INTO "public"."kaleonotificationrecipient" ("kaleonotificationrecipientid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "kaleonotificationid", "recipientclassname", "recipientclasspk", "recipientroletype", "address") VALUES
(20475, 0, 20154, 20158, '', '2021-05-30 13:05:04.361', '2021-05-30 13:05:04.361', 20468, 20474, 'com.liferay.portal.model.User', 0, 0, '');


INSERT INTO "public"."kaleotask" ("kaleotaskid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "kaleonodeid", "name", "description") VALUES
(20476, 0, 20154, 20158, '', '2021-05-30 13:05:04.396', '2021-05-30 13:05:04.396', 20468, 20472, 'review', '');
INSERT INTO "public"."kaleotask" ("kaleotaskid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "kaleonodeid", "name", "description") VALUES
(20491, 0, 20154, 20158, '', '2021-05-30 13:05:04.963', '2021-05-30 13:05:04.963', 20468, 20488, 'update', '');


INSERT INTO "public"."kaleotaskassignment" ("kaleotaskassignmentid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleoclassname", "kaleoclasspk", "kaleodefinitionid", "kaleonodeid", "assigneeclassname", "assigneeclasspk", "assigneeactionid", "assigneescript", "assigneescriptlanguage", "assigneescriptrequiredcontexts") VALUES
(20477, 0, 20154, 20158, '', '2021-05-30 13:05:04.432', '2021-05-30 13:05:04.432', 'com.liferay.portal.workflow.kaleo.model.KaleoTask', 20476, 20468, 0, 'com.liferay.portal.model.Role', 20478, '', '', '', '');
INSERT INTO "public"."kaleotaskassignment" ("kaleotaskassignmentid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleoclassname", "kaleoclasspk", "kaleodefinitionid", "kaleonodeid", "assigneeclassname", "assigneeclasspk", "assigneeactionid", "assigneescript", "assigneescriptlanguage", "assigneescriptrequiredcontexts") VALUES
(20479, 0, 20154, 20158, '', '2021-05-30 13:05:04.637', '2021-05-30 13:05:04.637', 'com.liferay.portal.workflow.kaleo.model.KaleoTask', 20476, 20468, 0, 'com.liferay.portal.model.Role', 20161, '', '', '', '');
INSERT INTO "public"."kaleotaskassignment" ("kaleotaskassignmentid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleoclassname", "kaleoclasspk", "kaleodefinitionid", "kaleonodeid", "assigneeclassname", "assigneeclasspk", "assigneeactionid", "assigneescript", "assigneescriptlanguage", "assigneescriptrequiredcontexts") VALUES
(20480, 0, 20154, 20158, '', '2021-05-30 13:05:04.64', '2021-05-30 13:05:04.64', 'com.liferay.portal.workflow.kaleo.model.KaleoTask', 20476, 20468, 0, 'com.liferay.portal.model.Role', 20166, '', '', '', '');
INSERT INTO "public"."kaleotaskassignment" ("kaleotaskassignmentid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleoclassname", "kaleoclasspk", "kaleodefinitionid", "kaleonodeid", "assigneeclassname", "assigneeclasspk", "assigneeactionid", "assigneescript", "assigneescriptlanguage", "assigneescriptrequiredcontexts") VALUES
(20481, 0, 20154, 20158, '', '2021-05-30 13:05:04.643', '2021-05-30 13:05:04.643', 'com.liferay.portal.workflow.kaleo.model.KaleoTask', 20476, 20468, 0, 'com.liferay.portal.model.Role', 20167, '', '', '', ''),
(20482, 0, 20154, 20158, '', '2021-05-30 13:05:04.645', '2021-05-30 13:05:04.645', 'com.liferay.portal.workflow.kaleo.model.KaleoTask', 20476, 20468, 0, 'com.liferay.portal.model.Role', 20169, '', '', '', ''),
(20483, 0, 20154, 20158, '', '2021-05-30 13:05:04.649', '2021-05-30 13:05:04.649', 'com.liferay.portal.workflow.kaleo.model.KaleoTask', 20476, 20468, 0, 'com.liferay.portal.model.Role', 20484, '', '', '', ''),
(20485, 0, 20154, 20158, '', '2021-05-30 13:05:04.795', '2021-05-30 13:05:04.795', 'com.liferay.portal.workflow.kaleo.model.KaleoTask', 20476, 20468, 0, 'com.liferay.portal.model.Role', 20171, '', '', '', ''),
(20486, 0, 20154, 20158, '', '2021-05-30 13:05:04.797', '2021-05-30 13:05:04.797', 'com.liferay.portal.workflow.kaleo.model.KaleoTask', 20476, 20468, 0, 'com.liferay.portal.model.Role', 20487, '', '', '', ''),
(20492, 0, 20154, 20158, '', '2021-05-30 13:05:04.965', '2021-05-30 13:05:04.965', 'com.liferay.portal.workflow.kaleo.model.KaleoTask', 20491, 20468, 0, 'com.liferay.portal.model.User', 0, '', '', '', '');









INSERT INTO "public"."kaleotransition" ("kaleotransitionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "kaleonodeid", "name", "description", "sourcekaleonodeid", "sourcekaleonodename", "targetkaleonodeid", "targetkaleonodename", "defaulttransition") VALUES
(20495, 0, 20154, 20158, '', '2021-05-30 13:05:05.009', '2021-05-30 13:05:05.009', 20468, 20471, 'review', '', 20471, 'created', 20472, 'review', 't');
INSERT INTO "public"."kaleotransition" ("kaleotransitionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "kaleonodeid", "name", "description", "sourcekaleonodeid", "sourcekaleonodename", "targetkaleonodeid", "targetkaleonodename", "defaulttransition") VALUES
(20496, 0, 20154, 20158, '', '2021-05-30 13:05:05.095', '2021-05-30 13:05:05.095', 20468, 20472, 'approve', '', 20472, 'review', 20469, 'approved', 't');
INSERT INTO "public"."kaleotransition" ("kaleotransitionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "kaleonodeid", "name", "description", "sourcekaleonodeid", "sourcekaleonodename", "targetkaleonodeid", "targetkaleonodename", "defaulttransition") VALUES
(20497, 0, 20154, 20158, '', '2021-05-30 13:05:05.097', '2021-05-30 13:05:05.097', 20468, 20472, 'reject', '', 20472, 'review', 20488, 'update', 'f');
INSERT INTO "public"."kaleotransition" ("kaleotransitionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "kaleodefinitionid", "kaleonodeid", "name", "description", "sourcekaleonodeid", "sourcekaleonodename", "targetkaleonodeid", "targetkaleonodename", "defaulttransition") VALUES
(20498, 0, 20154, 20158, '', '2021-05-30 13:05:05.099', '2021-05-30 13:05:05.099', 20468, 20488, 'resubmit', '', 20488, 'update', 20472, 'review', 't');

INSERT INTO "public"."layout" ("uuid_", "plid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "privatelayout", "layoutid", "parentlayoutid", "name", "title", "description", "keywords", "robots", "type_", "typesettings", "hidden_", "friendlyurl", "iconimage", "iconimageid", "themeid", "colorschemeid", "wapthemeid", "wapcolorschemeid", "css", "priority", "layoutprototypeuuid", "layoutprototypelinkenabled", "sourceprototypelayoutuuid") VALUES
('b08c0ee6-7de1-41e8-93d8-38817c9001fe', 20175, 20172, 20154, 20158, '', '2021-05-30 13:04:21.765', '2021-05-30 13:04:21.765', 't', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Control Panel</Name></root>', '', '', '', '', 'control_panel', 'privateLayout=true
', 'f', '/manage', 'f', 0, '', '', '', '', '', 0, '', 'f', '');
INSERT INTO "public"."layout" ("uuid_", "plid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "privatelayout", "layoutid", "parentlayoutid", "name", "title", "description", "keywords", "robots", "type_", "typesettings", "hidden_", "friendlyurl", "iconimage", "iconimageid", "themeid", "colorschemeid", "wapthemeid", "wapcolorschemeid", "css", "priority", "layoutprototypeuuid", "layoutprototypelinkenabled", "sourceprototypelayoutuuid") VALUES
('2bd07a56-289a-4882-87a8-cc5ad9ab28a8', 20387, 20376, 20154, 20158, '', '2021-05-30 13:04:33.24', '2021-05-30 13:04:33.91', 't', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Home</Name></root>', '', '', '', '', 'portlet', 'column-1=116,
column-2=3,82,101_INSTANCE_3B45gnm0aIWH,
layout-template-id=2_columns_i
privateLayout=true
', 'f', '/home', 'f', 0, '', '', '', '', '', 0, '', 'f', '');
INSERT INTO "public"."layout" ("uuid_", "plid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "privatelayout", "layoutid", "parentlayoutid", "name", "title", "description", "keywords", "robots", "type_", "typesettings", "hidden_", "friendlyurl", "iconimage", "iconimageid", "themeid", "colorschemeid", "wapthemeid", "wapcolorschemeid", "css", "priority", "layoutprototypeuuid", "layoutprototypelinkenabled", "sourceprototypelayoutuuid") VALUES
('1a7aacff-6f46-4edb-bb9b-6a1bf61cb37f', 20342, 20339, 20154, 20158, '', '2021-05-30 13:04:29.859', '2021-05-30 13:04:30.185', 't', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Wiki</Name></root>', '', '', '', '', 'portlet', 'column-1=36,
column-2=122_INSTANCE_LIIqJ9xanQ9a,141_INSTANCE_KCTufRa3EdlY,
layout-template-id=2_columns_iii
privateLayout=true
', 'f', '/layout', 'f', 0, '', '', '', '', '', 0, '', 'f', '');
INSERT INTO "public"."layout" ("uuid_", "plid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "privatelayout", "layoutid", "parentlayoutid", "name", "title", "description", "keywords", "robots", "type_", "typesettings", "hidden_", "friendlyurl", "iconimage", "iconimageid", "themeid", "colorschemeid", "wapthemeid", "wapcolorschemeid", "css", "priority", "layoutprototypeuuid", "layoutprototypelinkenabled", "sourceprototypelayoutuuid") VALUES
('4598002f-f786-4254-92af-015daaee4f88', 20320, 20317, 20154, 20158, '', '2021-05-30 13:04:28.621', '2021-05-30 13:04:29.175', 't', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Blog</Name></root>', '', '', '', '', 'portlet', 'column-1=33,
column-2=148_INSTANCE_DLYlavU3okz7,114,
layout-template-id=2_columns_iii
privateLayout=true
', 'f', '/layout', 'f', 0, '', '', '', '', '', 0, '', 'f', ''),
('8ebfc8d9-d2ca-402a-8eeb-3a0f80dbf2c6', 20369, 20350, 20154, 20158, '', '2021-05-30 13:04:32.342', '2021-05-30 13:04:32.666', 't', 2, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Wiki</Name></root>', '', '', '', '', 'portlet', 'column-1=36,
column-2=122_INSTANCE_Ao3iUYFOTNy9,148_INSTANCE_OVwhU66EyPOd,
layout-template-id=2_columns_iii
privateLayout=true
', 'f', '/wiki', 'f', 0, '', '', '', '', '', 1, '', 'f', ''),
('9afd9f53-1def-41de-9067-f2421bcd58f2', 20332, 20329, 20154, 20158, '', '2021-05-30 13:04:29.255', '2021-05-30 13:04:29.735', 't', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Content Display Page</Name></root>', '', '', '', '', 'portlet', 'column-1=141_INSTANCE_BbACiNx07OfW,122_INSTANCE_qicEDkGIn0qb,
column-2=3,101_INSTANCE_CBQk3sz04uzE,
default-asset-publisher-portlet-id=101_INSTANCE_CBQk3sz04uzE
layout-template-id=2_columns_ii
privateLayout=true
', 'f', '/layout', 'f', 0, '', '', '', '', '', 0, '', 'f', ''),
('f59d54ce-a9e8-4700-9ee0-fad263efdff0', 21192, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:03.711', '2021-05-30 13:06:04.053', 't', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Welcome</Name></root>', '', '', '', '', 'portlet', 'column-1=82,23,11,
column-2=29,
layout-template-id=2_columns_ii
privateLayout=true
', 'f', '/home', 'f', 0, '', '', '', '', '', 0, '', 'f', ''),
('d41f5763-be39-4032-9912-d863fe5d6d7d', 20404, 20376, 20154, 20158, '', '2021-05-30 13:04:34.607', '2021-05-30 13:04:34.941', 't', 3, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">News</Name></root>', '', '', '', '', 'portlet', 'column-1=39_INSTANCE_8tltikUwrrkU,
column-2=39_INSTANCE_ITbYLVHfS66S,
layout-template-id=2_columns_iii
privateLayout=true
', 'f', '/news', 'f', 0, '', '', '', '', '', 2, '', 'f', ''),
('f7d3f990-affc-4342-b4aa-c7ffbfee14cc', 20361, 20350, 20154, 20158, '', '2021-05-30 13:04:31.804', '2021-05-30 13:04:32.301', 't', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Home</Name></root>', '', '', '', '', 'portlet', 'column-1=19,
column-2=3,59_INSTANCE_14bKpTF504WC,180,101_INSTANCE_CZDTqFGHFA7o,
layout-template-id=2_columns_iii
privateLayout=true
', 'f', '/home', 'f', 0, '', '', '', '', '', 0, '', 'f', ''),
('8ea6d950-7fbd-4f55-afcd-dd17d9616cf7', 20396, 20376, 20154, 20158, '', '2021-05-30 13:04:33.964', '2021-05-30 13:04:34.577', 't', 2, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Documents and Media</Name></root>', '', '', '', '', 'portlet', 'column-1=20,
column-2=101_INSTANCE_bYyBjb7FPi9j,
layout-template-id=1_column
privateLayout=true
', 'f', '/documents', 'f', 0, '', '', '', '', '', 1, '', 'f', ''),
('da95c45c-ac67-4743-a5d8-90724d3f860f', 20520, 20517, 20154, 20158, '', '2021-05-30 13:05:23.546', '2021-05-30 13:05:24.304', 'f', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Liferay, Inc. Extranet</Name></root>', '', '', '', '', 'portlet', 'column-1=3,
column-2=19,
layout-template-id=2_columns_ii
', 'f', '/extranet', 'f', 0, '', '', '', '', '', 0, '', 'f', ''),
('5e75aaa1-48f1-41a0-9a32-b8cd62c06da6', 20526, 20517, 20154, 20158, '', '2021-05-30 13:05:24.357', '2021-05-30 13:05:24.692', 't', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Liferay, Inc. Intranet</Name></root>', '', '', '', '', 'portlet', 'column-1=3,
column-2=19,
layout-template-id=2_columns_ii
privateLayout=true
', 'f', '/intranet', 'f', 0, '', '', '', '', '', 0, '', 'f', ''),
('8fa84d20-9161-4b52-a1ec-5ee99abefc75', 21198, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:04.083', '2021-05-30 13:06:04.188', 'f', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Welcome</Name></root>', '', '', '', '', 'portlet', 'column-1=82,3,
column-2=33,
layout-template-id=2_columns_ii
', 'f', '/home', 'f', 0, '', '', '', '', '', 0, '', 'f', ''),
('8761ec2f-af61-468b-a61b-53eb21221493', 20184, 20181, 20154, 20158, '', '2021-05-30 13:04:23.041', '2021-05-30 15:57:19.457', 'f', 1, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Реестр сотрудников</Name></root>', '', '', '', '', 'portlet', 'column-1=employeeregistermvc_WAR_employeeregisterbuilderportlet,
layout-template-id=1_column
layoutUpdateable=true
sitemap-changefreq=daily
sitemap-include=1
', 'f', '/home', 'f', 0, 'classic', '', '', '', '', 0, '', 'f', ''),
('baeb0633-0cf8-46b8-94d9-d16b6ddc6ec3', 21219, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:45:22.346', '2021-05-30 15:58:01.338', 'f', 2, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Реестр банков</Name></root>', '', '', '', '', 'portlet', 'column-1=bankregistermvc_WAR_employeeregisterbuilderportlet
layout-template-id=1_column
layoutUpdateable=true
sitemap-changefreq=daily
sitemap-include=1
', 'f', '/bank-register', 'f', 0, 'classic', '', '', '', '', 1, '', 'f', ''),
('5692c6ac-4b8b-48fb-84c0-7b1f6031c8a9', 21301, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:51:26.22', '2021-05-30 15:58:41.192', 'f', 3, 0, '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Реестр должностей</Name></root>', '', '', '', '', 'portlet', 'column-1=positionregistermvc_WAR_employeeregisterbuilderportlet,
layout-template-id=1_column
layoutUpdateable=true
sitemap-changefreq=daily
sitemap-include=1
', 'f', '/position-register', 'f', 0, 'classic', '', '', '', '', 2, '', 'f', '');



INSERT INTO "public"."layoutfriendlyurl" ("uuid_", "layoutfriendlyurlid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "plid", "privatelayout", "friendlyurl", "languageid") VALUES
('32f99e46-8b4e-4ea0-9541-15e51fd2e611', 20176, 20172, 20154, 20158, '', '2021-05-30 13:04:21.957', '2021-05-30 13:04:21.957', 20175, 't', '/manage', 'en_US');
INSERT INTO "public"."layoutfriendlyurl" ("uuid_", "layoutfriendlyurlid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "plid", "privatelayout", "friendlyurl", "languageid") VALUES
('b769dbd9-68ac-4dc6-a90c-36d3903302d2', 20185, 20181, 20154, 20158, '', '2021-05-30 13:04:23.174', '2021-05-30 13:04:23.174', 20184, 'f', '/home', 'en_US');
INSERT INTO "public"."layoutfriendlyurl" ("uuid_", "layoutfriendlyurlid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "plid", "privatelayout", "friendlyurl", "languageid") VALUES
('2ef1d5eb-ad28-4a67-a8b3-1524e134b139', 20321, 20317, 20154, 20158, '', '2021-05-30 13:04:28.68', '2021-05-30 13:04:28.68', 20320, 't', '/layout', 'en_US');
INSERT INTO "public"."layoutfriendlyurl" ("uuid_", "layoutfriendlyurlid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "plid", "privatelayout", "friendlyurl", "languageid") VALUES
('4f04fa5d-95f5-4d6e-97a3-40ddd7a56eba', 20333, 20329, 20154, 20158, '', '2021-05-30 13:04:29.315', '2021-05-30 13:04:29.315', 20332, 't', '/layout', 'en_US'),
('be4e1f6e-0f97-4854-a8ef-449e80cefa76', 20343, 20339, 20154, 20158, '', '2021-05-30 13:04:29.905', '2021-05-30 13:04:29.905', 20342, 't', '/layout', 'en_US'),
('b9765e0d-8a4e-4a60-b0ae-98162e6e06d2', 20362, 20350, 20154, 20158, '', '2021-05-30 13:04:31.868', '2021-05-30 13:04:31.868', 20361, 't', '/home', 'en_US'),
('a7af706f-ae48-4c47-8ece-5116034b07be', 20370, 20350, 20154, 20158, '', '2021-05-30 13:04:32.399', '2021-05-30 13:04:32.399', 20369, 't', '/wiki', 'en_US'),
('138bf727-9d2c-4663-a4a0-e4066271837f', 20388, 20376, 20154, 20158, '', '2021-05-30 13:04:33.311', '2021-05-30 13:04:33.311', 20387, 't', '/home', 'en_US'),
('e42254c1-6964-4496-b6d4-86f46a25383d', 20397, 20376, 20154, 20158, '', '2021-05-30 13:04:34.192', '2021-05-30 13:04:34.192', 20396, 't', '/documents', 'en_US'),
('3b159540-6983-4f4f-b811-339c8ea2a5b7', 20405, 20376, 20154, 20158, '', '2021-05-30 13:04:34.691', '2021-05-30 13:04:34.691', 20404, 't', '/news', 'en_US'),
('9576cc22-5498-4977-afe3-1a7ad7138cfb', 20521, 20517, 20154, 20158, '', '2021-05-30 13:05:23.696', '2021-05-30 13:05:23.696', 20520, 'f', '/extranet', 'en_US'),
('eca0f8de-a5c4-40aa-9ac7-8886e867ca6e', 20527, 20517, 20154, 20158, '', '2021-05-30 13:05:24.53', '2021-05-30 13:05:24.53', 20526, 't', '/intranet', 'en_US'),
('af43abaa-2336-4132-af0a-1fd9d5c1cf64', 21193, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:03.772', '2021-05-30 13:06:03.772', 21192, 't', '/home', 'en_US'),
('91f5b227-ff3b-457a-8e7c-51e02665db0d', 21199, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:04.131', '2021-05-30 13:06:04.131', 21198, 'f', '/home', 'en_US'),
('1130dabe-9343-44f3-9f2e-07fe81f360f3', 21220, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:45:22.923', '2021-05-30 13:45:22.923', 21219, 'f', '/bank-register', 'en_US'),
('cc48ce19-821a-4f17-b49f-7734ef997a08', 21302, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:51:26.262', '2021-05-30 13:51:26.262', 21301, 'f', '/position-register', 'en_US');

INSERT INTO "public"."layoutprototype" ("uuid_", "layoutprototypeid", "companyid", "userid", "username", "createdate", "modifieddate", "name", "description", "settings_", "active_") VALUES
('26191207-e66a-4ad8-a89f-b12402d02d42', 20316, 20154, 20158, '', '2021-05-30 13:04:28.536', '2021-05-30 13:04:28.536', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Blog</Name></root>', 'Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.', '', 't');
INSERT INTO "public"."layoutprototype" ("uuid_", "layoutprototypeid", "companyid", "userid", "username", "createdate", "modifieddate", "name", "description", "settings_", "active_") VALUES
('cce0268e-aa07-4e2d-a832-b61b793e6d3e', 20328, 20154, 20158, '', '2021-05-30 13:04:29.201', '2021-05-30 13:04:29.201', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Content Display Page</Name></root>', 'Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.', '', 't');
INSERT INTO "public"."layoutprototype" ("uuid_", "layoutprototypeid", "companyid", "userid", "username", "createdate", "modifieddate", "name", "description", "settings_", "active_") VALUES
('3b54c412-6648-478e-84d5-b8c65142b5ce', 20338, 20154, 20158, '', '2021-05-30 13:04:29.741', '2021-05-30 13:04:29.741', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Wiki</Name></root>', 'Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.', '', 't');



INSERT INTO "public"."layoutset" ("layoutsetid", "groupid", "companyid", "createdate", "modifieddate", "privatelayout", "logo", "logoid", "themeid", "colorschemeid", "wapthemeid", "wapcolorschemeid", "css", "pagecount", "settings_", "layoutsetprototypeuuid", "layoutsetprototypelinkenabled") VALUES
(20174, 20172, 20154, '2021-05-30 13:04:21.598', '2021-05-30 13:04:21.598', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f');
INSERT INTO "public"."layoutset" ("layoutsetid", "groupid", "companyid", "createdate", "modifieddate", "privatelayout", "logo", "logoid", "themeid", "colorschemeid", "wapthemeid", "wapcolorschemeid", "css", "pagecount", "settings_", "layoutsetprototypeuuid", "layoutsetprototypelinkenabled") VALUES
(20173, 20172, 20154, '2021-05-30 13:04:21.585', '2021-05-30 13:04:22.063', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 'f');
INSERT INTO "public"."layoutset" ("layoutsetid", "groupid", "companyid", "createdate", "modifieddate", "privatelayout", "logo", "logoid", "themeid", "colorschemeid", "wapthemeid", "wapcolorschemeid", "css", "pagecount", "settings_", "layoutsetprototypeuuid", "layoutsetprototypelinkenabled") VALUES
(20182, 20181, 20154, '2021-05-30 13:04:22.918', '2021-05-30 13:04:22.918', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f');
INSERT INTO "public"."layoutset" ("layoutsetid", "groupid", "companyid", "createdate", "modifieddate", "privatelayout", "logo", "logoid", "themeid", "colorschemeid", "wapthemeid", "wapcolorschemeid", "css", "pagecount", "settings_", "layoutsetprototypeuuid", "layoutsetprototypelinkenabled") VALUES
(20183, 20181, 20154, '2021-05-30 13:04:22.921', '2021-05-30 13:51:26.275', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 3, '', '', 'f'),
(20192, 20191, 20154, '2021-05-30 13:04:23.459', '2021-05-30 13:04:23.459', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20193, 20191, 20154, '2021-05-30 13:04:23.463', '2021-05-30 13:04:23.463', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20195, 20194, 20154, '2021-05-30 13:04:23.701', '2021-05-30 13:04:23.701', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20196, 20194, 20154, '2021-05-30 13:04:23.704', '2021-05-30 13:04:23.704', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20319, 20317, 20154, '2021-05-30 13:04:28.587', '2021-05-30 13:04:28.587', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20318, 20317, 20154, '2021-05-30 13:04:28.585', '2021-05-30 13:04:28.698', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 'f'),
(20331, 20329, 20154, '2021-05-30 13:04:29.232', '2021-05-30 13:04:29.232', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20330, 20329, 20154, '2021-05-30 13:04:29.227', '2021-05-30 13:04:29.346', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 'f'),
(20341, 20339, 20154, '2021-05-30 13:04:29.819', '2021-05-30 13:04:29.819', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20340, 20339, 20154, '2021-05-30 13:04:29.814', '2021-05-30 13:04:29.922', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 'f'),
(20352, 20350, 20154, '2021-05-30 13:04:30.344', '2021-05-30 13:04:30.344', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20202, 20201, 20154, '2021-05-30 13:04:24.422', '2021-05-30 13:06:03.788', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 'f'),
(20203, 20201, 20154, '2021-05-30 13:04:24.427', '2021-05-30 13:06:04.137', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 'f'),
(20377, 20376, 20154, '2021-05-30 13:04:32.739', '2021-05-30 13:04:34.941', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 3, '', '', 'f'),
(20519, 20517, 20154, '2021-05-30 13:05:22.923', '2021-05-30 13:05:23.736', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 'f'),
(20518, 20517, 20154, '2021-05-30 13:05:22.913', '2021-05-30 13:05:24.582', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 1, '', '', 'f'),
(20534, 20533, 20154, '2021-05-30 13:05:24.824', '2021-05-30 13:05:24.824', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20535, 20533, 20154, '2021-05-30 13:05:24.829', '2021-05-30 13:05:24.829', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20539, 20538, 20154, '2021-05-30 13:05:25.388', '2021-05-30 13:05:25.388', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20540, 20538, 20154, '2021-05-30 13:05:25.391', '2021-05-30 13:05:25.391', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20545, 20544, 20154, '2021-05-30 13:05:25.822', '2021-05-30 13:05:25.822', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20546, 20544, 20154, '2021-05-30 13:05:25.824', '2021-05-30 13:05:25.824', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20551, 20550, 20154, '2021-05-30 13:05:26.296', '2021-05-30 13:05:26.296', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20552, 20550, 20154, '2021-05-30 13:05:26.301', '2021-05-30 13:05:26.301', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20557, 20556, 20154, '2021-05-30 13:05:26.709', '2021-05-30 13:05:26.709', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20351, 20350, 20154, '2021-05-30 13:04:30.315', '2021-05-30 13:04:32.666', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 2, '', '', 'f'),
(20378, 20376, 20154, '2021-05-30 13:04:32.746', '2021-05-30 13:04:32.746', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20558, 20556, 20154, '2021-05-30 13:05:26.711', '2021-05-30 13:05:26.711', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20563, 20562, 20154, '2021-05-30 13:05:27.167', '2021-05-30 13:05:27.167', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20564, 20562, 20154, '2021-05-30 13:05:27.169', '2021-05-30 13:05:27.169', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20569, 20568, 20154, '2021-05-30 13:05:27.774', '2021-05-30 13:05:27.774', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20570, 20568, 20154, '2021-05-30 13:05:27.777', '2021-05-30 13:05:27.777', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20575, 20574, 20154, '2021-05-30 13:05:28.276', '2021-05-30 13:05:28.276', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20576, 20574, 20154, '2021-05-30 13:05:28.279', '2021-05-30 13:05:28.279', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20581, 20580, 20154, '2021-05-30 13:05:28.689', '2021-05-30 13:05:28.689', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20582, 20580, 20154, '2021-05-30 13:05:28.691', '2021-05-30 13:05:28.691', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20587, 20586, 20154, '2021-05-30 13:05:29.067', '2021-05-30 13:05:29.067', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20588, 20586, 20154, '2021-05-30 13:05:29.07', '2021-05-30 13:05:29.07', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20593, 20592, 20154, '2021-05-30 13:05:29.595', '2021-05-30 13:05:29.595', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20594, 20592, 20154, '2021-05-30 13:05:29.6', '2021-05-30 13:05:29.6', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20598, 20597, 20154, '2021-05-30 13:05:29.717', '2021-05-30 13:05:29.717', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20599, 20597, 20154, '2021-05-30 13:05:29.721', '2021-05-30 13:05:29.721', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20602, 20601, 20154, '2021-05-30 13:05:29.813', '2021-05-30 13:05:29.813', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20603, 20601, 20154, '2021-05-30 13:05:29.816', '2021-05-30 13:05:29.816', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20607, 20606, 20154, '2021-05-30 13:05:30.265', '2021-05-30 13:05:30.265', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20608, 20606, 20154, '2021-05-30 13:05:30.266', '2021-05-30 13:05:30.266', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20613, 20612, 20154, '2021-05-30 13:05:30.732', '2021-05-30 13:05:30.732', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20614, 20612, 20154, '2021-05-30 13:05:30.736', '2021-05-30 13:05:30.736', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20619, 20618, 20154, '2021-05-30 13:05:31.204', '2021-05-30 13:05:31.204', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20620, 20618, 20154, '2021-05-30 13:05:31.206', '2021-05-30 13:05:31.206', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20625, 20624, 20154, '2021-05-30 13:05:31.581', '2021-05-30 13:05:31.581', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20626, 20624, 20154, '2021-05-30 13:05:31.583', '2021-05-30 13:05:31.583', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20631, 20630, 20154, '2021-05-30 13:05:31.968', '2021-05-30 13:05:31.968', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20632, 20630, 20154, '2021-05-30 13:05:31.97', '2021-05-30 13:05:31.97', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20637, 20636, 20154, '2021-05-30 13:05:32.385', '2021-05-30 13:05:32.385', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20638, 20636, 20154, '2021-05-30 13:05:32.386', '2021-05-30 13:05:32.386', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20643, 20642, 20154, '2021-05-30 13:05:32.755', '2021-05-30 13:05:32.755', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20644, 20642, 20154, '2021-05-30 13:05:32.757', '2021-05-30 13:05:32.757', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20649, 20648, 20154, '2021-05-30 13:05:33.128', '2021-05-30 13:05:33.128', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20650, 20648, 20154, '2021-05-30 13:05:33.13', '2021-05-30 13:05:33.13', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20655, 20654, 20154, '2021-05-30 13:05:33.545', '2021-05-30 13:05:33.545', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20656, 20654, 20154, '2021-05-30 13:05:33.547', '2021-05-30 13:05:33.547', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20661, 20660, 20154, '2021-05-30 13:05:33.912', '2021-05-30 13:05:33.912', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20662, 20660, 20154, '2021-05-30 13:05:33.914', '2021-05-30 13:05:33.914', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20670, 20669, 20154, '2021-05-30 13:05:34.055', '2021-05-30 13:05:34.055', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20671, 20669, 20154, '2021-05-30 13:05:34.057', '2021-05-30 13:05:34.057', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20681, 20680, 20154, '2021-05-30 13:05:34.877', '2021-05-30 13:05:34.877', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20682, 20680, 20154, '2021-05-30 13:05:34.879', '2021-05-30 13:05:34.879', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20687, 20686, 20154, '2021-05-30 13:05:35.245', '2021-05-30 13:05:35.245', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20688, 20686, 20154, '2021-05-30 13:05:35.247', '2021-05-30 13:05:35.247', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20693, 20692, 20154, '2021-05-30 13:05:35.595', '2021-05-30 13:05:35.595', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20694, 20692, 20154, '2021-05-30 13:05:35.597', '2021-05-30 13:05:35.597', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20699, 20698, 20154, '2021-05-30 13:05:35.974', '2021-05-30 13:05:35.974', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20700, 20698, 20154, '2021-05-30 13:05:35.975', '2021-05-30 13:05:35.975', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20734, 20733, 20154, '2021-05-30 13:05:38.073', '2021-05-30 13:05:38.073', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20735, 20733, 20154, '2021-05-30 13:05:38.075', '2021-05-30 13:05:38.075', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20757, 20756, 20154, '2021-05-30 13:05:39.576', '2021-05-30 13:05:39.576', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20758, 20756, 20154, '2021-05-30 13:05:39.578', '2021-05-30 13:05:39.578', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20763, 20762, 20154, '2021-05-30 13:05:39.935', '2021-05-30 13:05:39.935', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20764, 20762, 20154, '2021-05-30 13:05:39.937', '2021-05-30 13:05:39.937', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20769, 20768, 20154, '2021-05-30 13:05:40.287', '2021-05-30 13:05:40.287', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20770, 20768, 20154, '2021-05-30 13:05:40.288', '2021-05-30 13:05:40.288', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20775, 20774, 20154, '2021-05-30 13:05:40.644', '2021-05-30 13:05:40.644', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20776, 20774, 20154, '2021-05-30 13:05:40.646', '2021-05-30 13:05:40.646', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20781, 20780, 20154, '2021-05-30 13:05:40.989', '2021-05-30 13:05:40.989', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20782, 20780, 20154, '2021-05-30 13:05:40.991', '2021-05-30 13:05:40.991', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20787, 20786, 20154, '2021-05-30 13:05:41.346', '2021-05-30 13:05:41.346', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20788, 20786, 20154, '2021-05-30 13:05:41.349', '2021-05-30 13:05:41.349', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20798, 20797, 20154, '2021-05-30 13:05:41.75', '2021-05-30 13:05:41.75', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20799, 20797, 20154, '2021-05-30 13:05:41.752', '2021-05-30 13:05:41.752', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20815, 20814, 20154, '2021-05-30 13:05:43.011', '2021-05-30 13:05:43.011', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20816, 20814, 20154, '2021-05-30 13:05:43.013', '2021-05-30 13:05:43.013', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20821, 20820, 20154, '2021-05-30 13:05:43.491', '2021-05-30 13:05:43.491', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20822, 20820, 20154, '2021-05-30 13:05:43.492', '2021-05-30 13:05:43.492', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20666, 20665, 20154, '2021-05-30 13:05:33.99', '2021-05-30 13:05:33.99', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20667, 20665, 20154, '2021-05-30 13:05:33.992', '2021-05-30 13:05:33.992', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20675, 20674, 20154, '2021-05-30 13:05:34.444', '2021-05-30 13:05:34.444', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20676, 20674, 20154, '2021-05-30 13:05:34.448', '2021-05-30 13:05:34.448', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20717, 20716, 20154, '2021-05-30 13:05:37.14', '2021-05-30 13:05:37.14', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20718, 20716, 20154, '2021-05-30 13:05:37.141', '2021-05-30 13:05:37.141', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20723, 20722, 20154, '2021-05-30 13:05:37.502', '2021-05-30 13:05:37.502', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f');
INSERT INTO "public"."layoutset" ("layoutsetid", "groupid", "companyid", "createdate", "modifieddate", "privatelayout", "logo", "logoid", "themeid", "colorschemeid", "wapthemeid", "wapcolorschemeid", "css", "pagecount", "settings_", "layoutsetprototypeuuid", "layoutsetprototypelinkenabled") VALUES
(20724, 20722, 20154, '2021-05-30 13:05:37.503', '2021-05-30 13:05:37.503', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20739, 20738, 20154, '2021-05-30 13:05:38.416', '2021-05-30 13:05:38.416', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20740, 20738, 20154, '2021-05-30 13:05:38.418', '2021-05-30 13:05:38.418', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20745, 20744, 20154, '2021-05-30 13:05:38.8', '2021-05-30 13:05:38.8', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20746, 20744, 20154, '2021-05-30 13:05:38.802', '2021-05-30 13:05:38.802', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20751, 20750, 20154, '2021-05-30 13:05:39.172', '2021-05-30 13:05:39.172', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20752, 20750, 20154, '2021-05-30 13:05:39.174', '2021-05-30 13:05:39.174', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20793, 20792, 20154, '2021-05-30 13:05:41.692', '2021-05-30 13:05:41.692', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20794, 20792, 20154, '2021-05-30 13:05:41.694', '2021-05-30 13:05:41.694', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20809, 20808, 20154, '2021-05-30 13:05:42.585', '2021-05-30 13:05:42.585', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20810, 20808, 20154, '2021-05-30 13:05:42.587', '2021-05-30 13:05:42.587', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20705, 20704, 20154, '2021-05-30 13:05:36.38', '2021-05-30 13:05:36.38', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20706, 20704, 20154, '2021-05-30 13:05:36.384', '2021-05-30 13:05:36.384', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20711, 20710, 20154, '2021-05-30 13:05:36.786', '2021-05-30 13:05:36.786', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20712, 20710, 20154, '2021-05-30 13:05:36.788', '2021-05-30 13:05:36.788', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20729, 20728, 20154, '2021-05-30 13:05:37.986', '2021-05-30 13:05:37.986', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20730, 20728, 20154, '2021-05-30 13:05:37.988', '2021-05-30 13:05:37.988', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20803, 20802, 20154, '2021-05-30 13:05:42.145', '2021-05-30 13:05:42.145', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20804, 20802, 20154, '2021-05-30 13:05:42.147', '2021-05-30 13:05:42.147', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20827, 20826, 20154, '2021-05-30 13:05:43.954', '2021-05-30 13:05:43.954', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20828, 20826, 20154, '2021-05-30 13:05:43.956', '2021-05-30 13:05:43.956', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20833, 20832, 20154, '2021-05-30 13:05:44.334', '2021-05-30 13:05:44.334', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20834, 20832, 20154, '2021-05-30 13:05:44.336', '2021-05-30 13:05:44.336', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20839, 20838, 20154, '2021-05-30 13:05:44.808', '2021-05-30 13:05:44.808', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20840, 20838, 20154, '2021-05-30 13:05:44.81', '2021-05-30 13:05:44.81', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20845, 20844, 20154, '2021-05-30 13:05:45.231', '2021-05-30 13:05:45.231', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20846, 20844, 20154, '2021-05-30 13:05:45.233', '2021-05-30 13:05:45.233', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20851, 20850, 20154, '2021-05-30 13:05:45.592', '2021-05-30 13:05:45.592', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20852, 20850, 20154, '2021-05-30 13:05:45.593', '2021-05-30 13:05:45.593', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20857, 20856, 20154, '2021-05-30 13:05:45.969', '2021-05-30 13:05:45.969', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20858, 20856, 20154, '2021-05-30 13:05:45.971', '2021-05-30 13:05:45.971', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20862, 20861, 20154, '2021-05-30 13:05:46.035', '2021-05-30 13:05:46.035', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20863, 20861, 20154, '2021-05-30 13:05:46.036', '2021-05-30 13:05:46.036', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20867, 20866, 20154, '2021-05-30 13:05:46.377', '2021-05-30 13:05:46.377', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20868, 20866, 20154, '2021-05-30 13:05:46.378', '2021-05-30 13:05:46.378', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20873, 20872, 20154, '2021-05-30 13:05:46.776', '2021-05-30 13:05:46.776', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20874, 20872, 20154, '2021-05-30 13:05:46.778', '2021-05-30 13:05:46.778', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20879, 20878, 20154, '2021-05-30 13:05:47.133', '2021-05-30 13:05:47.133', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20880, 20878, 20154, '2021-05-30 13:05:47.135', '2021-05-30 13:05:47.135', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20885, 20884, 20154, '2021-05-30 13:05:47.486', '2021-05-30 13:05:47.486', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20886, 20884, 20154, '2021-05-30 13:05:47.487', '2021-05-30 13:05:47.487', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20891, 20890, 20154, '2021-05-30 13:05:47.847', '2021-05-30 13:05:47.847', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20892, 20890, 20154, '2021-05-30 13:05:47.849', '2021-05-30 13:05:47.849', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20897, 20896, 20154, '2021-05-30 13:05:48.202', '2021-05-30 13:05:48.202', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20898, 20896, 20154, '2021-05-30 13:05:48.205', '2021-05-30 13:05:48.205', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20903, 20902, 20154, '2021-05-30 13:05:48.628', '2021-05-30 13:05:48.628', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20904, 20902, 20154, '2021-05-30 13:05:48.63', '2021-05-30 13:05:48.63', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20909, 20908, 20154, '2021-05-30 13:05:49.011', '2021-05-30 13:05:49.011', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20910, 20908, 20154, '2021-05-30 13:05:49.013', '2021-05-30 13:05:49.013', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20915, 20914, 20154, '2021-05-30 13:05:49.427', '2021-05-30 13:05:49.427', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20916, 20914, 20154, '2021-05-30 13:05:49.429', '2021-05-30 13:05:49.429', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20921, 20920, 20154, '2021-05-30 13:05:49.805', '2021-05-30 13:05:49.805', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20922, 20920, 20154, '2021-05-30 13:05:49.807', '2021-05-30 13:05:49.807', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20926, 20925, 20154, '2021-05-30 13:05:49.897', '2021-05-30 13:05:49.897', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20927, 20925, 20154, '2021-05-30 13:05:49.899', '2021-05-30 13:05:49.899', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20931, 20930, 20154, '2021-05-30 13:05:50.258', '2021-05-30 13:05:50.258', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20932, 20930, 20154, '2021-05-30 13:05:50.262', '2021-05-30 13:05:50.262', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20937, 20936, 20154, '2021-05-30 13:05:50.588', '2021-05-30 13:05:50.588', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20938, 20936, 20154, '2021-05-30 13:05:50.589', '2021-05-30 13:05:50.589', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20943, 20942, 20154, '2021-05-30 13:05:50.957', '2021-05-30 13:05:50.957', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20944, 20942, 20154, '2021-05-30 13:05:50.958', '2021-05-30 13:05:50.958', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20949, 20948, 20154, '2021-05-30 13:05:51.283', '2021-05-30 13:05:51.283', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20950, 20948, 20154, '2021-05-30 13:05:51.285', '2021-05-30 13:05:51.285', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20955, 20954, 20154, '2021-05-30 13:05:51.702', '2021-05-30 13:05:51.702', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20956, 20954, 20154, '2021-05-30 13:05:51.703', '2021-05-30 13:05:51.703', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20961, 20960, 20154, '2021-05-30 13:05:52.045', '2021-05-30 13:05:52.045', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20962, 20960, 20154, '2021-05-30 13:05:52.047', '2021-05-30 13:05:52.047', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20967, 20966, 20154, '2021-05-30 13:05:52.412', '2021-05-30 13:05:52.412', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20968, 20966, 20154, '2021-05-30 13:05:52.414', '2021-05-30 13:05:52.414', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20973, 20972, 20154, '2021-05-30 13:05:52.724', '2021-05-30 13:05:52.724', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20974, 20972, 20154, '2021-05-30 13:05:52.725', '2021-05-30 13:05:52.725', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20979, 20978, 20154, '2021-05-30 13:05:53.048', '2021-05-30 13:05:53.048', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20980, 20978, 20154, '2021-05-30 13:05:53.05', '2021-05-30 13:05:53.05', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20985, 20984, 20154, '2021-05-30 13:05:53.404', '2021-05-30 13:05:53.404', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20986, 20984, 20154, '2021-05-30 13:05:53.405', '2021-05-30 13:05:53.405', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20990, 20989, 20154, '2021-05-30 13:05:53.457', '2021-05-30 13:05:53.457', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20991, 20989, 20154, '2021-05-30 13:05:53.458', '2021-05-30 13:05:53.458', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20994, 20993, 20154, '2021-05-30 13:05:53.491', '2021-05-30 13:05:53.491', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20995, 20993, 20154, '2021-05-30 13:05:53.493', '2021-05-30 13:05:53.493', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(20999, 20998, 20154, '2021-05-30 13:05:53.785', '2021-05-30 13:05:53.785', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21000, 20998, 20154, '2021-05-30 13:05:53.787', '2021-05-30 13:05:53.787', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21005, 21004, 20154, '2021-05-30 13:05:54.101', '2021-05-30 13:05:54.101', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21006, 21004, 20154, '2021-05-30 13:05:54.103', '2021-05-30 13:05:54.103', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21011, 21010, 20154, '2021-05-30 13:05:54.443', '2021-05-30 13:05:54.443', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21012, 21010, 20154, '2021-05-30 13:05:54.445', '2021-05-30 13:05:54.445', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21017, 21016, 20154, '2021-05-30 13:05:54.852', '2021-05-30 13:05:54.852', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21018, 21016, 20154, '2021-05-30 13:05:54.854', '2021-05-30 13:05:54.854', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21023, 21022, 20154, '2021-05-30 13:05:55.226', '2021-05-30 13:05:55.226', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21024, 21022, 20154, '2021-05-30 13:05:55.228', '2021-05-30 13:05:55.228', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21029, 21028, 20154, '2021-05-30 13:05:55.534', '2021-05-30 13:05:55.534', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21030, 21028, 20154, '2021-05-30 13:05:55.535', '2021-05-30 13:05:55.535', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21035, 21034, 20154, '2021-05-30 13:05:55.851', '2021-05-30 13:05:55.851', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21036, 21034, 20154, '2021-05-30 13:05:55.852', '2021-05-30 13:05:55.852', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21041, 21040, 20154, '2021-05-30 13:05:56.173', '2021-05-30 13:05:56.173', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21042, 21040, 20154, '2021-05-30 13:05:56.174', '2021-05-30 13:05:56.174', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21047, 21046, 20154, '2021-05-30 13:05:56.502', '2021-05-30 13:05:56.502', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21048, 21046, 20154, '2021-05-30 13:05:56.504', '2021-05-30 13:05:56.504', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21053, 21052, 20154, '2021-05-30 13:05:56.81', '2021-05-30 13:05:56.81', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21054, 21052, 20154, '2021-05-30 13:05:56.812', '2021-05-30 13:05:56.812', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21058, 21057, 20154, '2021-05-30 13:05:56.867', '2021-05-30 13:05:56.867', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21059, 21057, 20154, '2021-05-30 13:05:56.869', '2021-05-30 13:05:56.869', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21063, 21062, 20154, '2021-05-30 13:05:57.171', '2021-05-30 13:05:57.171', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21064, 21062, 20154, '2021-05-30 13:05:57.173', '2021-05-30 13:05:57.173', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21069, 21068, 20154, '2021-05-30 13:05:57.541', '2021-05-30 13:05:57.541', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21070, 21068, 20154, '2021-05-30 13:05:57.543', '2021-05-30 13:05:57.543', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21075, 21074, 20154, '2021-05-30 13:05:57.903', '2021-05-30 13:05:57.903', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21076, 21074, 20154, '2021-05-30 13:05:57.908', '2021-05-30 13:05:57.908', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21081, 21080, 20154, '2021-05-30 13:05:58.322', '2021-05-30 13:05:58.322', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21082, 21080, 20154, '2021-05-30 13:05:58.325', '2021-05-30 13:05:58.325', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21087, 21086, 20154, '2021-05-30 13:05:58.657', '2021-05-30 13:05:58.657', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21088, 21086, 20154, '2021-05-30 13:05:58.659', '2021-05-30 13:05:58.659', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21093, 21092, 20154, '2021-05-30 13:05:58.995', '2021-05-30 13:05:58.995', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21094, 21092, 20154, '2021-05-30 13:05:58.997', '2021-05-30 13:05:58.997', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21099, 21098, 20154, '2021-05-30 13:05:59.314', '2021-05-30 13:05:59.314', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21100, 21098, 20154, '2021-05-30 13:05:59.316', '2021-05-30 13:05:59.316', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21105, 21104, 20154, '2021-05-30 13:05:59.636', '2021-05-30 13:05:59.636', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21106, 21104, 20154, '2021-05-30 13:05:59.637', '2021-05-30 13:05:59.637', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21111, 21110, 20154, '2021-05-30 13:05:59.961', '2021-05-30 13:05:59.961', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21112, 21110, 20154, '2021-05-30 13:05:59.963', '2021-05-30 13:05:59.963', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21117, 21116, 20154, '2021-05-30 13:06:00.317', '2021-05-30 13:06:00.317', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21118, 21116, 20154, '2021-05-30 13:06:00.318', '2021-05-30 13:06:00.318', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21122, 21121, 20154, '2021-05-30 13:06:00.372', '2021-05-30 13:06:00.372', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21123, 21121, 20154, '2021-05-30 13:06:00.373', '2021-05-30 13:06:00.373', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21126, 21125, 20154, '2021-05-30 13:06:00.415', '2021-05-30 13:06:00.415', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21127, 21125, 20154, '2021-05-30 13:06:00.416', '2021-05-30 13:06:00.416', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21131, 21130, 20154, '2021-05-30 13:06:00.747', '2021-05-30 13:06:00.747', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21132, 21130, 20154, '2021-05-30 13:06:00.749', '2021-05-30 13:06:00.749', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21137, 21136, 20154, '2021-05-30 13:06:01.063', '2021-05-30 13:06:01.063', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21138, 21136, 20154, '2021-05-30 13:06:01.065', '2021-05-30 13:06:01.065', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21143, 21142, 20154, '2021-05-30 13:06:01.368', '2021-05-30 13:06:01.368', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21144, 21142, 20154, '2021-05-30 13:06:01.369', '2021-05-30 13:06:01.369', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21149, 21148, 20154, '2021-05-30 13:06:01.673', '2021-05-30 13:06:01.673', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21150, 21148, 20154, '2021-05-30 13:06:01.674', '2021-05-30 13:06:01.674', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21155, 21154, 20154, '2021-05-30 13:06:01.979', '2021-05-30 13:06:01.979', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21156, 21154, 20154, '2021-05-30 13:06:01.981', '2021-05-30 13:06:01.981', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21161, 21160, 20154, '2021-05-30 13:06:02.303', '2021-05-30 13:06:02.303', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21162, 21160, 20154, '2021-05-30 13:06:02.305', '2021-05-30 13:06:02.305', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21167, 21166, 20154, '2021-05-30 13:06:02.612', '2021-05-30 13:06:02.612', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21168, 21166, 20154, '2021-05-30 13:06:02.613', '2021-05-30 13:06:02.613', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21173, 21172, 20154, '2021-05-30 13:06:02.927', '2021-05-30 13:06:02.927', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21174, 21172, 20154, '2021-05-30 13:06:02.929', '2021-05-30 13:06:02.929', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21179, 21178, 20154, '2021-05-30 13:06:03.238', '2021-05-30 13:06:03.238', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21180, 21178, 20154, '2021-05-30 13:06:03.239', '2021-05-30 13:06:03.239', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21185, 21184, 20154, '2021-05-30 13:06:03.548', '2021-05-30 13:06:03.548', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21186, 21184, 20154, '2021-05-30 13:06:03.55', '2021-05-30 13:06:03.55', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21190, 21189, 20154, '2021-05-30 13:06:03.602', '2021-05-30 13:06:03.602', 't', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f'),
(21191, 21189, 20154, '2021-05-30 13:06:03.603', '2021-05-30 13:06:03.603', 'f', 'f', 0, 'classic', '01', 'mobile', '01', '', 0, '', '', 'f');



INSERT INTO "public"."layoutsetprototype" ("uuid_", "layoutsetprototypeid", "companyid", "userid", "username", "createdate", "modifieddate", "name", "description", "settings_", "active_") VALUES
('ce2a8e5e-a1fd-43f0-a2e8-7e05644c263b', 20375, 20154, 20158, '', '2021-05-30 13:04:32.697', '2021-05-30 13:04:34.941', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Intranet Site</Name></root>', 'Site with Documents and News', 'layoutsUpdateable=true
', 't');
INSERT INTO "public"."layoutsetprototype" ("uuid_", "layoutsetprototypeid", "companyid", "userid", "username", "createdate", "modifieddate", "name", "description", "settings_", "active_") VALUES
('7f24683a-dbcb-4e0d-85fa-049b687b8905', 20349, 20154, 20158, '', '2021-05-30 13:04:30.216', '2021-05-30 13:04:32.666', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Name language-id="en_US">Community Site</Name></root>', 'Site with Forums and Wiki', 'layoutsUpdateable=true
', 't');


INSERT INTO "public"."listtype" ("listtypeid", "name", "type_") VALUES
(10000, 'billing', 'com.liferay.portal.model.Account.address');
INSERT INTO "public"."listtype" ("listtypeid", "name", "type_") VALUES
(10001, 'other', 'com.liferay.portal.model.Account.address');
INSERT INTO "public"."listtype" ("listtypeid", "name", "type_") VALUES
(10002, 'p-o-box', 'com.liferay.portal.model.Account.address');
INSERT INTO "public"."listtype" ("listtypeid", "name", "type_") VALUES
(10003, 'shipping', 'com.liferay.portal.model.Account.address'),
(10004, 'email-address', 'com.liferay.portal.model.Account.emailAddress'),
(10005, 'email-address-2', 'com.liferay.portal.model.Account.emailAddress'),
(10006, 'email-address-3', 'com.liferay.portal.model.Account.emailAddress'),
(10007, 'fax', 'com.liferay.portal.model.Account.phone'),
(10008, 'local', 'com.liferay.portal.model.Account.phone'),
(10009, 'other', 'com.liferay.portal.model.Account.phone'),
(10010, 'toll-free', 'com.liferay.portal.model.Account.phone'),
(10011, 'tty', 'com.liferay.portal.model.Account.phone'),
(10012, 'intranet', 'com.liferay.portal.model.Account.website'),
(10013, 'public', 'com.liferay.portal.model.Account.website'),
(11000, 'business', 'com.liferay.portal.model.Contact.address'),
(11001, 'other', 'com.liferay.portal.model.Contact.address'),
(11002, 'personal', 'com.liferay.portal.model.Contact.address'),
(11003, 'email-address', 'com.liferay.portal.model.Contact.emailAddress'),
(11004, 'email-address-2', 'com.liferay.portal.model.Contact.emailAddress'),
(11005, 'email-address-3', 'com.liferay.portal.model.Contact.emailAddress'),
(11006, 'business', 'com.liferay.portal.model.Contact.phone'),
(11007, 'business-fax', 'com.liferay.portal.model.Contact.phone'),
(11008, 'mobile-phone', 'com.liferay.portal.model.Contact.phone'),
(11009, 'other', 'com.liferay.portal.model.Contact.phone'),
(11010, 'pager', 'com.liferay.portal.model.Contact.phone'),
(11011, 'personal', 'com.liferay.portal.model.Contact.phone'),
(11012, 'personal-fax', 'com.liferay.portal.model.Contact.phone'),
(11013, 'tty', 'com.liferay.portal.model.Contact.phone'),
(11014, 'dr', 'com.liferay.portal.model.Contact.prefix'),
(11015, 'mr', 'com.liferay.portal.model.Contact.prefix'),
(11016, 'mrs', 'com.liferay.portal.model.Contact.prefix'),
(11017, 'ms', 'com.liferay.portal.model.Contact.prefix'),
(11020, 'ii', 'com.liferay.portal.model.Contact.suffix'),
(11021, 'iii', 'com.liferay.portal.model.Contact.suffix'),
(11022, 'iv', 'com.liferay.portal.model.Contact.suffix'),
(11023, 'jr', 'com.liferay.portal.model.Contact.suffix'),
(11024, 'phd', 'com.liferay.portal.model.Contact.suffix'),
(11025, 'sr', 'com.liferay.portal.model.Contact.suffix'),
(11026, 'blog', 'com.liferay.portal.model.Contact.website'),
(11027, 'business', 'com.liferay.portal.model.Contact.website'),
(11028, 'other', 'com.liferay.portal.model.Contact.website'),
(11029, 'personal', 'com.liferay.portal.model.Contact.website'),
(12000, 'billing', 'com.liferay.portal.model.Organization.address'),
(12001, 'other', 'com.liferay.portal.model.Organization.address'),
(12002, 'p-o-box', 'com.liferay.portal.model.Organization.address'),
(12003, 'shipping', 'com.liferay.portal.model.Organization.address'),
(12004, 'email-address', 'com.liferay.portal.model.Organization.emailAddress'),
(12005, 'email-address-2', 'com.liferay.portal.model.Organization.emailAddress'),
(12006, 'email-address-3', 'com.liferay.portal.model.Organization.emailAddress'),
(12007, 'fax', 'com.liferay.portal.model.Organization.phone'),
(12008, 'local', 'com.liferay.portal.model.Organization.phone'),
(12009, 'other', 'com.liferay.portal.model.Organization.phone'),
(12010, 'toll-free', 'com.liferay.portal.model.Organization.phone'),
(12011, 'tty', 'com.liferay.portal.model.Organization.phone'),
(12012, 'administrative', 'com.liferay.portal.model.Organization.service'),
(12013, 'contracts', 'com.liferay.portal.model.Organization.service'),
(12014, 'donation', 'com.liferay.portal.model.Organization.service'),
(12015, 'retail', 'com.liferay.portal.model.Organization.service'),
(12016, 'training', 'com.liferay.portal.model.Organization.service'),
(12017, 'full-member', 'com.liferay.portal.model.Organization.status'),
(12018, 'provisional-member', 'com.liferay.portal.model.Organization.status'),
(12019, 'intranet', 'com.liferay.portal.model.Organization.website'),
(12020, 'public', 'com.liferay.portal.model.Organization.website');











INSERT INTO "public"."mbdiscussion" ("uuid_", "discussionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "threadid") VALUES
('d009cc01-199e-4bd4-90a3-2d412b8798a9', 20180, 0, 0, 20158, '', '2021-05-30 13:04:22.817', '2021-05-30 13:04:22.817', 20002, 20175, 20178);
INSERT INTO "public"."mbdiscussion" ("uuid_", "discussionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "threadid") VALUES
('e5fa48aa-eb8e-404f-8910-93cf09c70820', 20189, 0, 0, 20158, '', '2021-05-30 13:04:23.344', '2021-05-30 13:04:23.344', 20002, 20184, 20187);
INSERT INTO "public"."mbdiscussion" ("uuid_", "discussionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "threadid") VALUES
('18cf9e95-a847-4ba9-a65e-5936b838f967', 20326, 0, 0, 20158, '', '2021-05-30 13:04:28.895', '2021-05-30 13:04:28.895', 20002, 20320, 20323);
INSERT INTO "public"."mbdiscussion" ("uuid_", "discussionid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "threadid") VALUES
('3fbf04d7-8c97-4e69-8e03-9aa1c1b77b83', 20337, 0, 0, 20158, '', '2021-05-30 13:04:29.415', '2021-05-30 13:04:29.415', 20002, 20332, 20335),
('92b6bdcb-67e3-46fe-af35-7b60e3b21661', 20347, 0, 0, 20158, '', '2021-05-30 13:04:30.003', '2021-05-30 13:04:30.003', 20002, 20342, 20345),
('660839db-e30d-47f2-a152-2ae8af888dd3', 20366, 0, 0, 20158, '', '2021-05-30 13:04:31.923', '2021-05-30 13:04:31.923', 20002, 20361, 20364),
('47c5391e-8b6d-4e13-ae3d-fbf60e5e6bc0', 20374, 0, 0, 20158, '', '2021-05-30 13:04:32.455', '2021-05-30 13:04:32.455', 20002, 20369, 20372),
('d9a5b5c7-f2a5-457a-a369-e40b77eb39e5', 20392, 0, 0, 20158, '', '2021-05-30 13:04:33.398', '2021-05-30 13:04:33.398', 20002, 20387, 20390),
('bba06fef-f493-48f6-bafc-7a0c33be7c54', 20401, 0, 0, 20158, '', '2021-05-30 13:04:34.289', '2021-05-30 13:04:34.289', 20002, 20396, 20399),
('4bb98620-f396-4bc8-96ec-5a480fceecf1', 20409, 0, 0, 20158, '', '2021-05-30 13:04:34.753', '2021-05-30 13:04:34.753', 20002, 20404, 20407),
('40ce1409-cc31-4e93-a10a-7090d931f2be', 20525, 0, 0, 20158, '', '2021-05-30 13:05:24.256', '2021-05-30 13:05:24.256', 20002, 20520, 20523),
('8dadd2d0-fc47-4765-b8e4-49829ce34388', 20531, 0, 0, 20158, '', '2021-05-30 13:05:24.642', '2021-05-30 13:05:24.642', 20002, 20526, 20529),
('1e6e513d-be5d-41a2-a203-d8217577d03e', 21197, 0, 0, 20198, 'Joe Bloggs', '2021-05-30 13:06:04.018', '2021-05-30 13:06:04.018', 20002, 21192, 21195),
('9da8b37f-1953-4637-b26a-db43d2d97076', 21203, 0, 0, 20198, 'Joe Bloggs', '2021-05-30 13:06:04.162', '2021-05-30 13:06:04.162', 20002, 21198, 21201),
('be404d66-2500-4512-a982-b2b59f9b4953', 21224, 0, 0, 20198, 'Joe Bloggs', '2021-05-30 13:45:22.981', '2021-05-30 13:45:22.981', 20002, 21219, 21222),
('1d0809a8-db83-4473-abc7-6fda12fa8c3b', 21306, 0, 0, 20198, 'Joe Bloggs', '2021-05-30 13:51:26.41', '2021-05-30 13:51:26.41', 20002, 21301, 21304);



INSERT INTO "public"."mbmessage" ("uuid_", "messageid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "categoryid", "threadid", "rootmessageid", "parentmessageid", "subject", "body", "format", "anonymous", "priority", "allowpingbacks", "answer", "status", "statusbyuserid", "statusbyusername", "statusdate") VALUES
('285a326e-985b-402f-a380-e68dded721ab', 20177, 20172, 20154, 20158, '', '2021-05-30 13:04:22.096', '2021-05-30 13:04:22.096', 20002, 20175, -1, 20178, 20177, 0, '20175', '20175', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:22.316');
INSERT INTO "public"."mbmessage" ("uuid_", "messageid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "categoryid", "threadid", "rootmessageid", "parentmessageid", "subject", "body", "format", "anonymous", "priority", "allowpingbacks", "answer", "status", "statusbyuserid", "statusbyusername", "statusdate") VALUES
('2a5eb140-5d77-4f26-a349-cac9cc42674a', 20186, 20181, 20154, 20158, '', '2021-05-30 13:04:23.296', '2021-05-30 13:04:23.296', 20002, 20184, -1, 20187, 20186, 0, '20184', '20184', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:23.31');
INSERT INTO "public"."mbmessage" ("uuid_", "messageid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "categoryid", "threadid", "rootmessageid", "parentmessageid", "subject", "body", "format", "anonymous", "priority", "allowpingbacks", "answer", "status", "statusbyuserid", "statusbyusername", "statusdate") VALUES
('cf8a4f08-9524-4735-861e-9b31643e5efe', 20322, 20317, 20154, 20158, '', '2021-05-30 13:04:28.708', '2021-05-30 13:04:28.708', 20002, 20320, -1, 20323, 20322, 0, '20320', '20320', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:28.865');
INSERT INTO "public"."mbmessage" ("uuid_", "messageid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "categoryid", "threadid", "rootmessageid", "parentmessageid", "subject", "body", "format", "anonymous", "priority", "allowpingbacks", "answer", "status", "statusbyuserid", "statusbyusername", "statusdate") VALUES
('12e3ff1e-4099-4adb-81ce-c433f6714eb7', 20334, 20329, 20154, 20158, '', '2021-05-30 13:04:29.352', '2021-05-30 13:04:29.352', 20002, 20332, -1, 20335, 20334, 0, '20332', '20332', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:29.38'),
('1dcbc287-0100-48fd-b51b-eb2ea165fa20', 20344, 20339, 20154, 20158, '', '2021-05-30 13:04:29.929', '2021-05-30 13:04:29.929', 20002, 20342, -1, 20345, 20344, 0, '20342', '20342', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:29.952'),
('44236c58-cd2a-4930-85c4-b2ee04447e33', 20363, 20350, 20154, 20158, '', '2021-05-30 13:04:31.893', '2021-05-30 13:04:31.893', 20002, 20361, -1, 20364, 20363, 0, '20361', '20361', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:31.899'),
('637b9231-8eea-4204-b82f-836084b502bb', 20371, 20350, 20154, 20158, '', '2021-05-30 13:04:32.416', '2021-05-30 13:04:32.416', 20002, 20369, -1, 20372, 20371, 0, '20369', '20369', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:32.424'),
('fe1fce31-09e2-4421-a75b-4709ed1ee8dd', 20389, 20376, 20154, 20158, '', '2021-05-30 13:04:33.352', '2021-05-30 13:04:33.352', 20002, 20387, -1, 20390, 20389, 0, '20387', '20387', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:33.364'),
('39bf3361-09b5-4c99-950b-ff42c7bd914c', 20398, 20376, 20154, 20158, '', '2021-05-30 13:04:34.221', '2021-05-30 13:04:34.221', 20002, 20396, -1, 20399, 20398, 0, '20396', '20396', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:34.242'),
('fb6b85e7-345d-4fbb-80fa-f7964e1ddf4e', 20406, 20376, 20154, 20158, '', '2021-05-30 13:04:34.709', '2021-05-30 13:04:34.709', 20002, 20404, -1, 20407, 20406, 0, '20404', '20404', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:04:34.716'),
('35973d94-585d-456b-be25-43f83817f33e', 20522, 20517, 20154, 20158, '', '2021-05-30 13:05:23.747', '2021-05-30 13:05:23.747', 20002, 20520, -1, 20523, 20522, 0, '20520', '20520', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:05:23.778'),
('fe3475ee-23c0-4f13-a6c8-8251499ff4e2', 20528, 20517, 20154, 20158, '', '2021-05-30 13:05:24.596', '2021-05-30 13:05:24.596', 20002, 20526, -1, 20529, 20528, 0, '20526', '20526', 'bbcode', 't', 0, 'f', 'f', 0, 20158, '', '2021-05-30 13:05:24.608'),
('c7c4e386-dd24-415f-aa7b-bc205ed4f7e1', 21194, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:03.795', '2021-05-30 13:06:03.795', 20002, 21192, -1, 21195, 21194, 0, '21192', '21192', 'bbcode', 'f', 0, 'f', 'f', 0, 20198, 'Joe Bloggs', '2021-05-30 13:06:03.805'),
('c8e804fd-51ae-4185-8022-809f521a5fad', 21200, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:04.143', '2021-05-30 13:06:04.143', 20002, 21198, -1, 21201, 21200, 0, '21198', '21198', 'bbcode', 'f', 0, 'f', 'f', 0, 20198, 'Joe Bloggs', '2021-05-30 13:06:04.149'),
('92d0c440-3fd1-4f44-b1ea-d91f3725eac7', 21221, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:45:22.939', '2021-05-30 13:45:22.939', 20002, 21219, -1, 21222, 21221, 0, '21219', '21219', 'bbcode', 'f', 0, 'f', 'f', 0, 20198, 'Joe Bloggs', '2021-05-30 13:45:22.956'),
('7770a4c5-9e1b-4338-9171-ba659c48cf7f', 21303, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:51:26.285', '2021-05-30 13:51:26.285', 20002, 21301, -1, 21304, 21303, 0, '21301', '21301', 'bbcode', 'f', 0, 'f', 'f', 0, 20198, 'Joe Bloggs', '2021-05-30 13:51:26.336');



INSERT INTO "public"."mbthread" ("uuid_", "threadid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "categoryid", "rootmessageid", "rootmessageuserid", "messagecount", "viewcount", "lastpostbyuserid", "lastpostdate", "priority", "question", "status", "statusbyuserid", "statusbyusername", "statusdate") VALUES
('7d8d4435-20a9-4203-bf27-a727cdcc504e', 20178, 20172, 20154, 20158, '', '2021-05-30 13:04:22.099', '2021-05-30 13:04:22.316', -1, 20177, 20158, 1, 0, 0, '2021-05-30 13:04:22.316', 0, 'f', 0, 20158, '', '2021-05-30 13:04:22.316');
INSERT INTO "public"."mbthread" ("uuid_", "threadid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "categoryid", "rootmessageid", "rootmessageuserid", "messagecount", "viewcount", "lastpostbyuserid", "lastpostdate", "priority", "question", "status", "statusbyuserid", "statusbyusername", "statusdate") VALUES
('8a35e833-98ad-417f-9d95-d90db26468e1', 20187, 20181, 20154, 20158, '', '2021-05-30 13:04:23.297', '2021-05-30 13:04:23.31', -1, 20186, 20158, 1, 0, 0, '2021-05-30 13:04:23.31', 0, 'f', 0, 20158, '', '2021-05-30 13:04:23.31');
INSERT INTO "public"."mbthread" ("uuid_", "threadid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "categoryid", "rootmessageid", "rootmessageuserid", "messagecount", "viewcount", "lastpostbyuserid", "lastpostdate", "priority", "question", "status", "statusbyuserid", "statusbyusername", "statusdate") VALUES
('a19949d3-40c9-475d-95e6-f7d812b153bb', 20323, 20317, 20154, 20158, '', '2021-05-30 13:04:28.709', '2021-05-30 13:04:28.865', -1, 20322, 20158, 1, 0, 0, '2021-05-30 13:04:28.865', 0, 'f', 0, 20158, '', '2021-05-30 13:04:28.865');
INSERT INTO "public"."mbthread" ("uuid_", "threadid", "groupid", "companyid", "userid", "username", "createdate", "modifieddate", "categoryid", "rootmessageid", "rootmessageuserid", "messagecount", "viewcount", "lastpostbyuserid", "lastpostdate", "priority", "question", "status", "statusbyuserid", "statusbyusername", "statusdate") VALUES
('2bb130df-751f-47df-a0c6-5ffaa6fbb718', 20335, 20329, 20154, 20158, '', '2021-05-30 13:04:29.352', '2021-05-30 13:04:29.38', -1, 20334, 20158, 1, 0, 0, '2021-05-30 13:04:29.38', 0, 'f', 0, 20158, '', '2021-05-30 13:04:29.38'),
('85f5daad-6252-4fd5-bd82-6ea1b3f26511', 20345, 20339, 20154, 20158, '', '2021-05-30 13:04:29.929', '2021-05-30 13:04:29.952', -1, 20344, 20158, 1, 0, 0, '2021-05-30 13:04:29.952', 0, 'f', 0, 20158, '', '2021-05-30 13:04:29.952'),
('039d6f4f-9c2a-415e-97e3-f66eff3dee47', 20407, 20376, 20154, 20158, '', '2021-05-30 13:04:34.709', '2021-05-30 13:04:34.716', -1, 20406, 20158, 1, 0, 0, '2021-05-30 13:04:34.716', 0, 'f', 0, 20158, '', '2021-05-30 13:04:34.716'),
('f9926622-464e-4172-ba18-1e73514abd82', 20364, 20350, 20154, 20158, '', '2021-05-30 13:04:31.893', '2021-05-30 13:04:31.899', -1, 20363, 20158, 1, 0, 0, '2021-05-30 13:04:31.899', 0, 'f', 0, 20158, '', '2021-05-30 13:04:31.899'),
('b4985e97-8a8c-403c-b8f8-93afe9f440a5', 20372, 20350, 20154, 20158, '', '2021-05-30 13:04:32.416', '2021-05-30 13:04:32.424', -1, 20371, 20158, 1, 0, 0, '2021-05-30 13:04:32.424', 0, 'f', 0, 20158, '', '2021-05-30 13:04:32.424'),
('0ebbd862-bc8b-478d-a01b-1cfcdcdcfaa5', 20390, 20376, 20154, 20158, '', '2021-05-30 13:04:33.352', '2021-05-30 13:04:33.364', -1, 20389, 20158, 1, 0, 0, '2021-05-30 13:04:33.364', 0, 'f', 0, 20158, '', '2021-05-30 13:04:33.364'),
('df49c9ad-bec1-4d96-9175-bbbafc87bd34', 20399, 20376, 20154, 20158, '', '2021-05-30 13:04:34.222', '2021-05-30 13:04:34.242', -1, 20398, 20158, 1, 0, 0, '2021-05-30 13:04:34.242', 0, 'f', 0, 20158, '', '2021-05-30 13:04:34.242'),
('82eb9dd8-562b-4bb4-b601-b651d4742785', 20523, 20517, 20154, 20158, '', '2021-05-30 13:05:23.749', '2021-05-30 13:05:23.778', -1, 20522, 20158, 1, 0, 0, '2021-05-30 13:05:23.778', 0, 'f', 0, 20158, '', '2021-05-30 13:05:23.778'),
('5e62c424-b89d-485a-ae9f-96731374df7f', 20529, 20517, 20154, 20158, '', '2021-05-30 13:05:24.596', '2021-05-30 13:05:24.608', -1, 20528, 20158, 1, 0, 0, '2021-05-30 13:05:24.608', 0, 'f', 0, 20158, '', '2021-05-30 13:05:24.608'),
('2a223958-d7b4-454d-9a24-a562e121ee07', 21195, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:03.795', '2021-05-30 13:06:03.805', -1, 21194, 20198, 1, 0, 20198, '2021-05-30 13:06:03.805', 0, 'f', 0, 20198, 'Joe Bloggs', '2021-05-30 13:06:03.805'),
('3886390c-8c48-4ddc-aa65-8e863e0c35c1', 21201, 20201, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:06:04.144', '2021-05-30 13:06:04.149', -1, 21200, 20198, 1, 0, 20198, '2021-05-30 13:06:04.149', 0, 'f', 0, 20198, 'Joe Bloggs', '2021-05-30 13:06:04.149'),
('7fae7cdf-b3b0-4224-991a-a7a381451d7c', 21222, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:45:22.939', '2021-05-30 13:45:22.956', -1, 21221, 20198, 1, 0, 20198, '2021-05-30 13:45:22.956', 0, 'f', 0, 20198, 'Joe Bloggs', '2021-05-30 13:45:22.956'),
('c6cb867e-1950-4635-9fe2-a95c7de30d02', 21304, 20181, 20154, 20198, 'Joe Bloggs', '2021-05-30 13:51:26.292', '2021-05-30 13:51:26.336', -1, 21303, 20198, 1, 0, 20198, '2021-05-30 13:51:26.336', 0, 'f', 0, 20198, 'Joe Bloggs', '2021-05-30 13:51:26.336');





















INSERT INTO "public"."organization_" ("uuid_", "organizationid", "companyid", "userid", "username", "createdate", "modifieddate", "parentorganizationid", "treepath", "name", "type_", "recursable", "regionid", "countryid", "statusid", "comments") VALUES
('8489b57e-0827-4383-9946-30e97fc6ec78', 20516, 20154, 20158, '', '2021-05-30 13:05:22.783', '2021-05-30 13:05:22.783', 0, '/20516/', 'Liferay, Inc.', 'regular-organization', 't', 0, 0, 12017, '');
INSERT INTO "public"."organization_" ("uuid_", "organizationid", "companyid", "userid", "username", "createdate", "modifieddate", "parentorganizationid", "treepath", "name", "type_", "recursable", "regionid", "countryid", "statusid", "comments") VALUES
('e80e6071-cbeb-4940-a46e-e52296b83040', 20532, 20154, 20158, '', '2021-05-30 13:05:24.777', '2021-05-30 13:05:24.777', 20516, '/20516/20532/', 'Liferay Chicago', 'location', 't', 19014, 19, 12017, '');
INSERT INTO "public"."organization_" ("uuid_", "organizationid", "companyid", "userid", "username", "createdate", "modifieddate", "parentorganizationid", "treepath", "name", "type_", "recursable", "regionid", "countryid", "statusid", "comments") VALUES
('7bb9a2af-61ab-4d64-b1ea-f95b874d31cd', 20596, 20154, 20158, '', '2021-05-30 13:05:29.702', '2021-05-30 13:05:29.702', 20516, '/20516/20596/', 'Liferay Consulting', 'regular-organization', 't', 19005, 19, 12017, '');
INSERT INTO "public"."organization_" ("uuid_", "organizationid", "companyid", "userid", "username", "createdate", "modifieddate", "parentorganizationid", "treepath", "name", "type_", "recursable", "regionid", "countryid", "statusid", "comments") VALUES
('3eca7763-9ec0-4077-b288-c2fc3d474ef0', 20600, 20154, 20158, '', '2021-05-30 13:05:29.788', '2021-05-30 13:05:29.788', 20516, '/20516/20600/', 'Liferay Dalian', 'location', 't', 0, 2, 12017, ''),
('a48c3950-169c-4835-83b4-0df16bfd407a', 20664, 20154, 20158, '', '2021-05-30 13:05:33.98', '2021-05-30 13:05:33.98', 20516, '/20516/20664/', 'Liferay Engineering', 'regular-organization', 't', 19005, 19, 12017, ''),
('56f7b9de-8cc1-4b0d-b907-52a7831ea431', 20668, 20154, 20158, '', '2021-05-30 13:05:34.034', '2021-05-30 13:05:34.034', 20516, '/20516/20668/', 'Liferay Frankfurt', 'location', 't', 0, 4, 12017, ''),
('310dd81a-7b66-4963-b3a0-122ba835d63b', 20732, 20154, 20158, '', '2021-05-30 13:05:38.06', '2021-05-30 13:05:38.06', 20516, '/20516/20732/', 'Liferay Hong Kong', 'location', 't', 0, 2, 12017, ''),
('590053d2-856e-4376-b490-e6643ea77e04', 20796, 20154, 20158, '', '2021-05-30 13:05:41.741', '2021-05-30 13:05:41.741', 20516, '/20516/20796/', 'Liferay Kuala Lumpur', 'location', 't', 0, 135, 12017, ''),
('2b7d687a-f129-4109-8f76-339348ce9d69', 20860, 20154, 20158, '', '2021-05-30 13:05:46.027', '2021-05-30 13:05:46.027', 20516, '/20516/20860/', 'Liferay Los Angeles', 'location', 't', 19005, 19, 12017, ''),
('6bc60a71-797d-434b-9f4d-cd385a5b64c4', 20924, 20154, 20158, '', '2021-05-30 13:05:49.886', '2021-05-30 13:05:49.886', 20516, '/20516/20924/', 'Liferay Madrid', 'location', 't', 0, 15, 12017, ''),
('2711f8a0-15d4-441b-925f-31fe3f34365f', 20988, 20154, 20158, '', '2021-05-30 13:05:53.449', '2021-05-30 13:05:53.449', 20516, '/20516/20988/', 'Liferay Marketing', 'regular-organization', 't', 19005, 19, 12017, ''),
('b6bc8098-f6fd-4976-bad0-4c628f9adf76', 20992, 20154, 20158, '', '2021-05-30 13:05:53.485', '2021-05-30 13:05:53.485', 20516, '/20516/20992/', 'Liferay New York', 'location', 't', 19033, 19, 12017, ''),
('813776a7-2479-463d-a028-934bab37375d', 21056, 20154, 20158, '', '2021-05-30 13:05:56.855', '2021-05-30 13:05:56.855', 20516, '/20516/21056/', 'Liferay Saint Paulo', 'location', 't', 0, 48, 12017, ''),
('5004d820-6265-4bfd-8e96-7288bdfc11b5', 21120, 20154, 20158, '', '2021-05-30 13:06:00.364', '2021-05-30 13:06:00.364', 20516, '/20516/21120/', 'Liferay Sales', 'regular-organization', 't', 19005, 19, 12017, ''),
('9101c3a2-f37f-4018-875f-fbdd34c9d8f6', 21124, 20154, 20158, '', '2021-05-30 13:06:00.406', '2021-05-30 13:06:00.406', 20516, '/20516/21124/', 'Liferay San Francisco', 'location', 't', 19005, 19, 12017, ''),
('d4336ca5-f1a2-4e28-ab8e-8dbf2e3c24cd', 21188, 20154, 20158, '', '2021-05-30 13:06:03.592', '2021-05-30 13:06:03.592', 20516, '/20516/21188/', 'Liferay Support', 'regular-organization', 't', 19005, 19, 12017, '');





INSERT INTO "public"."passwordpolicy" ("uuid_", "passwordpolicyid", "companyid", "userid", "username", "createdate", "modifieddate", "defaultpolicy", "name", "description", "changeable", "changerequired", "minage", "checksyntax", "allowdictionarywords", "minalphanumeric", "minlength", "minlowercase", "minnumbers", "minsymbols", "minuppercase", "regex", "history", "historycount", "expireable", "maxage", "warningtime", "gracelimit", "lockout", "maxfailure", "lockoutduration", "requireunlock", "resetfailurecount", "resetticketmaxage") VALUES
('491a10fd-a96e-4b37-b936-9342ac9b3d5e', 20197, 20154, 20158, '', '2021-05-30 13:04:23.754', '2021-05-30 13:04:23.754', 't', 'Default Password Policy', 'Default Password Policy', 't', 't', 0, 'f', 't', 0, 6, 0, 1, 0, 1, '(?=.{4})(?:[a-zA-Z0-9]*)', 'f', 6, 'f', 8640000, 86400, 0, 'f', 3, 0, 't', 600, 86400);
















INSERT INTO "public"."portalpreferences" ("portalpreferencesid", "ownerid", "ownertype", "preferences") VALUES
(20160, 20154, 1, '<portlet-preferences />');
INSERT INTO "public"."portalpreferences" ("portalpreferencesid", "ownerid", "ownertype", "preferences") VALUES
(20199, 0, 1, '<portlet-preferences />');
INSERT INTO "public"."portalpreferences" ("portalpreferencesid", "ownerid", "ownertype", "preferences") VALUES
(20436, 20155, 1, '<portlet-preferences />');
INSERT INTO "public"."portalpreferences" ("portalpreferencesid", "ownerid", "ownertype", "preferences") VALUES
(21206, 20516, 6, '<portlet-preferences />'),
(21204, 20198, 4, '<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory7</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_addpanel_tab</name><value>applications</value></preference><preference><name>com.liferay.portal.util.SessionClicks#p_auth</name><value>HbeATmrG</value></preference></portlet-preferences>'),
(21401, 20158, 4, '<portlet-preferences />'),
(21402, 20158, 4, '<portlet-preferences />');

INSERT INTO "public"."portlet" ("id_", "companyid", "portletid", "roles", "active_") VALUES
(20205, 20154, '193', '', 't');
INSERT INTO "public"."portlet" ("id_", "companyid", "portletid", "roles", "active_") VALUES
(20206, 20154, '194', '', 't');
INSERT INTO "public"."portlet" ("id_", "companyid", "portletid", "roles", "active_") VALUES
(20207, 20154, '110', '', 't');
INSERT INTO "public"."portlet" ("id_", "companyid", "portletid", "roles", "active_") VALUES
(20208, 20154, '114', '', 't'),
(20209, 20154, '115', '', 't'),
(20210, 20154, '116', '', 't'),
(20211, 20154, '118', '', 't'),
(20212, 20154, '97', '', 't'),
(20213, 20154, '98', '', 'f'),
(20214, 20154, '11', '', 't'),
(20215, 20154, '99', '', 't'),
(20216, 20154, '15', '', 't'),
(20217, 20154, '16', '', 't'),
(20218, 20154, '19', '', 't'),
(20219, 20154, '121', '', 't'),
(20220, 20154, '122', '', 't'),
(20221, 20154, '3', '', 't'),
(20222, 20154, '125', '', 't'),
(20223, 20154, '127', '', 't'),
(20224, 20154, '128', '', 't'),
(20225, 20154, '129', '', 't'),
(20226, 20154, '9', '', 't'),
(20227, 20154, '20', '', 't'),
(20228, 20154, '23', '', 't'),
(20229, 20154, '25', '', 't'),
(20230, 20154, '26', '', 't'),
(20231, 20154, '27', '', 't'),
(20232, 20154, '28', '', 't'),
(20233, 20154, '29', '', 't'),
(20234, 20154, '130', '', 't'),
(20235, 20154, '131', '', 't'),
(20236, 20154, '132', '', 't'),
(20237, 20154, '134', '', 't'),
(20238, 20154, '135', '', 't'),
(20239, 20154, '137', '', 't'),
(20240, 20154, '30', '', 't'),
(20241, 20154, '31', '', 't'),
(20242, 20154, '33', '', 't'),
(20243, 20154, '34', '', 't'),
(20244, 20154, '36', '', 't'),
(20245, 20154, '39', '', 't'),
(20246, 20154, '141', '', 't'),
(20247, 20154, '143', '', 't'),
(20248, 20154, '146', '', 't'),
(20249, 20154, '147', '', 't'),
(20250, 20154, '148', '', 't'),
(20251, 20154, '149', '', 't'),
(20252, 20154, '47', '', 't'),
(20253, 20154, '48', '', 't'),
(20254, 20154, '150', '', 't'),
(20255, 20154, '151', '', 't'),
(20256, 20154, '152', '', 't'),
(20257, 20154, '153', '', 't'),
(20258, 20154, '154', '', 't'),
(20259, 20154, '157', '', 't'),
(20260, 20154, '158', '', 't'),
(20261, 20154, '50', '', 't'),
(20262, 20154, '54', '', 't'),
(20263, 20154, '56', '', 't'),
(20264, 20154, '58', '', 't'),
(20265, 20154, '59', '', 't'),
(20266, 20154, '161', '', 't'),
(20267, 20154, '162', '', 't'),
(20268, 20154, '164', '', 't'),
(20269, 20154, '166', '', 't'),
(20270, 20154, '167', '', 't'),
(20271, 20154, '169', '', 't'),
(20272, 20154, '61', '', 't'),
(20273, 20154, '62', '', 'f'),
(20274, 20154, '64', '', 't'),
(20275, 20154, '66', '', 't'),
(20276, 20154, '67', '', 't'),
(20277, 20154, '173', '', 'f'),
(20278, 20154, '175', '', 't'),
(20279, 20154, '176', '', 't'),
(20280, 20154, '178', '', 't'),
(20281, 20154, '179', '', 't'),
(20282, 20154, '70', '', 't'),
(20283, 20154, '71', '', 't'),
(20284, 20154, '73', '', 't'),
(20285, 20154, '77', '', 't'),
(20286, 20154, '180', '', 't'),
(20287, 20154, '181', '', 't'),
(20288, 20154, '182', '', 't'),
(20289, 20154, '183', '', 't'),
(20290, 20154, '184', '', 't'),
(20291, 20154, '186', '', 't'),
(20292, 20154, '187', '', 't'),
(20293, 20154, '100', '', 't'),
(20294, 20154, '188', '', 't'),
(20295, 20154, '101', '', 't'),
(20296, 20154, '102', '', 't'),
(20297, 20154, '107', '', 't'),
(20298, 20154, '108', '', 't'),
(20299, 20154, '82', '', 't'),
(20300, 20154, '83', '', 't'),
(20301, 20154, '84', '', 't'),
(20302, 20154, '85', '', 't'),
(20449, 20154, '1_WAR_calendarportlet', '', 't'),
(20500, 20154, '1_WAR_notificationsportlet', '', 't'),
(20505, 20154, '1_WAR_opensocialportlet', '', 't'),
(20506, 20154, '2_WAR_opensocialportlet', '', 't'),
(20507, 20154, '3_WAR_opensocialportlet', '', 't'),
(20508, 20154, '4_WAR_opensocialportlet', '', 't'),
(20515, 20154, '1_WAR_webformportlet', '', 't'),
(21213, 20154, 'positionregistermvc_WAR_employeeregisterbuilderportlet', '', 't'),
(21214, 20154, 'bankregistermvc_WAR_employeeregisterbuilderportlet', '', 't');



INSERT INTO "public"."portletpreferences" ("portletpreferencesid", "ownerid", "ownertype", "plid", "portletid", "preferences") VALUES
(20327, 0, 3, 20320, '148_INSTANCE_DLYlavU3okz7', '<portlet-preferences><preference><name>displayStyle</name><value>cloud</value></preference><preference><name>showAssetCount</name><value>true</value></preference><preference><name>maxAssetTags</name><value>10</value></preference><preference><name>showZeroAssetCount</name><value>false</value></preference><preference><name>classNameId</name><value>20007</value></preference></portlet-preferences>');
INSERT INTO "public"."portletpreferences" ("portletpreferencesid", "ownerid", "ownertype", "plid", "portletid", "preferences") VALUES
(20348, 0, 3, 20342, '141_INSTANCE_KCTufRa3EdlY', '<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>classNameId</name><value>20016</value></preference></portlet-preferences>');
INSERT INTO "public"."portletpreferences" ("portletpreferencesid", "ownerid", "ownertype", "plid", "portletid", "preferences") VALUES
(20367, 0, 3, 20361, '3', '<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>');
INSERT INTO "public"."portletpreferences" ("portletpreferencesid", "ownerid", "ownertype", "plid", "portletid", "preferences") VALUES
(20368, 0, 3, 20361, '101_INSTANCE_CZDTqFGHFA7o', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),
(20393, 0, 3, 20387, '3', '<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
(20394, 0, 3, 20387, '82', '<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),
(20395, 0, 3, 20387, '101_INSTANCE_3B45gnm0aIWH', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),
(20402, 0, 3, 20396, '20', '<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
(20403, 0, 3, 20396, '101_INSTANCE_bYyBjb7FPi9j', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),
(20410, 0, 3, 20404, '39_INSTANCE_8tltikUwrrkU', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference></portlet-preferences>'),
(20411, 0, 3, 20404, '39_INSTANCE_ITbYLVHfS66S', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference></portlet-preferences>'),
(21205, 0, 3, 20184, '145', '<portlet-preferences />'),
(21207, 0, 3, 20184, '2_WAR_notificationsportlet', '<portlet-preferences />'),
(21225, 0, 3, 21219, '145', '<portlet-preferences />'),
(21226, 0, 3, 21219, '2_WAR_notificationsportlet', '<portlet-preferences />'),
(21307, 0, 3, 21301, '145', '<portlet-preferences />'),
(21308, 0, 3, 21301, '2_WAR_notificationsportlet', '<portlet-preferences />'),
(21227, 0, 3, 21219, 'bankregistermvc_WAR_employeeregisterbuilderportlet', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>false</value></preference><preference><name>portletSetupCss</name><value>{&#034;textData&#034;:{&#034;fontFamily&#034;:&#034;&#034;,&#034;color&#034;:&#034;&#034;,&#034;textAlign&#034;:&#034;&#034;,&#034;wordSpacing&#034;:&#034;&#034;,&#034;letterSpacing&#034;:&#034;&#034;,&#034;fontSize&#034;:&#034;&#034;,&#034;lineHeight&#034;:&#034;&#034;,&#034;textDecoration&#034;:&#034;&#034;,&#034;fontStyle&#034;:&#034;&#034;,&#034;fontWeight&#034;:&#034;&#034;},&#034;spacingData&#034;:{&#034;padding&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;sameForAll&#034;:true},&#034;margin&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;sameForAll&#034;:true}},&#034;wapData&#034;:{&#034;title&#034;:&#034;&#034;,&#034;initialWindowState&#034;:&#034;NORMAL&#034;},&#034;borderData&#034;:{&#034;borderColor&#034;:{&#034;top&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;bottom&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;sameForAll&#034;:true},&#034;borderWidth&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;sameForAll&#034;:true},&#034;borderStyle&#034;:{&#034;top&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;bottom&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;sameForAll&#034;:true}},&#034;bgData&#034;:{&#034;backgroundColor&#034;:&#034;&#034;,&#034;useBgImage&#034;:false,&#034;backgroundImage&#034;:&#034;&#034;,&#034;backgroundPosition&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}},&#034;backgroundRepeat&#034;:&#034;&#034;},&#034;advancedData&#034;:{&#034;customCSSClassName&#034;:&#034;&#034;,&#034;customCSS&#034;:&#034;&#034;}}</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
(21215, 0, 3, 20184, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>false</value></preference><preference><name>portletSetupCss</name><value>{&#034;textData&#034;:{&#034;fontFamily&#034;:&#034;&#034;,&#034;color&#034;:&#034;&#034;,&#034;textAlign&#034;:&#034;&#034;,&#034;wordSpacing&#034;:&#034;&#034;,&#034;letterSpacing&#034;:&#034;&#034;,&#034;fontSize&#034;:&#034;&#034;,&#034;lineHeight&#034;:&#034;&#034;,&#034;textDecoration&#034;:&#034;&#034;,&#034;fontStyle&#034;:&#034;&#034;,&#034;fontWeight&#034;:&#034;&#034;},&#034;spacingData&#034;:{&#034;padding&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;sameForAll&#034;:true},&#034;margin&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;sameForAll&#034;:true}},&#034;hasCssValue&#034;:true,&#034;wapData&#034;:{&#034;title&#034;:&#034;&#034;,&#034;initialWindowState&#034;:&#034;NORMAL&#034;},&#034;borderData&#034;:{&#034;borderColor&#034;:{&#034;top&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;bottom&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;sameForAll&#034;:true},&#034;borderWidth&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;sameForAll&#034;:true},&#034;borderStyle&#034;:{&#034;top&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;bottom&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;sameForAll&#034;:true}},&#034;bgData&#034;:{&#034;backgroundColor&#034;:&#034;&#034;,&#034;useBgImage&#034;:false,&#034;backgroundImage&#034;:&#034;&#034;,&#034;backgroundPosition&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}},&#034;backgroundRepeat&#034;:&#034;&#034;},&#034;advancedData&#034;:{&#034;customCSSClassName&#034;:&#034;&#034;,&#034;customCSS&#034;:&#034;&#034;}}</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),
(21309, 0, 3, 21301, 'positionregistermvc_WAR_employeeregisterbuilderportlet', '<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>false</value></preference><preference><name>portletSetupCss</name><value>{&#034;textData&#034;:{&#034;fontFamily&#034;:&#034;&#034;,&#034;color&#034;:&#034;&#034;,&#034;textAlign&#034;:&#034;&#034;,&#034;wordSpacing&#034;:&#034;&#034;,&#034;letterSpacing&#034;:&#034;&#034;,&#034;fontSize&#034;:&#034;&#034;,&#034;lineHeight&#034;:&#034;&#034;,&#034;textDecoration&#034;:&#034;&#034;,&#034;fontStyle&#034;:&#034;&#034;,&#034;fontWeight&#034;:&#034;&#034;},&#034;spacingData&#034;:{&#034;padding&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;sameForAll&#034;:true},&#034;margin&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;sameForAll&#034;:true}},&#034;wapData&#034;:{&#034;title&#034;:&#034;&#034;,&#034;initialWindowState&#034;:&#034;NORMAL&#034;},&#034;borderData&#034;:{&#034;borderColor&#034;:{&#034;top&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;bottom&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;sameForAll&#034;:true},&#034;borderWidth&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;bottom&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;right&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;sameForAll&#034;:true},&#034;borderStyle&#034;:{&#034;top&#034;:&#034;&#034;,&#034;left&#034;:&#034;&#034;,&#034;bottom&#034;:&#034;&#034;,&#034;right&#034;:&#034;&#034;,&#034;sameForAll&#034;:true}},&#034;bgData&#034;:{&#034;backgroundColor&#034;:&#034;&#034;,&#034;useBgImage&#034;:false,&#034;backgroundImage&#034;:&#034;&#034;,&#034;backgroundPosition&#034;:{&#034;top&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;},&#034;left&#034;:{&#034;unit&#034;:&#034;px&#034;,&#034;value&#034;:&#034;&#034;}},&#034;backgroundRepeat&#034;:&#034;&#034;},&#034;advancedData&#034;:{&#034;customCSSClassName&#034;:&#034;&#034;,&#034;customCSS&#034;:&#034;&#034;}}</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>');



























INSERT INTO "public"."region" ("regionid", "countryid", "regioncode", "name", "active_") VALUES
(1001, 1, 'AB', 'Alberta', 't');
INSERT INTO "public"."region" ("regionid", "countryid", "regioncode", "name", "active_") VALUES
(1002, 1, 'BC', 'British Columbia', 't');
INSERT INTO "public"."region" ("regionid", "countryid", "regioncode", "name", "active_") VALUES
(1003, 1, 'MB', 'Manitoba', 't');
INSERT INTO "public"."region" ("regionid", "countryid", "regioncode", "name", "active_") VALUES
(1004, 1, 'NB', 'New Brunswick', 't'),
(1005, 1, 'NL', 'Newfoundland and Labrador', 't'),
(1006, 1, 'NT', 'Northwest Territories', 't'),
(1007, 1, 'NS', 'Nova Scotia', 't'),
(1008, 1, 'NU', 'Nunavut', 't'),
(1009, 1, 'ON', 'Ontario', 't'),
(1010, 1, 'PE', 'Prince Edward Island', 't'),
(1011, 1, 'QC', 'Quebec', 't'),
(1012, 1, 'SK', 'Saskatchewan', 't'),
(1013, 1, 'YT', 'Yukon', 't'),
(2001, 2, 'CN-34', 'Anhui', 't'),
(2002, 2, 'CN-92', 'Aomen', 't'),
(2003, 2, 'CN-11', 'Beijing', 't'),
(2004, 2, 'CN-50', 'Chongqing', 't'),
(2005, 2, 'CN-35', 'Fujian', 't'),
(2006, 2, 'CN-62', 'Gansu', 't'),
(2007, 2, 'CN-44', 'Guangdong', 't'),
(2008, 2, 'CN-45', 'Guangxi', 't'),
(2009, 2, 'CN-52', 'Guizhou', 't'),
(2010, 2, 'CN-46', 'Hainan', 't'),
(2011, 2, 'CN-13', 'Hebei', 't'),
(2012, 2, 'CN-23', 'Heilongjiang', 't'),
(2013, 2, 'CN-41', 'Henan', 't'),
(2014, 2, 'CN-42', 'Hubei', 't'),
(2015, 2, 'CN-43', 'Hunan', 't'),
(2016, 2, 'CN-32', 'Jiangsu', 't'),
(2017, 2, 'CN-36', 'Jiangxi', 't'),
(2018, 2, 'CN-22', 'Jilin', 't'),
(2019, 2, 'CN-21', 'Liaoning', 't'),
(2020, 2, 'CN-15', 'Nei Mongol', 't'),
(2021, 2, 'CN-64', 'Ningxia', 't'),
(2022, 2, 'CN-63', 'Qinghai', 't'),
(2023, 2, 'CN-61', 'Shaanxi', 't'),
(2024, 2, 'CN-37', 'Shandong', 't'),
(2025, 2, 'CN-31', 'Shanghai', 't'),
(2026, 2, 'CN-14', 'Shanxi', 't'),
(2027, 2, 'CN-51', 'Sichuan', 't'),
(2028, 2, 'CN-71', 'Taiwan', 't'),
(2029, 2, 'CN-12', 'Tianjin', 't'),
(2030, 2, 'CN-91', 'Xianggang', 't'),
(2031, 2, 'CN-65', 'Xinjiang', 't'),
(2032, 2, 'CN-54', 'Xizang', 't'),
(2033, 2, 'CN-53', 'Yunnan', 't'),
(2034, 2, 'CN-33', 'Zhejiang', 't'),
(3001, 3, 'A', 'Alsace', 't'),
(3002, 3, 'B', 'Aquitaine', 't'),
(3003, 3, 'C', 'Auvergne', 't'),
(3004, 3, 'P', 'Basse-Normandie', 't'),
(3005, 3, 'D', 'Bourgogne', 't'),
(3006, 3, 'E', 'Bretagne', 't'),
(3007, 3, 'F', 'Centre', 't'),
(3008, 3, 'G', 'Champagne-Ardenne', 't'),
(3009, 3, 'H', 'Corse', 't'),
(3010, 3, 'GF', 'Guyane', 't'),
(3011, 3, 'I', 'Franche Comté', 't'),
(3012, 3, 'GP', 'Guadeloupe', 't'),
(3013, 3, 'Q', 'Haute-Normandie', 't'),
(3014, 3, 'J', 'Île-de-France', 't'),
(3015, 3, 'K', 'Languedoc-Roussillon', 't'),
(3016, 3, 'L', 'Limousin', 't'),
(3017, 3, 'M', 'Lorraine', 't'),
(3018, 3, 'MQ', 'Martinique', 't'),
(3019, 3, 'N', 'Midi-Pyrénées', 't'),
(3020, 3, 'O', 'Nord Pas de Calais', 't'),
(3021, 3, 'R', 'Pays de la Loire', 't'),
(3022, 3, 'S', 'Picardie', 't'),
(3023, 3, 'T', 'Poitou-Charentes', 't'),
(3024, 3, 'U', 'Provence-Alpes-Côte-d''Azur', 't'),
(3025, 3, 'RE', 'Réunion', 't'),
(3026, 3, 'V', 'Rhône-Alpes', 't'),
(4001, 4, 'BW', 'Baden-Württemberg', 't'),
(4002, 4, 'BY', 'Bayern', 't'),
(4003, 4, 'BE', 'Berlin', 't'),
(4004, 4, 'BB', 'Brandenburg', 't'),
(4005, 4, 'HB', 'Bremen', 't'),
(4006, 4, 'HH', 'Hamburg', 't'),
(4007, 4, 'HE', 'Hessen', 't'),
(4008, 4, 'MV', 'Mecklenburg-Vorpommern', 't'),
(4009, 4, 'NI', 'Niedersachsen', 't'),
(4010, 4, 'NW', 'Nordrhein-Westfalen', 't'),
(4011, 4, 'RP', 'Rheinland-Pfalz', 't'),
(4012, 4, 'SL', 'Saarland', 't'),
(4013, 4, 'SN', 'Sachsen', 't'),
(4014, 4, 'ST', 'Sachsen-Anhalt', 't'),
(4015, 4, 'SH', 'Schleswig-Holstein', 't'),
(4016, 4, 'TH', 'Thüringen', 't'),
(8001, 8, 'AG', 'Agrigento', 't'),
(8002, 8, 'AL', 'Alessandria', 't'),
(8003, 8, 'AN', 'Ancona', 't'),
(8004, 8, 'AO', 'Aosta', 't'),
(8005, 8, 'AR', 'Arezzo', 't'),
(8006, 8, 'AP', 'Ascoli Piceno', 't'),
(8007, 8, 'AT', 'Asti', 't'),
(8008, 8, 'AV', 'Avellino', 't'),
(8009, 8, 'BA', 'Bari', 't'),
(8010, 8, 'BT', 'Barletta-Andria-Trani', 't'),
(8011, 8, 'BL', 'Belluno', 't'),
(8012, 8, 'BN', 'Benevento', 't'),
(8013, 8, 'BG', 'Bergamo', 't'),
(8014, 8, 'BI', 'Biella', 't'),
(8015, 8, 'BO', 'Bologna', 't'),
(8016, 8, 'BZ', 'Bolzano', 't'),
(8017, 8, 'BS', 'Brescia', 't'),
(8018, 8, 'BR', 'Brindisi', 't'),
(8019, 8, 'CA', 'Cagliari', 't'),
(8020, 8, 'CL', 'Caltanissetta', 't'),
(8021, 8, 'CB', 'Campobasso', 't'),
(8022, 8, 'CI', 'Carbonia-Iglesias', 't'),
(8023, 8, 'CE', 'Caserta', 't'),
(8024, 8, 'CT', 'Catania', 't'),
(8025, 8, 'CZ', 'Catanzaro', 't'),
(8026, 8, 'CH', 'Chieti', 't'),
(8027, 8, 'CO', 'Como', 't'),
(8028, 8, 'CS', 'Cosenza', 't'),
(8029, 8, 'CR', 'Cremona', 't'),
(8030, 8, 'KR', 'Crotone', 't'),
(8031, 8, 'CN', 'Cuneo', 't'),
(8032, 8, 'EN', 'Enna', 't'),
(8033, 8, 'FM', 'Fermo', 't'),
(8034, 8, 'FE', 'Ferrara', 't'),
(8035, 8, 'FI', 'Firenze', 't'),
(8036, 8, 'FG', 'Foggia', 't'),
(8037, 8, 'FC', 'Forli-Cesena', 't'),
(8038, 8, 'FR', 'Frosinone', 't'),
(8039, 8, 'GE', 'Genova', 't'),
(8040, 8, 'GO', 'Gorizia', 't'),
(8041, 8, 'GR', 'Grosseto', 't'),
(8042, 8, 'IM', 'Imperia', 't'),
(8043, 8, 'IS', 'Isernia', 't'),
(8044, 8, 'AQ', 'L''Aquila', 't'),
(8045, 8, 'SP', 'La Spezia', 't'),
(8046, 8, 'LT', 'Latina', 't'),
(8047, 8, 'LE', 'Lecce', 't'),
(8048, 8, 'LC', 'Lecco', 't'),
(8049, 8, 'LI', 'Livorno', 't'),
(8050, 8, 'LO', 'Lodi', 't'),
(8053, 8, 'MN', 'Mantova', 't'),
(8054, 8, 'MS', 'Massa-Carrara', 't'),
(8055, 8, 'MT', 'Matera', 't'),
(8056, 8, 'MA', 'Medio Campidano', 't'),
(8057, 8, 'ME', 'Messina', 't'),
(8058, 8, 'MI', 'Milano', 't'),
(8059, 8, 'MO', 'Modena', 't'),
(8060, 8, 'MB', 'Monza e Brianza', 't'),
(8061, 8, 'NA', 'Napoli', 't'),
(8064, 8, 'OG', 'Ogliastra', 't'),
(8065, 8, 'OT', 'Olbia-Tempio', 't'),
(8066, 8, 'OR', 'Oristano', 't'),
(8067, 8, 'PD', 'Padova', 't'),
(8068, 8, 'PA', 'Palermo', 't'),
(8069, 8, 'PR', 'Parma', 't'),
(8071, 8, 'PG', 'Perugia', 't'),
(8073, 8, 'PE', 'Pescara', 't'),
(8074, 8, 'PC', 'Piacenza', 't'),
(8075, 8, 'PI', 'Pisa', 't'),
(8088, 8, 'SA', 'Salerno', 't'),
(8089, 8, 'SS', 'Sassari', 't'),
(8090, 8, 'SV', 'Savona', 't'),
(8091, 8, 'SI', 'Siena', 't'),
(8092, 8, 'SR', 'Siracusa', 't'),
(8093, 8, 'SO', 'Sondrio', 't'),
(8094, 8, 'TA', 'Taranto', 't'),
(8095, 8, 'TE', 'Teramo', 't'),
(8096, 8, 'TR', 'Terni', 't'),
(8097, 8, 'TO', 'Torino', 't'),
(8098, 8, 'TP', 'Trapani', 't'),
(8099, 8, 'TN', 'Trento', 't'),
(8100, 8, 'TV', 'Treviso', 't'),
(8101, 8, 'TS', 'Trieste', 't'),
(8102, 8, 'UD', 'Udine', 't'),
(8106, 8, 'VC', 'Vercelli', 't'),
(8107, 8, 'VR', 'Verona', 't'),
(8108, 8, 'VV', 'Vibo Valentia', 't'),
(8109, 8, 'VI', 'Vicenza', 't'),
(8110, 8, 'VT', 'Viterbo', 't'),
(11001, 11, 'DR', 'Drenthe', 't'),
(11002, 11, 'FL', 'Flevoland', 't'),
(11003, 11, 'FR', 'Friesland', 't'),
(11004, 11, 'GE', 'Gelderland', 't'),
(11005, 11, 'GR', 'Groningen', 't'),
(11006, 11, 'LI', 'Limburg', 't'),
(11007, 11, 'NB', 'Noord-Brabant', 't'),
(15007, 15, 'CB', 'Cantabria', 't'),
(15009, 15, 'CM', 'Castile-La Mancha', 't'),
(15010, 15, 'CT', 'Catalonia', 't'),
(15011, 15, 'CE', 'Ceuta', 't'),
(15012, 15, 'EX', 'Extremadura', 't'),
(15013, 15, 'GA', 'Galicia', 't'),
(15014, 15, 'LO', 'La Rioja', 't'),
(15015, 15, 'M', 'Madrid', 't'),
(15016, 15, 'ML', 'Melilla', 't'),
(15017, 15, 'MU', 'Murcia', 't'),
(15018, 15, 'NA', 'Navarra', 't'),
(15019, 15, 'VC', 'Valencia', 't'),
(19006, 19, 'CO', 'Colorado', 't'),
(19008, 19, 'DC', 'District of Columbia', 't'),
(19009, 19, 'DE', 'Delaware', 't'),
(19010, 19, 'FL', 'Florida', 't'),
(19011, 19, 'GA', 'Georgia', 't'),
(19012, 19, 'HI', 'Hawaii', 't'),
(19013, 19, 'ID', 'Idaho', 't'),
(19014, 19, 'IL', 'Illinois', 't'),
(19015, 19, 'IN', 'Indiana', 't'),
(19017, 19, 'KS', 'Kansas', 't'),
(19018, 19, 'KY', 'Kentucky ', 't'),
(19032, 19, 'NM', 'New Mexico', 't'),
(19033, 19, 'NY', 'New York', 't'),
(19034, 19, 'NC', 'North Carolina', 't'),
(19035, 19, 'ND', 'North Dakota', 't'),
(19036, 19, 'OH', 'Ohio', 't'),
(19037, 19, 'OK', 'Oklahoma ', 't'),
(19039, 19, 'PA', 'Pennsylvania', 't'),
(19040, 19, 'PR', 'Puerto Rico', 't'),
(19041, 19, 'RI', 'Rhode Island', 't'),
(19042, 19, 'SC', 'South Carolina', 't'),
(19043, 19, 'SD', 'South Dakota', 't');
INSERT INTO "public"."region" ("regionid", "countryid", "regioncode", "name", "active_") VALUES
(19044, 19, 'TN', 'Tennessee', 't'),
(19045, 19, 'TX', 'Texas', 't'),
(19052, 19, 'WY', 'Wyoming', 't'),
(32001, 32, 'ACT', 'Australian Capital Territory', 't'),
(32002, 32, 'NSW', 'New South Wales', 't'),
(32005, 32, 'SA', 'South Australia', 't'),
(32006, 32, 'TAS', 'Tasmania', 't'),
(32007, 32, 'VIC', 'Victoria', 't'),
(32008, 32, 'WA', 'Western Australia', 't'),
(144001, 144, 'MX-AGS', 'Aguascalientes', 't'),
(144002, 144, 'MX-BCN', 'Baja California', 't'),
(144003, 144, 'MX-BCS', 'Baja California Sur', 't'),
(144004, 144, 'MX-CAM', 'Campeche', 't'),
(144005, 144, 'MX-CHP', 'Chiapas', 't'),
(144006, 144, 'MX-CHI', 'Chihuahua', 't'),
(144007, 144, 'MX-COA', 'Coahuila', 't'),
(144009, 144, 'MX-DUR', 'Durango', 't'),
(144020, 144, 'MX-PUE', 'Puebla', 't'),
(144021, 144, 'MX-QRO', 'Queretaro', 't'),
(144023, 144, 'MX-ROO', 'Quintana Roo', 't'),
(144024, 144, 'MX-SLP', 'San Luis Potosí', 't'),
(164004, 164, '04', 'Hedmark', 't'),
(164005, 164, '05', 'Oppland', 't'),
(164007, 164, '07', 'Vestfold', 't'),
(164008, 164, '08', 'Telemark', 't'),
(164009, 164, '09', 'Aust-Agder', 't'),
(164010, 164, '10', 'Vest-Agder', 't'),
(164011, 164, '11', 'Rogaland', 't'),
(164013, 164, '14', 'Sogn og Fjordane', 't'),
(164015, 164, '16', 'Sør-Trøndelag', 't'),
(164019, 164, '20', 'Finnmark', 't'),
(202003, 202, 'AI', 'Appenzell Innerrhoden', 't'),
(202008, 202, 'GE', 'Geneva', 't'),
(202011, 202, 'JU', 'Jura', 't'),
(202013, 202, 'NE', 'Neuchâtel', 't'),
(202014, 202, 'NW', 'Nidwalden', 't'),
(202017, 202, 'SZ', 'Schwyz', 't'),
(202021, 202, 'TI', 'Ticino', 't'),
(202022, 202, 'UR', 'Uri', 't'),
(202023, 202, 'VS', 'Valais', 't'),
(202024, 202, 'VD', 'Vaud', 't'),
(202025, 202, 'ZG', 'Zug', 't'),
(8051, 8, 'LU', 'Lucca', 't'),
(8052, 8, 'MC', 'Macerata', 't'),
(8062, 8, 'NO', 'Novara', 't'),
(8063, 8, 'NU', 'Nuoro', 't'),
(8070, 8, 'PV', 'Pavia', 't'),
(8072, 8, 'PU', 'Pesaro e Urbino', 't'),
(8076, 8, 'PT', 'Pistoia', 't'),
(8077, 8, 'PN', 'Pordenone', 't'),
(8078, 8, 'PZ', 'Potenza', 't'),
(8079, 8, 'PO', 'Prato', 't'),
(8080, 8, 'RG', 'Ragusa', 't'),
(8081, 8, 'RA', 'Ravenna', 't'),
(8082, 8, 'RC', 'Reggio Calabria', 't'),
(8083, 8, 'RE', 'Reggio Emilia', 't'),
(8084, 8, 'RI', 'Rieti', 't'),
(8085, 8, 'RN', 'Rimini', 't'),
(8086, 8, 'RM', 'Roma', 't'),
(8087, 8, 'RO', 'Rovigo', 't'),
(8103, 8, 'VA', 'Varese', 't'),
(8104, 8, 'VE', 'Venezia', 't'),
(8105, 8, 'VB', 'Verbano-Cusio-Ossola', 't'),
(11008, 11, 'NH', 'Noord-Holland', 't'),
(11009, 11, 'OV', 'Overijssel', 't'),
(11010, 11, 'UT', 'Utrecht', 't'),
(11011, 11, 'ZE', 'Zeeland', 't'),
(11012, 11, 'ZH', 'Zuid-Holland', 't'),
(15001, 15, 'AN', 'Andalusia', 't'),
(15002, 15, 'AR', 'Aragon', 't'),
(15003, 15, 'AS', 'Asturias', 't'),
(15004, 15, 'IB', 'Balearic Islands', 't'),
(15005, 15, 'PV', 'Basque Country', 't'),
(15006, 15, 'CN', 'Canary Islands', 't'),
(15008, 15, 'CL', 'Castile and Leon', 't'),
(19001, 19, 'AL', 'Alabama', 't'),
(19002, 19, 'AK', 'Alaska', 't'),
(19003, 19, 'AZ', 'Arizona', 't'),
(19004, 19, 'AR', 'Arkansas', 't'),
(19005, 19, 'CA', 'California', 't'),
(19007, 19, 'CT', 'Connecticut', 't'),
(19016, 19, 'IA', 'Iowa', 't'),
(19019, 19, 'LA', 'Louisiana ', 't'),
(19020, 19, 'ME', 'Maine', 't'),
(19021, 19, 'MD', 'Maryland', 't'),
(19022, 19, 'MA', 'Massachusetts', 't'),
(19023, 19, 'MI', 'Michigan', 't'),
(19024, 19, 'MN', 'Minnesota', 't'),
(19025, 19, 'MS', 'Mississippi', 't'),
(19026, 19, 'MO', 'Missouri', 't'),
(19027, 19, 'MT', 'Montana', 't'),
(19028, 19, 'NE', 'Nebraska', 't'),
(19029, 19, 'NV', 'Nevada', 't'),
(19030, 19, 'NH', 'New Hampshire', 't'),
(19031, 19, 'NJ', 'New Jersey', 't'),
(19038, 19, 'OR', 'Oregon', 't'),
(19046, 19, 'UT', 'Utah', 't'),
(19047, 19, 'VT', 'Vermont', 't'),
(19048, 19, 'VA', 'Virginia', 't'),
(19049, 19, 'WA', 'Washington', 't'),
(19050, 19, 'WV', 'West Virginia', 't'),
(19051, 19, 'WI', 'Wisconsin', 't'),
(32003, 32, 'NT', 'Northern Territory', 't'),
(32004, 32, 'QLD', 'Queensland', 't'),
(144008, 144, 'MX-COL', 'Colima', 't'),
(144010, 144, 'MX-GTO', 'Guanajuato', 't'),
(144011, 144, 'MX-GRO', 'Guerrero', 't'),
(144012, 144, 'MX-HGO', 'Hidalgo', 't'),
(144013, 144, 'MX-JAL', 'Jalisco', 't'),
(144014, 144, 'MX-MEX', 'Mexico', 't'),
(144015, 144, 'MX-MIC', 'Michoacan', 't'),
(144016, 144, 'MX-MOR', 'Morelos', 't'),
(144017, 144, 'MX-NAY', 'Nayarit', 't'),
(144018, 144, 'MX-NLE', 'Nuevo Leon', 't'),
(144019, 144, 'MX-OAX', 'Oaxaca', 't'),
(144025, 144, 'MX-SIN', 'Sinaloa', 't'),
(144026, 144, 'MX-SON', 'Sonora', 't'),
(144027, 144, 'MX-TAB', 'Tabasco', 't'),
(144028, 144, 'MX-TAM', 'Tamaulipas', 't'),
(144029, 144, 'MX-TLX', 'Tlaxcala', 't'),
(144030, 144, 'MX-VER', 'Veracruz', 't'),
(144031, 144, 'MX-YUC', 'Yucatan', 't'),
(144032, 144, 'MX-ZAC', 'Zacatecas', 't'),
(164001, 164, '01', 'Østfold', 't'),
(164002, 164, '02', 'Akershus', 't'),
(164003, 164, '03', 'Oslo', 't'),
(164006, 164, '06', 'Buskerud', 't'),
(164012, 164, '12', 'Hordaland', 't'),
(164014, 164, '15', 'Møre of Romsdal', 't'),
(164016, 164, '17', 'Nord-Trøndelag', 't'),
(164017, 164, '18', 'Nordland', 't'),
(164018, 164, '19', 'Troms', 't'),
(202001, 202, 'AG', 'Aargau', 't'),
(202002, 202, 'AR', 'Appenzell Ausserrhoden', 't'),
(202004, 202, 'BL', 'Basel-Landschaft', 't'),
(202005, 202, 'BS', 'Basel-Stadt', 't'),
(202006, 202, 'BE', 'Bern', 't'),
(202007, 202, 'FR', 'Fribourg', 't'),
(202009, 202, 'GL', 'Glarus', 't'),
(202010, 202, 'GR', 'Graubünden', 't'),
(202012, 202, 'LU', 'Lucerne', 't'),
(202015, 202, 'OW', 'Obwalden', 't'),
(202016, 202, 'SH', 'Schaffhausen', 't'),
(202018, 202, 'SO', 'Solothurn', 't'),
(202019, 202, 'SG', 'St. Gallen', 't'),
(202020, 202, 'TG', 'Thurgau', 't'),
(202026, 202, 'ZH', 'Zürich', 't');

INSERT INTO "public"."release_" ("releaseid", "createdate", "modifieddate", "servletcontextname", "buildnumber", "builddate", "verified", "state_", "teststring") VALUES
(1, '2021-05-30 13:04:08.169073', '2021-05-30 13:56:31.648', 'portal', 6205, '2016-01-06 00:00:00', 't', 0, 'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.');
INSERT INTO "public"."release_" ("releaseid", "createdate", "modifieddate", "servletcontextname", "buildnumber", "builddate", "verified", "state_", "teststring") VALUES
(20440, '2021-05-30 13:04:40.416', '2021-05-30 13:57:33.232', 'marketplace-portlet', 100, NULL, 't', 0, '');
INSERT INTO "public"."release_" ("releaseid", "createdate", "modifieddate", "servletcontextname", "buildnumber", "builddate", "verified", "state_", "teststring") VALUES
(20448, '2021-05-30 13:04:47.617', '2021-05-30 13:57:37.047', 'calendar-portlet', 102, NULL, 't', 0, '');
INSERT INTO "public"."release_" ("releaseid", "createdate", "modifieddate", "servletcontextname", "buildnumber", "builddate", "verified", "state_", "teststring") VALUES
(20467, '2021-05-30 13:05:03.606', '2021-05-30 13:57:48.553', 'kaleo-web', 110, NULL, 't', 0, ''),
(20499, '2021-05-30 13:05:06.038', '2021-05-30 13:57:53.26', 'notifications-portlet', 110, NULL, 't', 0, ''),
(20514, '2021-05-30 13:05:19.44', '2021-05-30 13:58:15.072', 'sync-web', 101, NULL, 't', 0, '');





INSERT INTO "public"."resourceaction" ("resourceactionid", "name", "actionid", "bitwisevalue") VALUES
(1, '1_WAR_marketplaceportlet', 'VIEW', 1);
INSERT INTO "public"."resourceaction" ("resourceactionid", "name", "actionid", "bitwisevalue") VALUES
(2, '1_WAR_marketplaceportlet', 'ADD_TO_PAGE', 2);
INSERT INTO "public"."resourceaction" ("resourceactionid", "name", "actionid", "bitwisevalue") VALUES
(3, '1_WAR_marketplaceportlet', 'CONFIGURATION', 4);
INSERT INTO "public"."resourceaction" ("resourceactionid", "name", "actionid", "bitwisevalue") VALUES
(4, '1_WAR_marketplaceportlet', 'PERMISSIONS', 8),
(5, '1_WAR_marketplaceportlet', 'PREFERENCES', 16),
(6, '1_WAR_marketplaceportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(7, '3_WAR_marketplaceportlet', 'VIEW', 1),
(8, '3_WAR_marketplaceportlet', 'ADD_TO_PAGE', 2),
(9, '3_WAR_marketplaceportlet', 'CONFIGURATION', 4),
(10, '3_WAR_marketplaceportlet', 'PERMISSIONS', 8),
(11, '3_WAR_marketplaceportlet', 'PREFERENCES', 16),
(12, '3_WAR_marketplaceportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(13, '2_WAR_marketplaceportlet', 'VIEW', 1),
(14, '2_WAR_marketplaceportlet', 'ADD_TO_PAGE', 2),
(15, '2_WAR_marketplaceportlet', 'CONFIGURATION', 4),
(16, '2_WAR_marketplaceportlet', 'PERMISSIONS', 8),
(17, '2_WAR_marketplaceportlet', 'PREFERENCES', 16),
(18, '2_WAR_marketplaceportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(19, '1_WAR_calendarportlet', 'ACCESS_IN_CONTROL_PANEL', 2),
(20, '1_WAR_calendarportlet', 'ADD_TO_PAGE', 4),
(21, '1_WAR_calendarportlet', 'CONFIGURATION', 8),
(22, '1_WAR_calendarportlet', 'VIEW', 1),
(23, '1_WAR_calendarportlet', 'PERMISSIONS', 16),
(24, '1_WAR_calendarportlet', 'PREFERENCES', 32),
(25, 'com.liferay.calendar.model.CalendarResource', 'ADD_CALENDAR', 2),
(26, 'com.liferay.calendar.model.CalendarResource', 'DELETE', 4),
(27, 'com.liferay.calendar.model.CalendarResource', 'UPDATE', 8),
(28, 'com.liferay.calendar.model.CalendarResource', 'VIEW', 1),
(29, 'com.liferay.calendar.model.CalendarResource', 'PERMISSIONS', 16),
(30, 'com.liferay.calendar.model.CalendarBooking', 'ADD_DISCUSSION', 2),
(31, 'com.liferay.calendar.model.CalendarBooking', 'DELETE_DISCUSSION', 4),
(32, 'com.liferay.calendar.model.CalendarBooking', 'PERMISSIONS', 8),
(33, 'com.liferay.calendar.model.CalendarBooking', 'UPDATE_DISCUSSION', 16),
(34, 'com.liferay.calendar', 'ADD_RESOURCE', 2),
(35, 'com.liferay.calendar', 'PERMISSIONS', 4),
(36, 'com.liferay.calendar.model.Calendar', 'DELETE', 2),
(37, 'com.liferay.calendar.model.Calendar', 'MANAGE_BOOKINGS', 4),
(38, 'com.liferay.calendar.model.Calendar', 'PERMISSIONS', 8),
(39, 'com.liferay.calendar.model.Calendar', 'UPDATE', 16),
(40, 'com.liferay.calendar.model.Calendar', 'VIEW', 1),
(41, 'com.liferay.calendar.model.Calendar', 'VIEW_BOOKING_DETAILS', 32),
(42, '2_WAR_notificationsportlet', 'VIEW', 1),
(43, '2_WAR_notificationsportlet', 'ADD_TO_PAGE', 2),
(44, '2_WAR_notificationsportlet', 'CONFIGURATION', 4),
(45, '2_WAR_notificationsportlet', 'PERMISSIONS', 8),
(46, '2_WAR_notificationsportlet', 'PREFERENCES', 16),
(47, '2_WAR_notificationsportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(48, '1_WAR_notificationsportlet', 'VIEW', 1),
(49, '1_WAR_notificationsportlet', 'ADD_TO_PAGE', 2),
(50, '1_WAR_notificationsportlet', 'CONFIGURATION', 4),
(51, '1_WAR_notificationsportlet', 'PERMISSIONS', 8),
(52, '1_WAR_notificationsportlet', 'PREFERENCES', 16),
(53, '1_WAR_notificationsportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(54, '1_WAR_opensocialportlet', 'ACCESS_IN_CONTROL_PANEL', 2),
(55, '1_WAR_opensocialportlet', 'CONFIGURATION', 4),
(56, '1_WAR_opensocialportlet', 'VIEW', 1),
(57, '1_WAR_opensocialportlet', 'PERMISSIONS', 8),
(58, '1_WAR_opensocialportlet', 'PREFERENCES', 16),
(59, 'com.liferay.opensocial.model.Gadget', 'DELETE', 2),
(60, 'com.liferay.opensocial.model.Gadget', 'PERMISSIONS', 4),
(61, 'com.liferay.opensocial.model.Gadget', 'UPDATE', 8),
(62, 'com.liferay.opensocial.model.Gadget', 'VIEW', 1),
(63, 'com.liferay.opensocial', 'PERMISSIONS', 2),
(64, 'com.liferay.opensocial', 'PUBLISH_GADGET', 4),
(65, '2_WAR_opensocialportlet', 'ADD_TO_PAGE', 2),
(66, '2_WAR_opensocialportlet', 'CONFIGURATION', 4),
(67, '2_WAR_opensocialportlet', 'VIEW', 1),
(68, '2_WAR_opensocialportlet', 'PERMISSIONS', 8),
(69, '2_WAR_opensocialportlet', 'PREFERENCES', 16),
(70, '2_WAR_opensocialportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(71, '3_WAR_opensocialportlet', 'ADD_TO_PAGE', 2),
(72, '3_WAR_opensocialportlet', 'CONFIGURATION', 4),
(73, '3_WAR_opensocialportlet', 'VIEW', 1),
(74, '3_WAR_opensocialportlet', 'PERMISSIONS', 8),
(75, '3_WAR_opensocialportlet', 'PREFERENCES', 16),
(76, '3_WAR_opensocialportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(77, '4_WAR_opensocialportlet', 'ACCESS_IN_CONTROL_PANEL', 2),
(78, '4_WAR_opensocialportlet', 'CONFIGURATION', 4),
(79, '4_WAR_opensocialportlet', 'VIEW', 1),
(80, '4_WAR_opensocialportlet', 'PERMISSIONS', 8),
(81, '4_WAR_opensocialportlet', 'PREFERENCES', 16),
(82, '1_WAR_webformportlet', 'VIEW', 1),
(83, '1_WAR_webformportlet', 'ADD_TO_PAGE', 2),
(84, '1_WAR_webformportlet', 'CONFIGURATION', 4),
(85, '1_WAR_webformportlet', 'PERMISSIONS', 8),
(86, '1_WAR_webformportlet', 'PREFERENCES', 16),
(87, '1_WAR_webformportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(88, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', 'VIEW', 1),
(89, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', 'ADD_TO_PAGE', 2),
(90, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', 'CONFIGURATION', 4),
(91, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', 'PERMISSIONS', 8),
(281, '113', 'PREFERENCES', 16),
(92, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', 'PREFERENCES', 16),
(93, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(94, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 'VIEW', 1),
(95, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 'ADD_TO_PAGE', 2),
(96, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 'CONFIGURATION', 4),
(97, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 'PERMISSIONS', 8),
(98, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 'PREFERENCES', 16),
(99, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(100, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 'VIEW', 1),
(101, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 'ADD_TO_PAGE', 2),
(102, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 'CONFIGURATION', 4),
(103, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 'PERMISSIONS', 8),
(104, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 'PREFERENCES', 16),
(105, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 'ACCESS_IN_CONTROL_PANEL', 32),
(201, '88', 'VIEW', 1),
(202, '88', 'ADD_TO_PAGE', 2),
(203, '88', 'CONFIGURATION', 4),
(204, '88', 'PERMISSIONS', 8),
(205, '88', 'PREFERENCES', 16),
(206, '88', 'ACCESS_IN_CONTROL_PANEL', 32),
(207, '190', 'VIEW', 1),
(208, '190', 'ADD_TO_PAGE', 2),
(209, '190', 'CONFIGURATION', 4),
(210, '190', 'PERMISSIONS', 8),
(211, '190', 'PREFERENCES', 16),
(212, '190', 'ACCESS_IN_CONTROL_PANEL', 32),
(213, '191', 'VIEW', 1),
(214, '191', 'ADD_TO_PAGE', 2),
(215, '191', 'CONFIGURATION', 4),
(216, '191', 'PERMISSIONS', 8),
(217, '191', 'PREFERENCES', 16),
(218, '191', 'ACCESS_IN_CONTROL_PANEL', 32),
(219, '192', 'VIEW', 1);
INSERT INTO "public"."resourceaction" ("resourceactionid", "name", "actionid", "bitwisevalue") VALUES
(220, '192', 'ADD_TO_PAGE', 2),
(221, '192', 'CONFIGURATION', 4),
(222, '192', 'PERMISSIONS', 8),
(223, '192', 'PREFERENCES', 16),
(224, '192', 'ACCESS_IN_CONTROL_PANEL', 32),
(225, '193', 'VIEW', 1),
(226, '193', 'ADD_TO_PAGE', 2),
(227, '193', 'CONFIGURATION', 4),
(228, '193', 'PERMISSIONS', 8),
(229, '193', 'PREFERENCES', 16),
(230, '193', 'ACCESS_IN_CONTROL_PANEL', 32),
(231, '194', 'VIEW', 1),
(232, '194', 'ADD_TO_PAGE', 2),
(233, '194', 'CONFIGURATION', 4),
(234, '194', 'PERMISSIONS', 8),
(235, '194', 'PREFERENCES', 16),
(236, '194', 'ACCESS_IN_CONTROL_PANEL', 32),
(237, '110', 'VIEW', 1),
(238, '110', 'ADD_TO_PAGE', 2),
(239, '110', 'CONFIGURATION', 4),
(240, '110', 'PERMISSIONS', 8),
(241, '110', 'PREFERENCES', 16),
(242, '110', 'ACCESS_IN_CONTROL_PANEL', 32),
(243, 'com.liferay.portlet.documentlibrary', 'ADD_DOCUMENT', 2),
(244, 'com.liferay.portlet.documentlibrary', 'ADD_DOCUMENT_TYPE', 4),
(245, 'com.liferay.portlet.documentlibrary', 'ADD_FOLDER', 8),
(246, 'com.liferay.portlet.documentlibrary', 'ADD_REPOSITORY', 16),
(247, 'com.liferay.portlet.documentlibrary', 'ADD_STRUCTURE', 32),
(248, 'com.liferay.portlet.documentlibrary', 'ADD_SHORTCUT', 64),
(249, 'com.liferay.portlet.documentlibrary', 'PERMISSIONS', 128),
(250, 'com.liferay.portlet.documentlibrary', 'SUBSCRIBE', 256),
(251, 'com.liferay.portlet.documentlibrary', 'UPDATE', 512),
(252, 'com.liferay.portlet.documentlibrary', 'VIEW', 1),
(253, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'ACCESS', 2),
(254, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'ADD_DOCUMENT', 4),
(255, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'ADD_SHORTCUT', 8),
(256, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'ADD_SUBFOLDER', 16),
(257, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'DELETE', 32),
(258, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'PERMISSIONS', 64),
(259, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'UPDATE', 128),
(260, 'com.liferay.portlet.documentlibrary.model.DLFolder', 'VIEW', 1),
(261, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 'DELETE', 2),
(262, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 'PERMISSIONS', 4),
(263, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 'UPDATE', 8),
(264, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 'VIEW', 1),
(265, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut', 'DELETE', 2),
(266, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut', 'PERMISSIONS', 4),
(267, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut', 'UPDATE', 8),
(268, 'com.liferay.portlet.documentlibrary.model.DLFileShortcut', 'VIEW', 1),
(269, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'ADD_DISCUSSION', 2),
(270, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'DELETE', 4),
(271, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'DELETE_DISCUSSION', 8),
(272, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'OVERRIDE_CHECKOUT', 16),
(273, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'PERMISSIONS', 32),
(274, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'UPDATE', 64),
(275, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'UPDATE_DISCUSSION', 128),
(276, 'com.liferay.portlet.documentlibrary.model.DLFileEntry', 'VIEW', 1),
(277, '113', 'VIEW', 1),
(278, '113', 'ADD_TO_PAGE', 2),
(279, '113', 'CONFIGURATION', 4),
(280, '113', 'PERMISSIONS', 8),
(282, '113', 'ACCESS_IN_CONTROL_PANEL', 32),
(283, '114', 'VIEW', 1),
(284, '114', 'ADD_TO_PAGE', 2),
(285, '114', 'CONFIGURATION', 4),
(286, '114', 'PERMISSIONS', 8),
(287, '114', 'PREFERENCES', 16),
(288, '114', 'ACCESS_IN_CONTROL_PANEL', 32),
(289, '115', 'VIEW', 1),
(290, '115', 'ADD_TO_PAGE', 2),
(291, '115', 'CONFIGURATION', 4),
(292, '115', 'PERMISSIONS', 8),
(293, '115', 'PREFERENCES', 16),
(294, '115', 'ACCESS_IN_CONTROL_PANEL', 32),
(295, '116', 'VIEW', 1),
(296, '116', 'ADD_TO_PAGE', 2),
(297, '116', 'CONFIGURATION', 4),
(298, '116', 'PERMISSIONS', 8),
(299, '116', 'PREFERENCES', 16),
(300, '116', 'ACCESS_IN_CONTROL_PANEL', 32),
(301, '90', 'ADD_COMMUNITY', 2),
(302, '90', 'ADD_GENERAL_ANNOUNCEMENTS', 4),
(303, '90', 'ADD_LAYOUT_PROTOTYPE', 8),
(304, '90', 'ADD_LAYOUT_SET_PROTOTYPE', 16),
(305, '90', 'ADD_LICENSE', 32),
(306, '90', 'ADD_ORGANIZATION', 64),
(307, '90', 'ADD_PASSWORD_POLICY', 128),
(308, '90', 'ADD_ROLE', 256),
(309, '90', 'ADD_USER', 512),
(310, '90', 'ADD_USER_GROUP', 1024),
(311, '90', 'CONFIGURATION', 2048),
(312, '90', 'EXPORT_USER', 4096),
(313, '90', 'IMPERSONATE', 8192),
(314, '90', 'UNLINK_LAYOUT_SET_PROTOTYPE', 16384),
(315, '90', 'VIEW_CONTROL_PANEL', 32768),
(316, '90', 'ADD_TO_PAGE', 65536),
(317, '90', 'PERMISSIONS', 131072),
(318, '90', 'PREFERENCES', 262144),
(319, '90', 'VIEW', 1),
(320, '90', 'ACCESS_IN_CONTROL_PANEL', 524288),
(321, '118', 'VIEW', 1),
(322, '118', 'ADD_TO_PAGE', 2),
(323, '118', 'CONFIGURATION', 4),
(324, '118', 'PERMISSIONS', 8),
(325, '118', 'PREFERENCES', 16),
(326, '118', 'ACCESS_IN_CONTROL_PANEL', 32),
(327, '119', 'VIEW', 1),
(328, '119', 'ADD_TO_PAGE', 2),
(329, '119', 'CONFIGURATION', 4),
(330, '119', 'PERMISSIONS', 8),
(331, '119', 'PREFERENCES', 16),
(332, '119', 'ACCESS_IN_CONTROL_PANEL', 32),
(333, '97', 'VIEW', 1),
(334, '97', 'ADD_TO_PAGE', 2),
(335, '97', 'CONFIGURATION', 4),
(336, '97', 'PERMISSIONS', 8),
(337, '97', 'PREFERENCES', 16),
(338, '97', 'ACCESS_IN_CONTROL_PANEL', 32),
(339, '98', 'ACCESS_IN_CONTROL_PANEL', 2),
(340, '98', 'ADD_TO_PAGE', 4),
(341, '98', 'CONFIGURATION', 8),
(342, '98', 'VIEW', 1),
(343, '98', 'PERMISSIONS', 16),
(344, '98', 'PREFERENCES', 32),
(345, 'com.liferay.portlet.softwarecatalog', 'ADD_FRAMEWORK_VERSION', 2),
(346, 'com.liferay.portlet.softwarecatalog', 'ADD_PRODUCT_ENTRY', 4),
(347, 'com.liferay.portlet.softwarecatalog', 'PERMISSIONS', 8),
(348, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'ADD_DISCUSSION', 2),
(349, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'DELETE', 4),
(350, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'DELETE_DISCUSSION', 8),
(351, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'PERMISSIONS', 16),
(352, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'UPDATE', 32),
(353, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'UPDATE_DISCUSSION', 64),
(354, 'com.liferay.portlet.softwarecatalog.model.SCProductEntry', 'VIEW', 1),
(355, 'com.liferay.portlet.softwarecatalog.model.SCLicense', 'DELETE', 2),
(356, 'com.liferay.portlet.softwarecatalog.model.SCLicense', 'PERMISSIONS', 4),
(357, 'com.liferay.portlet.softwarecatalog.model.SCLicense', 'UPDATE', 8),
(358, 'com.liferay.portlet.softwarecatalog.model.SCLicense', 'VIEW', 1),
(359, 'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion', 'DELETE', 2),
(360, 'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion', 'PERMISSIONS', 4),
(361, 'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion', 'UPDATE', 8),
(362, '11', 'ADD_TO_PAGE', 2),
(363, '11', 'CONFIGURATION', 4),
(364, '11', 'VIEW', 1),
(365, '11', 'PERMISSIONS', 8),
(366, '11', 'PREFERENCES', 16),
(367, '11', 'ACCESS_IN_CONTROL_PANEL', 32),
(368, '99', 'ACCESS_IN_CONTROL_PANEL', 2),
(369, '99', 'CONFIGURATION', 4),
(370, '99', 'VIEW', 1),
(371, '99', 'PERMISSIONS', 8),
(372, '99', 'PREFERENCES', 16),
(373, 'com.liferay.portlet.asset.model.AssetTag', 'DELETE', 2),
(374, 'com.liferay.portlet.asset.model.AssetTag', 'PERMISSIONS', 4),
(375, 'com.liferay.portlet.asset.model.AssetTag', 'UPDATE', 8),
(376, 'com.liferay.portlet.asset.model.AssetTag', 'VIEW', 1),
(377, 'com.liferay.portlet.asset', 'ADD_TAG', 2),
(378, 'com.liferay.portlet.asset', 'PERMISSIONS', 4),
(379, 'com.liferay.portlet.asset', 'ADD_CATEGORY', 8),
(380, 'com.liferay.portlet.asset', 'ADD_VOCABULARY', 16),
(381, '15', 'ACCESS_IN_CONTROL_PANEL', 2),
(382, '15', 'ADD_TO_PAGE', 4),
(383, '15', 'CONFIGURATION', 8),
(384, '15', 'VIEW', 1),
(385, '15', 'PERMISSIONS', 16),
(386, '15', 'PREFERENCES', 32),
(387, 'com.liferay.portlet.journal', 'ADD_ARTICLE', 2),
(388, 'com.liferay.portlet.journal', 'ADD_FEED', 4),
(389, 'com.liferay.portlet.journal', 'ADD_FOLDER', 8),
(390, 'com.liferay.portlet.journal', 'ADD_STRUCTURE', 16),
(480, '2', 'CONFIGURATION', 4),
(391, 'com.liferay.portlet.journal', 'ADD_TEMPLATE', 32),
(392, 'com.liferay.portlet.journal', 'SUBSCRIBE', 64),
(393, 'com.liferay.portlet.journal', 'VIEW', 1),
(394, 'com.liferay.portlet.journal', 'PERMISSIONS', 128),
(395, 'com.liferay.portlet.journal.model.JournalFeed', 'DELETE', 2),
(396, 'com.liferay.portlet.journal.model.JournalFeed', 'PERMISSIONS', 4),
(397, 'com.liferay.portlet.journal.model.JournalFeed', 'UPDATE', 8),
(398, 'com.liferay.portlet.journal.model.JournalFeed', 'VIEW', 1),
(399, 'com.liferay.portlet.journal.model.JournalTemplate', 'DELETE', 2),
(400, 'com.liferay.portlet.journal.model.JournalTemplate', 'PERMISSIONS', 4),
(401, 'com.liferay.portlet.journal.model.JournalTemplate', 'UPDATE', 8),
(402, 'com.liferay.portlet.journal.model.JournalTemplate', 'VIEW', 1),
(403, 'com.liferay.portlet.journal.model.JournalFolder', 'ACCESS', 2),
(404, 'com.liferay.portlet.journal.model.JournalFolder', 'ADD_ARTICLE', 4),
(405, 'com.liferay.portlet.journal.model.JournalFolder', 'ADD_SUBFOLDER', 8),
(406, 'com.liferay.portlet.journal.model.JournalFolder', 'DELETE', 16),
(407, 'com.liferay.portlet.journal.model.JournalFolder', 'PERMISSIONS', 32),
(408, 'com.liferay.portlet.journal.model.JournalFolder', 'UPDATE', 64),
(409, 'com.liferay.portlet.journal.model.JournalFolder', 'VIEW', 1),
(410, 'com.liferay.portlet.journal.model.JournalArticle', 'ADD_DISCUSSION', 2),
(411, 'com.liferay.portlet.journal.model.JournalArticle', 'DELETE', 4),
(412, 'com.liferay.portlet.journal.model.JournalArticle', 'DELETE_DISCUSSION', 8),
(413, 'com.liferay.portlet.journal.model.JournalArticle', 'EXPIRE', 16),
(414, 'com.liferay.portlet.journal.model.JournalArticle', 'PERMISSIONS', 32),
(415, 'com.liferay.portlet.journal.model.JournalArticle', 'UPDATE', 64),
(416, 'com.liferay.portlet.journal.model.JournalArticle', 'UPDATE_DISCUSSION', 128),
(417, 'com.liferay.portlet.journal.model.JournalArticle', 'VIEW', 1),
(418, 'com.liferay.portlet.journal.model.JournalStructure', 'DELETE', 2),
(419, 'com.liferay.portlet.journal.model.JournalStructure', 'PERMISSIONS', 4),
(420, 'com.liferay.portlet.journal.model.JournalStructure', 'UPDATE', 8),
(421, 'com.liferay.portlet.journal.model.JournalStructure', 'VIEW', 1),
(422, '16', 'VIEW', 1),
(423, '16', 'GUEST_PREFERENCES', 2),
(424, '16', 'PREFERENCES', 4),
(425, '16', 'ADD_TO_PAGE', 8),
(426, '16', 'CONFIGURATION', 16),
(427, '16', 'PERMISSIONS', 32),
(428, '16', 'ACCESS_IN_CONTROL_PANEL', 64),
(429, '19', 'ADD_TO_PAGE', 2),
(430, '19', 'CONFIGURATION', 4),
(431, '19', 'VIEW', 1),
(432, '19', 'PERMISSIONS', 8),
(433, '19', 'PREFERENCES', 16),
(434, '19', 'ACCESS_IN_CONTROL_PANEL', 32),
(435, 'com.liferay.portlet.messageboards.model.MBCategory', 'ADD_FILE', 2),
(436, 'com.liferay.portlet.messageboards.model.MBCategory', 'ADD_MESSAGE', 4),
(437, 'com.liferay.portlet.messageboards.model.MBCategory', 'ADD_SUBCATEGORY', 8),
(438, 'com.liferay.portlet.messageboards.model.MBCategory', 'DELETE', 16),
(439, 'com.liferay.portlet.messageboards.model.MBCategory', 'LOCK_THREAD', 32),
(440, 'com.liferay.portlet.messageboards.model.MBCategory', 'MOVE_THREAD', 64),
(441, 'com.liferay.portlet.messageboards.model.MBCategory', 'PERMISSIONS', 128),
(442, 'com.liferay.portlet.messageboards.model.MBCategory', 'REPLY_TO_MESSAGE', 256),
(443, 'com.liferay.portlet.messageboards.model.MBCategory', 'SUBSCRIBE', 512),
(444, 'com.liferay.portlet.messageboards.model.MBCategory', 'UPDATE', 1024),
(445, 'com.liferay.portlet.messageboards.model.MBCategory', 'UPDATE_THREAD_PRIORITY', 2048),
(446, 'com.liferay.portlet.messageboards.model.MBCategory', 'VIEW', 1),
(447, 'com.liferay.portlet.messageboards.model.MBThread', 'SUBSCRIBE', 2),
(448, 'com.liferay.portlet.messageboards.model.MBThread', 'VIEW', 1),
(449, 'com.liferay.portlet.messageboards.model.MBThread', 'PERMISSIONS', 4),
(450, 'com.liferay.portlet.messageboards', 'ADD_CATEGORY', 2),
(451, 'com.liferay.portlet.messageboards', 'ADD_FILE', 4),
(452, 'com.liferay.portlet.messageboards', 'ADD_MESSAGE', 8),
(453, 'com.liferay.portlet.messageboards', 'BAN_USER', 16),
(454, 'com.liferay.portlet.messageboards', 'MOVE_THREAD', 32),
(455, 'com.liferay.portlet.messageboards', 'LOCK_THREAD', 64),
(456, 'com.liferay.portlet.messageboards', 'PERMISSIONS', 128),
(457, 'com.liferay.portlet.messageboards', 'REPLY_TO_MESSAGE', 256),
(458, 'com.liferay.portlet.messageboards', 'SUBSCRIBE', 512),
(459, 'com.liferay.portlet.messageboards', 'UPDATE_THREAD_PRIORITY', 1024),
(460, 'com.liferay.portlet.messageboards', 'VIEW', 1),
(461, 'com.liferay.portlet.messageboards.model.MBMessage', 'DELETE', 2),
(462, 'com.liferay.portlet.messageboards.model.MBMessage', 'PERMISSIONS', 4),
(463, 'com.liferay.portlet.messageboards.model.MBMessage', 'SUBSCRIBE', 8),
(464, 'com.liferay.portlet.messageboards.model.MBMessage', 'UPDATE', 16),
(465, 'com.liferay.portlet.messageboards.model.MBMessage', 'VIEW', 1),
(466, '121', 'VIEW', 1),
(467, '121', 'ADD_TO_PAGE', 2),
(468, '121', 'CONFIGURATION', 4),
(469, '121', 'PERMISSIONS', 8),
(470, '121', 'PREFERENCES', 16),
(471, '121', 'ACCESS_IN_CONTROL_PANEL', 32),
(472, '122', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(473, '122', 'CONFIGURATION', 4),
(474, '122', 'VIEW', 1),
(475, '122', 'ADD_TO_PAGE', 8),
(476, '122', 'PERMISSIONS', 16),
(477, '122', 'PREFERENCES', 32),
(478, '122', 'ACCESS_IN_CONTROL_PANEL', 64),
(479, '2', 'ACCESS_IN_CONTROL_PANEL', 2),
(481, '2', 'VIEW', 1),
(482, '2', 'PERMISSIONS', 8),
(483, '2', 'PREFERENCES', 16),
(484, '3', 'VIEW', 1),
(485, '3', 'ADD_TO_PAGE', 2),
(486, '3', 'CONFIGURATION', 4),
(487, '3', 'PERMISSIONS', 8),
(488, '3', 'PREFERENCES', 16),
(489, '3', 'ACCESS_IN_CONTROL_PANEL', 32),
(490, '124', 'VIEW', 1),
(491, '124', 'ADD_TO_PAGE', 2),
(492, '124', 'CONFIGURATION', 4),
(493, '124', 'PERMISSIONS', 8),
(494, '124', 'PREFERENCES', 16),
(495, '124', 'ACCESS_IN_CONTROL_PANEL', 32),
(496, '125', 'ACCESS_IN_CONTROL_PANEL', 2),
(497, '125', 'CONFIGURATION', 4),
(498, '125', 'EXPORT_USER', 8),
(499, '125', 'VIEW', 1),
(500, '125', 'PERMISSIONS', 16),
(501, '125', 'PREFERENCES', 32),
(502, 'com.liferay.portal.model.User', 'DELETE', 2),
(503, 'com.liferay.portal.model.User', 'IMPERSONATE', 4),
(504, 'com.liferay.portal.model.User', 'PERMISSIONS', 8),
(505, 'com.liferay.portal.model.User', 'UPDATE', 16),
(506, 'com.liferay.portal.model.User', 'VIEW', 1),
(507, 'com.liferay.portal.model.Organization', 'ADD_ORGANIZATION', 2),
(508, 'com.liferay.portal.model.Organization', 'ASSIGN_MEMBERS', 4),
(509, 'com.liferay.portal.model.Organization', 'ASSIGN_USER_ROLES', 8),
(510, 'com.liferay.portal.model.Organization', 'DELETE', 16),
(511, 'com.liferay.portal.model.Organization', 'MANAGE_ANNOUNCEMENTS', 32),
(512, 'com.liferay.portal.model.Organization', 'MANAGE_SUBORGANIZATIONS', 64),
(513, 'com.liferay.portal.model.Organization', 'MANAGE_USERS', 128),
(514, 'com.liferay.portal.model.Organization', 'PERMISSIONS', 256),
(515, 'com.liferay.portal.model.Organization', 'UPDATE', 512),
(516, 'com.liferay.portal.model.Organization', 'VIEW', 1),
(517, 'com.liferay.portal.model.Organization', 'VIEW_MEMBERS', 1024),
(518, '127', 'VIEW', 1),
(519, '127', 'ADD_TO_PAGE', 2),
(520, '127', 'CONFIGURATION', 4),
(521, '127', 'PERMISSIONS', 8),
(522, '127', 'PREFERENCES', 16),
(523, '127', 'ACCESS_IN_CONTROL_PANEL', 32),
(524, 'com.liferay.portal.model.UserGroup', 'ASSIGN_MEMBERS', 2),
(525, 'com.liferay.portal.model.UserGroup', 'DELETE', 4),
(526, 'com.liferay.portal.model.UserGroup', 'MANAGE_ANNOUNCEMENTS', 8),
(527, 'com.liferay.portal.model.UserGroup', 'PERMISSIONS', 16),
(528, 'com.liferay.portal.model.UserGroup', 'UPDATE', 32),
(529, 'com.liferay.portal.model.UserGroup', 'VIEW', 1),
(530, 'com.liferay.portal.model.UserGroup', 'VIEW_MEMBERS', 64),
(531, '128', 'ACCESS_IN_CONTROL_PANEL', 2),
(532, '128', 'CONFIGURATION', 4),
(533, '128', 'VIEW', 1),
(534, '128', 'PERMISSIONS', 8),
(535, '128', 'PREFERENCES', 16),
(536, 'com.liferay.portal.model.Role', 'ASSIGN_MEMBERS', 2),
(537, 'com.liferay.portal.model.Role', 'DEFINE_PERMISSIONS', 4),
(538, 'com.liferay.portal.model.Role', 'DELETE', 8),
(539, 'com.liferay.portal.model.Role', 'MANAGE_ANNOUNCEMENTS', 16),
(540, 'com.liferay.portal.model.Role', 'PERMISSIONS', 32),
(541, 'com.liferay.portal.model.Role', 'UPDATE', 64),
(542, 'com.liferay.portal.model.Role', 'VIEW', 1),
(543, '129', 'ACCESS_IN_CONTROL_PANEL', 2),
(544, '129', 'CONFIGURATION', 4),
(545, '129', 'VIEW', 1),
(546, '129', 'PERMISSIONS', 8),
(547, '129', 'PREFERENCES', 16),
(548, 'com.liferay.portal.model.PasswordPolicy', 'ASSIGN_MEMBERS', 2),
(549, 'com.liferay.portal.model.PasswordPolicy', 'DELETE', 4),
(550, 'com.liferay.portal.model.PasswordPolicy', 'PERMISSIONS', 8),
(551, 'com.liferay.portal.model.PasswordPolicy', 'UPDATE', 16),
(552, 'com.liferay.portal.model.PasswordPolicy', 'VIEW', 1),
(553, '9', 'VIEW', 1),
(554, '9', 'ADD_TO_PAGE', 2),
(555, '9', 'CONFIGURATION', 4),
(556, '9', 'PERMISSIONS', 8),
(557, '9', 'PREFERENCES', 16),
(558, '9', 'ACCESS_IN_CONTROL_PANEL', 32),
(559, '20', 'ACCESS_IN_CONTROL_PANEL', 2),
(560, '20', 'ADD_PORTLET_DISPLAY_TEMPLATE', 4),
(561, '20', 'ADD_TO_PAGE', 8),
(562, '20', 'CONFIGURATION', 16),
(563, '20', 'VIEW', 1),
(564, '20', 'PERMISSIONS', 32),
(565, '20', 'PREFERENCES', 64),
(566, '23', 'VIEW', 1),
(567, '23', 'ADD_TO_PAGE', 2),
(568, '23', 'CONFIGURATION', 4),
(569, '23', 'PERMISSIONS', 8),
(570, '23', 'PREFERENCES', 16),
(571, '23', 'ACCESS_IN_CONTROL_PANEL', 32),
(572, '25', 'ACCESS_IN_CONTROL_PANEL', 2),
(573, '25', 'CONFIGURATION', 4),
(574, '25', 'VIEW', 1),
(575, '25', 'PERMISSIONS', 8),
(576, '25', 'PREFERENCES', 16),
(577, 'com.liferay.portlet.polls', 'ADD_QUESTION', 2),
(578, 'com.liferay.portlet.polls', 'PERMISSIONS', 4),
(579, 'com.liferay.portlet.polls.model.PollsQuestion', 'ADD_VOTE', 2),
(580, 'com.liferay.portlet.polls.model.PollsQuestion', 'DELETE', 4),
(581, 'com.liferay.portlet.polls.model.PollsQuestion', 'PERMISSIONS', 8),
(582, 'com.liferay.portlet.polls.model.PollsQuestion', 'UPDATE', 16),
(583, 'com.liferay.portlet.polls.model.PollsQuestion', 'VIEW', 1),
(584, '26', 'VIEW', 1),
(585, '26', 'ADD_TO_PAGE', 2),
(586, '26', 'CONFIGURATION', 4),
(587, '26', 'PERMISSIONS', 8),
(588, '26', 'PREFERENCES', 16),
(589, '26', 'ACCESS_IN_CONTROL_PANEL', 32),
(590, '27', 'VIEW', 1),
(591, '27', 'ADD_TO_PAGE', 2),
(592, '27', 'CONFIGURATION', 4),
(593, '27', 'PERMISSIONS', 8),
(594, '27', 'PREFERENCES', 16),
(595, '27', 'ACCESS_IN_CONTROL_PANEL', 32),
(596, '28', 'ACCESS_IN_CONTROL_PANEL', 2),
(597, '28', 'ADD_TO_PAGE', 4),
(598, '28', 'CONFIGURATION', 8),
(599, '28', 'VIEW', 1),
(600, '28', 'PERMISSIONS', 16),
(601, '28', 'PREFERENCES', 32),
(602, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'ACCESS', 2),
(603, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'ADD_ENTRY', 4),
(604, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'ADD_SUBFOLDER', 8),
(605, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'DELETE', 16),
(606, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'PERMISSIONS', 32),
(607, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'SUBSCRIBE', 64),
(608, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'UPDATE', 128),
(609, 'com.liferay.portlet.bookmarks.model.BookmarksFolder', 'VIEW', 1),
(610, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'DELETE', 2),
(611, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'PERMISSIONS', 4),
(612, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'SUBSCRIBE', 8),
(613, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'UPDATE', 16),
(614, 'com.liferay.portlet.bookmarks.model.BookmarksEntry', 'VIEW', 1),
(615, 'com.liferay.portlet.bookmarks', 'ADD_ENTRY', 2),
(616, 'com.liferay.portlet.bookmarks', 'ADD_FOLDER', 4),
(617, 'com.liferay.portlet.bookmarks', 'PERMISSIONS', 8),
(618, 'com.liferay.portlet.bookmarks', 'SUBSCRIBE', 16),
(619, 'com.liferay.portlet.bookmarks', 'VIEW', 1),
(620, '29', 'ADD_TO_PAGE', 2),
(621, '29', 'CONFIGURATION', 4),
(622, '29', 'VIEW', 1),
(623, '29', 'PERMISSIONS', 8),
(624, '29', 'PREFERENCES', 16),
(625, '29', 'ACCESS_IN_CONTROL_PANEL', 32),
(626, '130', 'ACCESS_IN_CONTROL_PANEL', 2),
(627, '130', 'CONFIGURATION', 4),
(628, '130', 'VIEW', 1),
(629, '130', 'PERMISSIONS', 8),
(630, '130', 'PREFERENCES', 16),
(631, '131', 'ACCESS_IN_CONTROL_PANEL', 2),
(632, '131', 'CONFIGURATION', 4),
(633, '131', 'VIEW', 1),
(634, '131', 'PERMISSIONS', 8),
(635, '131', 'PREFERENCES', 16),
(636, '132', 'ACCESS_IN_CONTROL_PANEL', 2),
(637, '132', 'CONFIGURATION', 4),
(638, '132', 'VIEW', 1),
(639, '132', 'PERMISSIONS', 8),
(640, '132', 'PREFERENCES', 16),
(641, '133', 'VIEW', 1),
(642, '133', 'ADD_TO_PAGE', 2),
(643, '133', 'CONFIGURATION', 4),
(644, '133', 'PERMISSIONS', 8),
(645, '133', 'PREFERENCES', 16),
(646, '133', 'ACCESS_IN_CONTROL_PANEL', 32),
(647, '134', 'ACCESS_IN_CONTROL_PANEL', 2),
(648, '134', 'CONFIGURATION', 4),
(649, '134', 'VIEW', 1),
(650, '134', 'PERMISSIONS', 8),
(651, '134', 'PREFERENCES', 16),
(652, 'com.liferay.portal.model.Group', 'ADD_COMMUNITY', 2),
(653, 'com.liferay.portal.model.Group', 'ADD_LAYOUT', 4),
(654, 'com.liferay.portal.model.Group', 'ADD_LAYOUT_BRANCH', 8),
(655, 'com.liferay.portal.model.Group', 'ADD_LAYOUT_SET_BRANCH', 16),
(656, 'com.liferay.portal.model.Group', 'ASSIGN_MEMBERS', 32),
(657, 'com.liferay.portal.model.Group', 'ASSIGN_USER_ROLES', 64),
(658, 'com.liferay.portal.model.Group', 'CONFIGURE_PORTLETS', 128),
(659, 'com.liferay.portal.model.Group', 'DELETE', 256),
(660, 'com.liferay.portal.model.Group', 'EXPORT_IMPORT_LAYOUTS', 512),
(661, 'com.liferay.portal.model.Group', 'EXPORT_IMPORT_PORTLET_INFO', 1024),
(662, 'com.liferay.portal.model.Group', 'MANAGE_ANNOUNCEMENTS', 2048),
(663, 'com.liferay.portal.model.Group', 'MANAGE_ARCHIVED_SETUPS', 4096),
(664, 'com.liferay.portal.model.Group', 'MANAGE_LAYOUTS', 8192),
(665, 'com.liferay.portal.model.Group', 'MANAGE_STAGING', 16384),
(666, 'com.liferay.portal.model.Group', 'MANAGE_SUBGROUPS', 32768),
(667, 'com.liferay.portal.model.Group', 'MANAGE_TEAMS', 65536),
(668, 'com.liferay.portal.model.Group', 'PERMISSIONS', 131072),
(669, 'com.liferay.portal.model.Group', 'PREVIEW_IN_DEVICE', 262144),
(670, 'com.liferay.portal.model.Group', 'PUBLISH_STAGING', 524288),
(671, 'com.liferay.portal.model.Group', 'PUBLISH_TO_REMOTE', 1048576),
(672, 'com.liferay.portal.model.Group', 'UPDATE', 2097152),
(673, 'com.liferay.portal.model.Group', 'VIEW', 1),
(674, 'com.liferay.portal.model.Group', 'VIEW_MEMBERS', 4194304),
(675, 'com.liferay.portal.model.Group', 'VIEW_SITE_ADMINISTRATION', 8388608),
(676, 'com.liferay.portal.model.Group', 'VIEW_STAGING', 16777216),
(677, '135', 'ACCESS_IN_CONTROL_PANEL', 2),
(678, '135', 'CONFIGURATION', 4),
(679, '135', 'VIEW', 1),
(680, '135', 'PERMISSIONS', 8),
(681, '135', 'PREFERENCES', 16),
(682, '137', 'ACCESS_IN_CONTROL_PANEL', 2),
(683, '137', 'CONFIGURATION', 4),
(684, '137', 'VIEW', 1),
(685, '137', 'PERMISSIONS', 8),
(686, '137', 'PREFERENCES', 16),
(687, '139', 'ACCESS_IN_CONTROL_PANEL', 2),
(688, '139', 'ADD_EXPANDO', 4),
(689, '139', 'CONFIGURATION', 8),
(690, '139', 'VIEW', 1),
(691, '139', 'PERMISSIONS', 16),
(692, '139', 'PREFERENCES', 32),
(693, 'com.liferay.portlet.expando.model.ExpandoColumn', 'DELETE', 2),
(694, 'com.liferay.portlet.expando.model.ExpandoColumn', 'PERMISSIONS', 4),
(695, 'com.liferay.portlet.expando.model.ExpandoColumn', 'UPDATE', 8),
(696, 'com.liferay.portlet.expando.model.ExpandoColumn', 'VIEW', 1),
(697, '30', 'VIEW', 1),
(698, '30', 'ADD_TO_PAGE', 2),
(699, '30', 'CONFIGURATION', 4),
(700, '30', 'PERMISSIONS', 8),
(701, '30', 'PREFERENCES', 16),
(702, '30', 'ACCESS_IN_CONTROL_PANEL', 32),
(703, '31', 'VIEW', 1),
(704, '31', 'ADD_TO_PAGE', 2),
(705, '31', 'CONFIGURATION', 4),
(706, '31', 'PERMISSIONS', 8),
(707, '31', 'PREFERENCES', 16),
(708, '31', 'ACCESS_IN_CONTROL_PANEL', 32),
(709, '33', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(710, '33', 'ADD_TO_PAGE', 4),
(711, '33', 'CONFIGURATION', 8),
(712, '33', 'VIEW', 1),
(713, '33', 'PERMISSIONS', 16),
(714, '33', 'PREFERENCES', 32),
(715, '33', 'ACCESS_IN_CONTROL_PANEL', 64),
(716, 'com.liferay.portlet.blogs.model.BlogsEntry', 'ADD_DISCUSSION', 2),
(717, 'com.liferay.portlet.blogs.model.BlogsEntry', 'DELETE', 4),
(718, 'com.liferay.portlet.blogs.model.BlogsEntry', 'DELETE_DISCUSSION', 8),
(719, 'com.liferay.portlet.blogs.model.BlogsEntry', 'PERMISSIONS', 16),
(720, 'com.liferay.portlet.blogs.model.BlogsEntry', 'UPDATE', 32),
(721, 'com.liferay.portlet.blogs.model.BlogsEntry', 'UPDATE_DISCUSSION', 64),
(722, 'com.liferay.portlet.blogs.model.BlogsEntry', 'VIEW', 1),
(723, 'com.liferay.portlet.blogs', 'ADD_ENTRY', 2),
(724, 'com.liferay.portlet.blogs', 'PERMISSIONS', 4),
(725, 'com.liferay.portlet.blogs', 'SUBSCRIBE', 8),
(726, '34', 'ADD_TO_PAGE', 2),
(727, '34', 'CONFIGURATION', 4),
(728, '34', 'VIEW', 1),
(729, '34', 'PERMISSIONS', 8),
(730, '34', 'PREFERENCES', 16),
(731, '34', 'ACCESS_IN_CONTROL_PANEL', 32),
(732, 'com.liferay.portlet.shopping', 'ADD_CATEGORY', 2),
(733, 'com.liferay.portlet.shopping', 'ADD_ITEM', 4),
(734, 'com.liferay.portlet.shopping', 'MANAGE_COUPONS', 8),
(735, 'com.liferay.portlet.shopping', 'MANAGE_ORDERS', 16),
(736, 'com.liferay.portlet.shopping', 'PERMISSIONS', 32),
(737, 'com.liferay.portlet.shopping', 'VIEW', 1),
(738, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'ADD_ITEM', 2),
(739, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'ADD_SUBCATEGORY', 4),
(740, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'DELETE', 8),
(741, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'PERMISSIONS', 16),
(742, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'UPDATE', 32),
(743, 'com.liferay.portlet.shopping.model.ShoppingCategory', 'VIEW', 1),
(744, 'com.liferay.portlet.shopping.model.ShoppingOrder', 'DELETE', 2),
(745, 'com.liferay.portlet.shopping.model.ShoppingOrder', 'PERMISSIONS', 4),
(746, 'com.liferay.portlet.shopping.model.ShoppingOrder', 'UPDATE', 8),
(747, 'com.liferay.portlet.shopping.model.ShoppingOrder', 'VIEW', 1),
(748, 'com.liferay.portlet.shopping.model.ShoppingItem', 'DELETE', 2),
(749, 'com.liferay.portlet.shopping.model.ShoppingItem', 'PERMISSIONS', 4),
(750, 'com.liferay.portlet.shopping.model.ShoppingItem', 'UPDATE', 8),
(751, 'com.liferay.portlet.shopping.model.ShoppingItem', 'VIEW', 1),
(752, '36', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(753, '36', 'ADD_TO_PAGE', 4),
(754, '36', 'CONFIGURATION', 8),
(755, '36', 'VIEW', 1),
(756, '36', 'PERMISSIONS', 16),
(757, '36', 'PREFERENCES', 32),
(758, '36', 'ACCESS_IN_CONTROL_PANEL', 64),
(759, 'com.liferay.portlet.wiki.model.WikiNode', 'ADD_ATTACHMENT', 2),
(760, 'com.liferay.portlet.wiki.model.WikiNode', 'ADD_PAGE', 4),
(761, 'com.liferay.portlet.wiki.model.WikiNode', 'DELETE', 8),
(762, 'com.liferay.portlet.wiki.model.WikiNode', 'IMPORT', 16),
(763, 'com.liferay.portlet.wiki.model.WikiNode', 'PERMISSIONS', 32),
(764, 'com.liferay.portlet.wiki.model.WikiNode', 'SUBSCRIBE', 64),
(765, 'com.liferay.portlet.wiki.model.WikiNode', 'UPDATE', 128),
(766, 'com.liferay.portlet.wiki.model.WikiNode', 'VIEW', 1),
(767, 'com.liferay.portlet.wiki.model.WikiPage', 'ADD_DISCUSSION', 2),
(768, 'com.liferay.portlet.wiki.model.WikiPage', 'DELETE', 4),
(769, 'com.liferay.portlet.wiki.model.WikiPage', 'DELETE_DISCUSSION', 8),
(770, 'com.liferay.portlet.wiki.model.WikiPage', 'PERMISSIONS', 16),
(771, 'com.liferay.portlet.wiki.model.WikiPage', 'SUBSCRIBE', 32),
(772, 'com.liferay.portlet.wiki.model.WikiPage', 'UPDATE', 64),
(773, 'com.liferay.portlet.wiki.model.WikiPage', 'UPDATE_DISCUSSION', 128),
(774, 'com.liferay.portlet.wiki.model.WikiPage', 'VIEW', 1),
(775, 'com.liferay.portlet.wiki', 'ADD_NODE', 2),
(776, 'com.liferay.portlet.wiki', 'PERMISSIONS', 4),
(777, '39', 'VIEW', 1),
(778, '39', 'ADD_TO_PAGE', 2),
(779, '39', 'CONFIGURATION', 4),
(780, '39', 'PERMISSIONS', 8),
(781, '39', 'PREFERENCES', 16),
(782, '39', 'ACCESS_IN_CONTROL_PANEL', 32),
(783, '140', 'ACCESS_IN_CONTROL_PANEL', 2),
(784, '140', 'CONFIGURATION', 4),
(785, '140', 'VIEW', 1),
(786, '140', 'PERMISSIONS', 8);
INSERT INTO "public"."resourceaction" ("resourceactionid", "name", "actionid", "bitwisevalue") VALUES
(787, '140', 'PREFERENCES', 16),
(788, '141', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(789, '141', 'CONFIGURATION', 4),
(790, '141', 'VIEW', 1),
(791, '141', 'ADD_TO_PAGE', 8),
(792, '141', 'PERMISSIONS', 16),
(793, '141', 'PREFERENCES', 32),
(794, '141', 'ACCESS_IN_CONTROL_PANEL', 64),
(795, '142', 'VIEW', 1),
(796, '142', 'ADD_TO_PAGE', 2),
(797, '142', 'CONFIGURATION', 4),
(798, '142', 'PERMISSIONS', 8),
(799, '142', 'PREFERENCES', 16),
(800, '142', 'ACCESS_IN_CONTROL_PANEL', 32),
(801, '143', 'VIEW', 1),
(802, '143', 'ADD_TO_PAGE', 2),
(803, '143', 'CONFIGURATION', 4),
(804, '143', 'PERMISSIONS', 8),
(805, '143', 'PREFERENCES', 16),
(806, '143', 'ACCESS_IN_CONTROL_PANEL', 32),
(807, '145', 'VIEW', 1),
(808, '145', 'ADD_TO_PAGE', 2),
(809, '145', 'CONFIGURATION', 4),
(810, '145', 'PERMISSIONS', 8),
(811, '145', 'PREFERENCES', 16),
(812, '145', 'ACCESS_IN_CONTROL_PANEL', 32),
(813, '146', 'ACCESS_IN_CONTROL_PANEL', 2),
(814, '146', 'CONFIGURATION', 4),
(815, '146', 'VIEW', 1),
(816, '146', 'PERMISSIONS', 8),
(817, '146', 'PREFERENCES', 16),
(818, 'com.liferay.portal.model.LayoutPrototype', 'DELETE', 2),
(819, 'com.liferay.portal.model.LayoutPrototype', 'PERMISSIONS', 4),
(820, 'com.liferay.portal.model.LayoutPrototype', 'UPDATE', 8),
(821, 'com.liferay.portal.model.LayoutPrototype', 'VIEW', 1),
(822, '147', 'ACCESS_IN_CONTROL_PANEL', 2),
(823, '147', 'CONFIGURATION', 4),
(824, '147', 'VIEW', 1),
(825, '147', 'PERMISSIONS', 8),
(826, '147', 'PREFERENCES', 16),
(827, 'com.liferay.portlet.asset.model.AssetCategory', 'ADD_CATEGORY', 2),
(828, 'com.liferay.portlet.asset.model.AssetCategory', 'DELETE', 4),
(829, 'com.liferay.portlet.asset.model.AssetCategory', 'PERMISSIONS', 8),
(830, 'com.liferay.portlet.asset.model.AssetCategory', 'UPDATE', 16),
(831, 'com.liferay.portlet.asset.model.AssetCategory', 'VIEW', 1),
(832, 'com.liferay.portlet.asset.model.AssetVocabulary', 'DELETE', 2),
(833, 'com.liferay.portlet.asset.model.AssetVocabulary', 'PERMISSIONS', 4),
(834, 'com.liferay.portlet.asset.model.AssetVocabulary', 'UPDATE', 8),
(835, 'com.liferay.portlet.asset.model.AssetVocabulary', 'VIEW', 1),
(836, '148', 'VIEW', 1),
(837, '148', 'ADD_TO_PAGE', 2),
(838, '148', 'CONFIGURATION', 4),
(839, '148', 'PERMISSIONS', 8),
(840, '148', 'PREFERENCES', 16),
(841, '148', 'ACCESS_IN_CONTROL_PANEL', 32),
(842, '149', 'ACCESS_IN_CONTROL_PANEL', 2),
(843, '149', 'CONFIGURATION', 4),
(844, '149', 'VIEW', 1),
(845, '149', 'PERMISSIONS', 8),
(846, '149', 'PREFERENCES', 16),
(847, 'com.liferay.portal.model.LayoutSetPrototype', 'DELETE', 2),
(848, 'com.liferay.portal.model.LayoutSetPrototype', 'PERMISSIONS', 4),
(849, 'com.liferay.portal.model.LayoutSetPrototype', 'UPDATE', 8),
(850, 'com.liferay.portal.model.LayoutSetPrototype', 'VIEW', 1),
(851, '47', 'VIEW', 1),
(852, '47', 'ADD_TO_PAGE', 2),
(853, '47', 'CONFIGURATION', 4),
(854, '47', 'PERMISSIONS', 8),
(855, '47', 'PREFERENCES', 16),
(856, '47', 'ACCESS_IN_CONTROL_PANEL', 32),
(857, '48', 'VIEW', 1),
(858, '48', 'ADD_TO_PAGE', 2),
(859, '48', 'CONFIGURATION', 4),
(860, '48', 'PERMISSIONS', 8),
(861, '48', 'PREFERENCES', 16),
(862, '48', 'ACCESS_IN_CONTROL_PANEL', 32),
(863, '49', 'VIEW', 1),
(864, '49', 'ADD_TO_PAGE', 2),
(865, '49', 'CONFIGURATION', 4),
(866, '49', 'PERMISSIONS', 8),
(867, '49', 'PREFERENCES', 16),
(868, '49', 'ACCESS_IN_CONTROL_PANEL', 32),
(869, '150', 'ACCESS_IN_CONTROL_PANEL', 2),
(870, '150', 'CONFIGURATION', 4),
(871, '150', 'VIEW', 1),
(872, '150', 'PERMISSIONS', 8),
(873, '150', 'PREFERENCES', 16),
(874, '151', 'ACCESS_IN_CONTROL_PANEL', 2),
(875, '151', 'CONFIGURATION', 4),
(876, '151', 'VIEW', 1),
(877, '151', 'PERMISSIONS', 8),
(878, '151', 'PREFERENCES', 16),
(879, '152', 'ACCESS_IN_CONTROL_PANEL', 2),
(880, '152', 'CONFIGURATION', 4),
(881, '152', 'VIEW', 1),
(882, '152', 'PERMISSIONS', 8),
(883, '152', 'PREFERENCES', 16),
(884, '153', 'ACCESS_IN_CONTROL_PANEL', 2),
(885, '153', 'ADD_TO_PAGE', 4),
(886, '153', 'CONFIGURATION', 8),
(887, '153', 'VIEW', 1),
(888, '153', 'PERMISSIONS', 16),
(889, '153', 'PREFERENCES', 32),
(890, '154', 'ACCESS_IN_CONTROL_PANEL', 2),
(891, '154', 'CONFIGURATION', 4),
(892, '154', 'VIEW', 1),
(893, '154', 'PERMISSIONS', 8),
(894, '154', 'PREFERENCES', 16),
(895, '156', 'VIEW', 1),
(896, '156', 'ADD_TO_PAGE', 2),
(897, '156', 'CONFIGURATION', 4),
(898, '156', 'PERMISSIONS', 8),
(899, '156', 'PREFERENCES', 16),
(900, '156', 'ACCESS_IN_CONTROL_PANEL', 32),
(901, 'com.liferay.portal.model.LayoutSetBranch', 'DELETE', 2),
(902, 'com.liferay.portal.model.LayoutSetBranch', 'MERGE', 4),
(903, 'com.liferay.portal.model.LayoutSetBranch', 'PERMISSIONS', 8),
(904, 'com.liferay.portal.model.LayoutSetBranch', 'UPDATE', 16),
(905, 'com.liferay.portal.model.LayoutBranch', 'DELETE', 2),
(906, 'com.liferay.portal.model.LayoutBranch', 'PERMISSIONS', 4),
(907, 'com.liferay.portal.model.LayoutBranch', 'UPDATE', 8),
(908, 'com.liferay.portal.model.Layout', 'ADD_DISCUSSION', 2),
(909, 'com.liferay.portal.model.Layout', 'ADD_LAYOUT', 4),
(910, 'com.liferay.portal.model.Layout', 'CONFIGURE_PORTLETS', 8),
(911, 'com.liferay.portal.model.Layout', 'CUSTOMIZE', 16),
(912, 'com.liferay.portal.model.Layout', 'DELETE', 32),
(913, 'com.liferay.portal.model.Layout', 'DELETE_DISCUSSION', 64),
(914, 'com.liferay.portal.model.Layout', 'PERMISSIONS', 128),
(915, 'com.liferay.portal.model.Layout', 'UPDATE', 256),
(916, 'com.liferay.portal.model.Layout', 'UPDATE_DISCUSSION', 512),
(917, 'com.liferay.portal.model.Layout', 'VIEW', 1),
(918, '157', 'ACCESS_IN_CONTROL_PANEL', 2),
(919, '157', 'CONFIGURATION', 4),
(920, '157', 'VIEW', 1),
(921, '157', 'PERMISSIONS', 8),
(922, '157', 'PREFERENCES', 16),
(923, '158', 'ACCESS_IN_CONTROL_PANEL', 2),
(924, '158', 'ADD_TO_PAGE', 4),
(925, '158', 'CONFIGURATION', 8),
(926, '158', 'VIEW', 1),
(927, '158', 'PERMISSIONS', 16);
INSERT INTO "public"."resourceaction" ("resourceactionid", "name", "actionid", "bitwisevalue") VALUES
(928, '158', 'PREFERENCES', 32),
(929, '50', 'VIEW', 1),
(930, '50', 'ADD_TO_PAGE', 2),
(931, '50', 'CONFIGURATION', 4),
(932, '50', 'PERMISSIONS', 8),
(933, '50', 'PREFERENCES', 16),
(934, '50', 'ACCESS_IN_CONTROL_PANEL', 32),
(935, '54', 'VIEW', 1),
(936, '54', 'ADD_TO_PAGE', 2),
(937, '54', 'CONFIGURATION', 4),
(938, '54', 'PERMISSIONS', 8),
(939, '54', 'PREFERENCES', 16),
(940, '54', 'ACCESS_IN_CONTROL_PANEL', 32),
(941, '56', 'ADD_TO_PAGE', 2),
(942, '56', 'CONFIGURATION', 4),
(943, '56', 'VIEW', 1),
(944, '56', 'PERMISSIONS', 8),
(945, '56', 'PREFERENCES', 16),
(946, '56', 'ACCESS_IN_CONTROL_PANEL', 32),
(947, '58', 'ADD_TO_PAGE', 2),
(948, '58', 'CONFIGURATION', 4),
(949, '58', 'VIEW', 1),
(950, '58', 'PERMISSIONS', 8),
(951, '58', 'PREFERENCES', 16),
(952, '58', 'ACCESS_IN_CONTROL_PANEL', 32),
(953, '59', 'VIEW', 1),
(954, '59', 'ADD_TO_PAGE', 2),
(955, '59', 'CONFIGURATION', 4),
(956, '59', 'PERMISSIONS', 8),
(957, '59', 'PREFERENCES', 16),
(958, '59', 'ACCESS_IN_CONTROL_PANEL', 32),
(959, '160', 'VIEW', 1),
(960, '160', 'ADD_TO_PAGE', 2),
(961, '160', 'CONFIGURATION', 4),
(962, '160', 'PERMISSIONS', 8),
(963, '160', 'PREFERENCES', 16),
(964, '160', 'ACCESS_IN_CONTROL_PANEL', 32),
(965, '161', 'ACCESS_IN_CONTROL_PANEL', 2),
(966, '161', 'CONFIGURATION', 4),
(967, '161', 'VIEW', 1),
(968, '161', 'PERMISSIONS', 8),
(969, '161', 'PREFERENCES', 16),
(970, '162', 'ACCESS_IN_CONTROL_PANEL', 2),
(971, '162', 'CONFIGURATION', 4),
(972, '162', 'VIEW', 1),
(973, '162', 'PERMISSIONS', 8),
(974, '162', 'PREFERENCES', 16),
(975, '164', 'VIEW', 1),
(976, '164', 'ADD_TO_PAGE', 2),
(977, '164', 'CONFIGURATION', 4),
(978, '164', 'PERMISSIONS', 8),
(979, '164', 'PREFERENCES', 16),
(980, '164', 'ACCESS_IN_CONTROL_PANEL', 32),
(981, '165', 'VIEW', 1),
(982, '165', 'ADD_TO_PAGE', 2),
(983, '165', 'CONFIGURATION', 4),
(984, '165', 'PERMISSIONS', 8),
(985, '165', 'PREFERENCES', 16),
(986, '165', 'ACCESS_IN_CONTROL_PANEL', 32),
(987, '166', 'ACCESS_IN_CONTROL_PANEL', 2),
(988, '166', 'ADD_TO_PAGE', 4),
(989, '166', 'CONFIGURATION', 8),
(990, '166', 'VIEW', 1),
(991, '166', 'PERMISSIONS', 16),
(992, '166', 'PREFERENCES', 32),
(993, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 'DELETE', 2),
(994, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 'PERMISSIONS', 4),
(995, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 'UPDATE', 8),
(996, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 'VIEW', 1),
(997, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 'DELETE', 2),
(998, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 'PERMISSIONS', 4),
(999, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 'UPDATE', 8),
(1000, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 'VIEW', 1),
(1001, '167', 'ACCESS_IN_CONTROL_PANEL', 2),
(1002, '167', 'ADD_TO_PAGE', 4),
(1003, '167', 'CONFIGURATION', 8),
(1004, '167', 'VIEW', 1),
(1005, '167', 'PERMISSIONS', 16),
(1006, '167', 'PREFERENCES', 32),
(1007, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'ADD_RECORD', 2),
(1008, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'DELETE', 4),
(1009, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'PERMISSIONS', 8),
(1010, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'UPDATE', 16),
(1011, 'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet', 'VIEW', 1),
(1012, 'com.liferay.portlet.dynamicdatalists', 'ADD_RECORD_SET', 2),
(1013, 'com.liferay.portlet.dynamicdatalists', 'ADD_STRUCTURE', 4),
(1014, 'com.liferay.portlet.dynamicdatalists', 'ADD_TEMPLATE', 8),
(1015, 'com.liferay.portlet.dynamicdatalists', 'PERMISSIONS', 16),
(1016, '169', 'VIEW', 1),
(1017, '169', 'ADD_TO_PAGE', 2),
(1018, '169', 'CONFIGURATION', 4),
(1019, '169', 'PERMISSIONS', 8),
(1020, '169', 'PREFERENCES', 16),
(1021, '169', 'ACCESS_IN_CONTROL_PANEL', 32),
(1022, '61', 'VIEW', 1),
(1023, '61', 'ADD_TO_PAGE', 2),
(1024, '61', 'CONFIGURATION', 4),
(1025, '61', 'PERMISSIONS', 8),
(1026, '61', 'PREFERENCES', 16),
(1027, '61', 'ACCESS_IN_CONTROL_PANEL', 32),
(1028, '62', 'VIEW', 1),
(1029, '62', 'ADD_TO_PAGE', 2),
(1030, '62', 'CONFIGURATION', 4),
(1031, '62', 'PERMISSIONS', 8),
(1032, '62', 'PREFERENCES', 16),
(1033, '62', 'ACCESS_IN_CONTROL_PANEL', 32),
(1034, '64', 'VIEW', 1),
(1035, '64', 'ADD_TO_PAGE', 2),
(1036, '64', 'CONFIGURATION', 4),
(1037, '64', 'PERMISSIONS', 8),
(1038, '64', 'PREFERENCES', 16),
(1039, '64', 'ACCESS_IN_CONTROL_PANEL', 32),
(1040, '66', 'VIEW', 1),
(1041, '66', 'ADD_TO_PAGE', 2),
(1042, '66', 'CONFIGURATION', 4),
(1043, '66', 'PERMISSIONS', 8),
(1044, '66', 'PREFERENCES', 16),
(1045, '66', 'ACCESS_IN_CONTROL_PANEL', 32),
(1046, '67', 'VIEW', 1),
(1047, '67', 'ADD_TO_PAGE', 2),
(1048, '67', 'CONFIGURATION', 4),
(1049, '67', 'PERMISSIONS', 8),
(1050, '67', 'PREFERENCES', 16),
(1051, '67', 'ACCESS_IN_CONTROL_PANEL', 32),
(1052, '170', 'VIEW', 1),
(1053, '170', 'ADD_TO_PAGE', 2),
(1054, '170', 'CONFIGURATION', 4),
(1055, '170', 'PERMISSIONS', 8),
(1056, '170', 'PREFERENCES', 16),
(1057, '170', 'ACCESS_IN_CONTROL_PANEL', 32),
(1058, '172', 'VIEW', 1),
(1059, '172', 'ADD_TO_PAGE', 2),
(1060, '172', 'CONFIGURATION', 4),
(1061, '172', 'PERMISSIONS', 8),
(1062, '172', 'PREFERENCES', 16),
(1063, '172', 'ACCESS_IN_CONTROL_PANEL', 32),
(1064, '173', 'VIEW', 1),
(1065, '173', 'ADD_TO_PAGE', 2),
(1066, '173', 'CONFIGURATION', 4),
(1067, '173', 'PERMISSIONS', 8),
(1068, '173', 'PREFERENCES', 16),
(1069, '173', 'ACCESS_IN_CONTROL_PANEL', 32),
(1070, '174', 'VIEW', 1),
(1071, '174', 'ADD_TO_PAGE', 2),
(1072, '174', 'CONFIGURATION', 4),
(1073, '174', 'PERMISSIONS', 8),
(1074, '174', 'PREFERENCES', 16),
(1075, '174', 'ACCESS_IN_CONTROL_PANEL', 32),
(1076, 'com.liferay.portal.model.Team', 'ASSIGN_MEMBERS', 2),
(1077, 'com.liferay.portal.model.Team', 'DELETE', 4),
(1078, 'com.liferay.portal.model.Team', 'PERMISSIONS', 8),
(1079, 'com.liferay.portal.model.Team', 'UPDATE', 16),
(1080, 'com.liferay.portal.model.Team', 'VIEW', 1),
(1081, '175', 'VIEW', 1),
(1082, '175', 'ADD_TO_PAGE', 2),
(1083, '175', 'CONFIGURATION', 4),
(1084, '175', 'PERMISSIONS', 8),
(1085, '175', 'PREFERENCES', 16),
(1086, '175', 'ACCESS_IN_CONTROL_PANEL', 32),
(1087, '176', 'VIEW', 1),
(1088, '176', 'ADD_TO_PAGE', 2),
(1089, '176', 'CONFIGURATION', 4),
(1090, '176', 'PERMISSIONS', 8),
(1091, '176', 'PREFERENCES', 16),
(1092, '176', 'ACCESS_IN_CONTROL_PANEL', 32),
(1093, '178', 'CONFIGURATION', 2),
(1094, '178', 'VIEW', 1),
(1095, '178', 'ADD_TO_PAGE', 4),
(1096, '178', 'PERMISSIONS', 8),
(1097, '178', 'PREFERENCES', 16),
(1098, '178', 'ACCESS_IN_CONTROL_PANEL', 32),
(1099, 'com.liferay.portlet.mobiledevicerules', 'ADD_RULE_GROUP', 2),
(1100, 'com.liferay.portlet.mobiledevicerules', 'ADD_RULE_GROUP_INSTANCE', 4),
(1101, 'com.liferay.portlet.mobiledevicerules', 'CONFIGURATION', 8),
(1102, 'com.liferay.portlet.mobiledevicerules', 'VIEW', 1),
(1103, 'com.liferay.portlet.mobiledevicerules', 'PERMISSIONS', 16),
(1104, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance', 'DELETE', 2),
(1105, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance', 'PERMISSIONS', 4),
(1106, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance', 'UPDATE', 8),
(1107, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance', 'VIEW', 1),
(1108, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup', 'DELETE', 2),
(1109, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup', 'PERMISSIONS', 4),
(1110, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup', 'UPDATE', 8),
(1111, 'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup', 'VIEW', 1),
(1112, '179', 'ACCESS_IN_CONTROL_PANEL', 2),
(1113, '179', 'CONFIGURATION', 4),
(1114, '179', 'VIEW', 1),
(1115, '179', 'PERMISSIONS', 8),
(1116, '179', 'PREFERENCES', 16),
(1117, '70', 'VIEW', 1),
(1118, '70', 'ADD_TO_PAGE', 2),
(1119, '70', 'CONFIGURATION', 4),
(1120, '70', 'PERMISSIONS', 8),
(1121, '70', 'PREFERENCES', 16),
(1122, '70', 'ACCESS_IN_CONTROL_PANEL', 32),
(1123, '71', 'ADD_TO_PAGE', 2),
(1124, '71', 'CONFIGURATION', 4),
(1125, '71', 'VIEW', 1),
(1126, '71', 'PERMISSIONS', 8),
(1127, '71', 'PREFERENCES', 16),
(1128, '71', 'ACCESS_IN_CONTROL_PANEL', 32),
(1129, '73', 'ADD_TO_PAGE', 2),
(1130, '73', 'CONFIGURATION', 4),
(1131, '73', 'VIEW', 1),
(1132, '73', 'PERMISSIONS', 8),
(1133, '73', 'PREFERENCES', 16),
(1134, '73', 'ACCESS_IN_CONTROL_PANEL', 32),
(1135, '77', 'VIEW', 1),
(1136, '77', 'ADD_TO_PAGE', 2),
(1137, '77', 'CONFIGURATION', 4),
(1138, '77', 'PERMISSIONS', 8),
(1139, '77', 'PREFERENCES', 16),
(1140, '77', 'ACCESS_IN_CONTROL_PANEL', 32),
(1141, '180', 'VIEW', 1),
(1142, '180', 'ADD_TO_PAGE', 2),
(1143, '180', 'CONFIGURATION', 4),
(1144, '180', 'PERMISSIONS', 8),
(1145, '180', 'PREFERENCES', 16),
(1146, '180', 'ACCESS_IN_CONTROL_PANEL', 32),
(1147, '181', 'VIEW', 1),
(1148, '181', 'ADD_TO_PAGE', 2),
(1149, '181', 'CONFIGURATION', 4),
(1150, '181', 'PERMISSIONS', 8),
(1151, '181', 'PREFERENCES', 16),
(1152, '181', 'ACCESS_IN_CONTROL_PANEL', 32),
(1153, '182', 'VIEW', 1),
(1154, '182', 'ADD_TO_PAGE', 2),
(1155, '182', 'CONFIGURATION', 4),
(1156, '182', 'PERMISSIONS', 8),
(1157, '182', 'PREFERENCES', 16),
(1158, '182', 'ACCESS_IN_CONTROL_PANEL', 32),
(1159, '183', 'VIEW', 1),
(1160, '183', 'ADD_TO_PAGE', 2),
(1161, '183', 'CONFIGURATION', 4),
(1162, '183', 'PERMISSIONS', 8),
(1163, '183', 'PREFERENCES', 16),
(1164, '183', 'ACCESS_IN_CONTROL_PANEL', 32),
(1165, '184', 'ADD_TO_PAGE', 2),
(1166, '184', 'CONFIGURATION', 4),
(1167, '184', 'VIEW', 1),
(1168, '184', 'PERMISSIONS', 8),
(1169, '184', 'PREFERENCES', 16),
(1170, '184', 'ACCESS_IN_CONTROL_PANEL', 32),
(1171, '185', 'VIEW', 1),
(1172, '185', 'ADD_TO_PAGE', 2),
(1173, '185', 'CONFIGURATION', 4),
(1174, '185', 'PERMISSIONS', 8),
(1175, '185', 'PREFERENCES', 16),
(1176, '185', 'ACCESS_IN_CONTROL_PANEL', 32),
(1177, '186', 'ADD_TO_PAGE', 2),
(1178, '186', 'CONFIGURATION', 4),
(1179, '186', 'VIEW', 1),
(1180, '186', 'PERMISSIONS', 8),
(1181, '186', 'PREFERENCES', 16),
(1182, '186', 'ACCESS_IN_CONTROL_PANEL', 32),
(1183, '187', 'ADD_TO_PAGE', 2),
(1184, '187', 'CONFIGURATION', 4),
(1185, '187', 'VIEW', 1),
(1186, '187', 'PERMISSIONS', 8),
(1187, '187', 'PREFERENCES', 16),
(1188, '187', 'ACCESS_IN_CONTROL_PANEL', 32),
(1189, '100', 'VIEW', 1),
(1190, '100', 'ADD_TO_PAGE', 2),
(1191, '100', 'CONFIGURATION', 4),
(1192, '100', 'PERMISSIONS', 8),
(1193, '100', 'PREFERENCES', 16),
(1194, '100', 'ACCESS_IN_CONTROL_PANEL', 32),
(1195, '188', 'ADD_TO_PAGE', 2),
(1196, '188', 'CONFIGURATION', 4),
(1197, '188', 'VIEW', 1),
(1198, '188', 'PERMISSIONS', 8),
(1199, '188', 'PREFERENCES', 16),
(1200, '188', 'ACCESS_IN_CONTROL_PANEL', 32),
(1201, '101', 'ADD_PORTLET_DISPLAY_TEMPLATE', 2),
(1202, '101', 'ADD_TO_PAGE', 4),
(1203, '101', 'CONFIGURATION', 8),
(1204, '101', 'SUBSCRIBE', 16),
(1205, '101', 'VIEW', 1),
(1206, '101', 'PERMISSIONS', 32),
(1207, '101', 'PREFERENCES', 64),
(1208, '101', 'ACCESS_IN_CONTROL_PANEL', 128),
(1209, '102', 'VIEW', 1),
(1210, '102', 'ADD_TO_PAGE', 2),
(1211, '102', 'CONFIGURATION', 4),
(1212, '102', 'PERMISSIONS', 8),
(1213, '102', 'PREFERENCES', 16),
(1214, '102', 'ACCESS_IN_CONTROL_PANEL', 32),
(1215, '103', 'VIEW', 1),
(1216, '103', 'ADD_TO_PAGE', 2),
(1217, '103', 'CONFIGURATION', 4),
(1218, '103', 'PERMISSIONS', 8),
(1219, '103', 'PREFERENCES', 16),
(1220, '103', 'ACCESS_IN_CONTROL_PANEL', 32),
(1221, '107', 'VIEW', 1),
(1222, '107', 'ADD_TO_PAGE', 2),
(1223, '107', 'CONFIGURATION', 4),
(1224, '107', 'PERMISSIONS', 8),
(1225, '107', 'PREFERENCES', 16),
(1226, '107', 'ACCESS_IN_CONTROL_PANEL', 32),
(1227, '108', 'VIEW', 1),
(1228, '108', 'ADD_TO_PAGE', 2),
(1229, '108', 'CONFIGURATION', 4),
(1230, '108', 'PERMISSIONS', 8),
(1231, '108', 'PREFERENCES', 16),
(1232, '108', 'ACCESS_IN_CONTROL_PANEL', 32),
(1233, '82', 'VIEW', 1),
(1234, '82', 'ADD_TO_PAGE', 2),
(1235, '82', 'CONFIGURATION', 4),
(1236, '82', 'PERMISSIONS', 8),
(1237, '82', 'PREFERENCES', 16),
(1238, '82', 'ACCESS_IN_CONTROL_PANEL', 32),
(1239, '83', 'ADD_ENTRY', 2),
(1240, '83', 'ADD_TO_PAGE', 4),
(1241, '83', 'CONFIGURATION', 8),
(1242, '83', 'VIEW', 1),
(1243, '83', 'PERMISSIONS', 16),
(1244, '83', 'PREFERENCES', 32),
(1245, '83', 'ACCESS_IN_CONTROL_PANEL', 64),
(1246, 'com.liferay.portlet.announcements.model.AnnouncementsEntry', 'DELETE', 2),
(1247, 'com.liferay.portlet.announcements.model.AnnouncementsEntry', 'UPDATE', 4),
(1248, 'com.liferay.portlet.announcements.model.AnnouncementsEntry', 'VIEW', 1),
(1249, 'com.liferay.portlet.announcements.model.AnnouncementsEntry', 'PERMISSIONS', 8),
(1250, '84', 'ADD_ENTRY', 2),
(1251, '84', 'ADD_TO_PAGE', 4),
(1252, '84', 'CONFIGURATION', 8),
(1253, '84', 'VIEW', 1),
(1254, '84', 'PERMISSIONS', 16),
(1255, '84', 'PREFERENCES', 32),
(1256, '84', 'ACCESS_IN_CONTROL_PANEL', 64),
(1257, '85', 'ADD_TO_PAGE', 2),
(1258, '85', 'CONFIGURATION', 4),
(1259, '85', 'VIEW', 1),
(1260, '85', 'PERMISSIONS', 8),
(1261, '85', 'PREFERENCES', 16),
(1262, '85', 'ADD_PORTLET_DISPLAY_TEMPLATE', 32),
(1263, '85', 'ACCESS_IN_CONTROL_PANEL', 64),
(1264, '86', 'VIEW', 1),
(1265, '86', 'ADD_TO_PAGE', 2),
(1266, '86', 'CONFIGURATION', 4),
(1267, '86', 'PERMISSIONS', 8),
(1268, '86', 'PREFERENCES', 16),
(1269, '86', 'ACCESS_IN_CONTROL_PANEL', 32);





INSERT INTO "public"."resourcepermission" ("resourcepermissionid", "companyid", "name", "scope", "primkey", "roleid", "ownerid", "actionids") VALUES
(1, 20154, '2', 1, '20154', 20165, 0, 2);
INSERT INTO "public"."resourcepermission" ("resourcepermissionid", "companyid", "name", "scope", "primkey", "roleid", "ownerid", "actionids") VALUES
(2, 20154, '140', 1, '20154', 20165, 0, 2);
INSERT INTO "public"."resourcepermission" ("resourcepermissionid", "companyid", "name", "scope", "primkey", "roleid", "ownerid", "actionids") VALUES
(5, 20154, 'com.liferay.portal.model.Role', 4, '20161', 20165, 0, 1);
INSERT INTO "public"."resourcepermission" ("resourcepermissionid", "companyid", "name", "scope", "primkey", "roleid", "ownerid", "actionids") VALUES
(6, 20154, 'com.liferay.portal.model.Role', 4, '20162', 20165, 0, 1),
(7, 20154, 'com.liferay.portal.model.Role', 4, '20163', 20165, 0, 1),
(8, 20154, 'com.liferay.portal.model.Role', 4, '20164', 20165, 0, 1),
(9, 20154, 'com.liferay.portal.model.Role', 4, '20165', 20165, 0, 1),
(10, 20154, 'com.liferay.portal.model.Role', 4, '20166', 20165, 0, 1),
(11, 20154, 'com.liferay.portal.model.Role', 4, '20167', 20165, 0, 1),
(12, 20154, 'com.liferay.portal.model.Role', 4, '20168', 20165, 0, 1),
(13, 20154, 'com.liferay.portal.model.Role', 4, '20169', 20165, 0, 1),
(14, 20154, 'com.liferay.portal.model.Role', 4, '20170', 20165, 0, 1),
(15, 20154, 'com.liferay.portal.model.Role', 4, '20171', 20165, 0, 1),
(16, 20154, 'com.liferay.portal.model.Layout', 4, '20175', 20163, 20158, 1023),
(17, 20154, 'com.liferay.portal.model.Layout', 4, '20175', 20170, 0, 19),
(18, 20154, 'com.liferay.portal.model.Layout', 4, '20175', 20162, 0, 1),
(19, 20154, 'com.liferay.portal.model.Layout', 4, '20184', 20163, 20158, 1023),
(20, 20154, 'com.liferay.portal.model.Layout', 4, '20184', 20170, 0, 19),
(21, 20154, 'com.liferay.portal.model.Layout', 4, '20184', 20162, 0, 1),
(22, 20154, 'com.liferay.portal.model.Layout', 2, '20191', 20165, 0, 1),
(23, 20154, 'com.liferay.portlet.blogs', 2, '20191', 20165, 0, 14),
(24, 20154, '98', 2, '20191', 20164, 0, 2),
(25, 20154, '99', 2, '20191', 20164, 0, 2),
(26, 20154, '15', 2, '20191', 20164, 0, 2),
(27, 20154, '20', 2, '20191', 20164, 0, 2),
(28, 20154, '25', 2, '20191', 20164, 0, 2),
(29, 20154, '28', 2, '20191', 20164, 0, 2),
(30, 20154, '147', 2, '20191', 20164, 0, 2),
(31, 20154, '152', 2, '20191', 20164, 0, 2),
(32, 20154, '154', 2, '20191', 20164, 0, 2),
(33, 20154, '161', 2, '20191', 20164, 0, 2),
(34, 20154, '162', 2, '20191', 20164, 0, 2),
(35, 20154, '167', 2, '20191', 20164, 0, 2),
(36, 20154, '173', 2, '20191', 20164, 0, 32),
(37, 20154, '178', 2, '20191', 20164, 0, 32),
(38, 20154, '179', 2, '20191', 20164, 0, 2),
(39, 20154, '182', 2, '20191', 20164, 0, 32),
(40, 20154, '183', 2, '20191', 20164, 0, 32),
(41, 20154, 'com.liferay.portal.model.Group', 2, '20191', 20164, 0, 8396800),
(42, 20154, 'com.liferay.portlet.asset', 2, '20191', 20164, 0, 30),
(43, 20154, 'com.liferay.portlet.blogs', 2, '20191', 20164, 0, 14),
(44, 20154, 'com.liferay.portlet.bookmarks', 2, '20191', 20164, 0, 31),
(45, 20154, 'com.liferay.portlet.documentlibrary', 2, '20191', 20164, 0, 1023),
(46, 20154, 'com.liferay.portlet.journal', 2, '20191', 20164, 0, 255),
(47, 20154, 'com.liferay.portlet.messageboards', 2, '20191', 20164, 0, 2047),
(48, 20154, 'com.liferay.portlet.polls', 2, '20191', 20164, 0, 6),
(49, 20154, 'com.liferay.portlet.wiki', 2, '20191', 20164, 0, 6),
(50, 20154, 'com.liferay.portal.model.User', 4, '20198', 20163, 20198, 31),
(51, 20154, '193', 1, '20154', 20162, 0, 2),
(52, 20154, '193', 1, '20154', 20164, 0, 2),
(53, 20154, '193', 1, '20154', 20165, 0, 2),
(54, 20154, '194', 1, '20154', 20162, 0, 2),
(55, 20154, '194', 1, '20154', 20164, 0, 2),
(56, 20154, '194', 1, '20154', 20165, 0, 2),
(57, 20154, '110', 1, '20154', 20164, 0, 2),
(58, 20154, '110', 1, '20154', 20165, 0, 2),
(59, 20154, '114', 1, '20154', 20162, 0, 2),
(60, 20154, '114', 1, '20154', 20164, 0, 2),
(61, 20154, '114', 1, '20154', 20165, 0, 2),
(62, 20154, '115', 1, '20154', 20162, 0, 2),
(63, 20154, '115', 1, '20154', 20164, 0, 2),
(64, 20154, '115', 1, '20154', 20165, 0, 2),
(65, 20154, '116', 1, '20154', 20162, 0, 2),
(66, 20154, '116', 1, '20154', 20164, 0, 2),
(67, 20154, '116', 1, '20154', 20165, 0, 2),
(68, 20154, '118', 1, '20154', 20162, 0, 2),
(69, 20154, '118', 1, '20154', 20164, 0, 2),
(70, 20154, '118', 1, '20154', 20165, 0, 2),
(71, 20154, '97', 1, '20154', 20164, 0, 2),
(72, 20154, '97', 1, '20154', 20165, 0, 2),
(73, 20154, '98', 1, '20154', 20164, 0, 4),
(74, 20154, '98', 1, '20154', 20165, 0, 4),
(75, 20154, '11', 1, '20154', 20164, 0, 2),
(76, 20154, '11', 1, '20154', 20165, 0, 2),
(77, 20154, '15', 1, '20154', 20164, 0, 4),
(78, 20154, '15', 1, '20154', 20165, 0, 4),
(79, 20154, '16', 1, '20154', 20164, 0, 8),
(80, 20154, '16', 1, '20154', 20165, 0, 8),
(81, 20154, '19', 1, '20154', 20164, 0, 2),
(82, 20154, '19', 1, '20154', 20165, 0, 2),
(83, 20154, '121', 1, '20154', 20162, 0, 2),
(84, 20154, '121', 1, '20154', 20164, 0, 2),
(85, 20154, '121', 1, '20154', 20165, 0, 2),
(86, 20154, '122', 1, '20154', 20162, 0, 8),
(87, 20154, '122', 1, '20154', 20164, 0, 8),
(88, 20154, '122', 1, '20154', 20165, 0, 8),
(89, 20154, '3', 1, '20154', 20162, 0, 2),
(90, 20154, '3', 1, '20154', 20164, 0, 2),
(91, 20154, '3', 1, '20154', 20165, 0, 2),
(92, 20154, '127', 1, '20154', 20161, 0, 2),
(93, 20154, '9', 1, '20154', 20161, 0, 2),
(94, 20154, '20', 1, '20154', 20162, 0, 8),
(95, 20154, '20', 1, '20154', 20164, 0, 8),
(96, 20154, '20', 1, '20154', 20165, 0, 8),
(97, 20154, '23', 1, '20154', 20164, 0, 2),
(98, 20154, '23', 1, '20154', 20165, 0, 2),
(99, 20154, '26', 1, '20154', 20164, 0, 2),
(100, 20154, '26', 1, '20154', 20165, 0, 2),
(101, 20154, '27', 1, '20154', 20164, 0, 2),
(102, 20154, '27', 1, '20154', 20165, 0, 2),
(103, 20154, '28', 1, '20154', 20164, 0, 4),
(104, 20154, '28', 1, '20154', 20165, 0, 4),
(105, 20154, '29', 1, '20154', 20164, 0, 2),
(106, 20154, '29', 1, '20154', 20165, 0, 2),
(107, 20154, '30', 1, '20154', 20164, 0, 2),
(108, 20154, '30', 1, '20154', 20165, 0, 2),
(109, 20154, '31', 1, '20154', 20162, 0, 2),
(110, 20154, '31', 1, '20154', 20164, 0, 2),
(111, 20154, '31', 1, '20154', 20165, 0, 2),
(112, 20154, '33', 1, '20154', 20162, 0, 4),
(113, 20154, '33', 1, '20154', 20164, 0, 4),
(114, 20154, '33', 1, '20154', 20165, 0, 4),
(115, 20154, '34', 1, '20154', 20164, 0, 2),
(116, 20154, '34', 1, '20154', 20165, 0, 2),
(117, 20154, '36', 1, '20154', 20164, 0, 4),
(118, 20154, '36', 1, '20154', 20165, 0, 4),
(119, 20154, '39', 1, '20154', 20164, 0, 2);
INSERT INTO "public"."resourcepermission" ("resourcepermissionid", "companyid", "name", "scope", "primkey", "roleid", "ownerid", "actionids") VALUES
(120, 20154, '39', 1, '20154', 20165, 0, 2),
(121, 20154, '141', 1, '20154', 20162, 0, 8),
(122, 20154, '141', 1, '20154', 20164, 0, 8),
(123, 20154, '141', 1, '20154', 20165, 0, 8),
(124, 20154, '143', 1, '20154', 20162, 0, 2),
(125, 20154, '143', 1, '20154', 20164, 0, 2),
(126, 20154, '143', 1, '20154', 20165, 0, 2),
(127, 20154, '148', 1, '20154', 20162, 0, 2),
(128, 20154, '148', 1, '20154', 20164, 0, 2),
(129, 20154, '148', 1, '20154', 20165, 0, 2),
(130, 20154, '47', 1, '20154', 20162, 0, 2),
(131, 20154, '47', 1, '20154', 20164, 0, 2),
(132, 20154, '47', 1, '20154', 20165, 0, 2),
(133, 20154, '48', 1, '20154', 20164, 0, 2),
(134, 20154, '48', 1, '20154', 20165, 0, 2),
(135, 20154, '153', 1, '20154', 20164, 0, 4),
(4, 20154, '153', 1, '20154', 20165, 0, 6),
(136, 20154, '158', 1, '20154', 20164, 0, 4),
(3, 20154, '158', 1, '20154', 20165, 0, 6),
(137, 20154, '50', 1, '20154', 20162, 0, 2),
(138, 20154, '50', 1, '20154', 20164, 0, 2),
(139, 20154, '50', 1, '20154', 20165, 0, 2),
(140, 20154, '54', 1, '20154', 20164, 0, 2),
(141, 20154, '54', 1, '20154', 20165, 0, 2),
(142, 20154, '56', 1, '20154', 20162, 0, 2),
(143, 20154, '56', 1, '20154', 20164, 0, 2),
(144, 20154, '56', 1, '20154', 20165, 0, 2),
(145, 20154, '58', 1, '20154', 20162, 0, 2),
(146, 20154, '58', 1, '20154', 20164, 0, 2),
(147, 20154, '58', 1, '20154', 20165, 0, 2),
(148, 20154, '59', 1, '20154', 20164, 0, 2),
(149, 20154, '59', 1, '20154', 20165, 0, 2),
(150, 20154, '164', 1, '20154', 20162, 0, 2),
(151, 20154, '164', 1, '20154', 20164, 0, 2),
(152, 20154, '164', 1, '20154', 20165, 0, 2),
(153, 20154, '166', 1, '20154', 20164, 0, 4),
(154, 20154, '166', 1, '20154', 20165, 0, 4),
(155, 20154, '167', 1, '20154', 20164, 0, 4),
(156, 20154, '167', 1, '20154', 20165, 0, 4),
(157, 20154, '169', 1, '20154', 20164, 0, 2),
(158, 20154, '169', 1, '20154', 20165, 0, 2),
(159, 20154, '61', 1, '20154', 20164, 0, 2),
(160, 20154, '61', 1, '20154', 20165, 0, 2),
(161, 20154, '62', 1, '20154', 20164, 0, 2),
(162, 20154, '62', 1, '20154', 20165, 0, 2),
(163, 20154, '64', 1, '20154', 20162, 0, 2),
(164, 20154, '64', 1, '20154', 20164, 0, 2),
(165, 20154, '64', 1, '20154', 20165, 0, 2),
(166, 20154, '66', 1, '20154', 20164, 0, 2),
(167, 20154, '66', 1, '20154', 20165, 0, 2),
(168, 20154, '67', 1, '20154', 20164, 0, 2),
(169, 20154, '67', 1, '20154', 20165, 0, 2),
(170, 20154, '173', 1, '20154', 20162, 0, 2),
(171, 20154, '173', 1, '20154', 20164, 0, 2),
(172, 20154, '173', 1, '20154', 20165, 0, 2),
(173, 20154, '175', 1, '20154', 20162, 0, 2),
(174, 20154, '175', 1, '20154', 20164, 0, 2),
(175, 20154, '175', 1, '20154', 20165, 0, 2),
(176, 20154, '176', 1, '20154', 20161, 0, 2),
(177, 20154, '178', 1, '20154', 20164, 0, 4),
(178, 20154, '178', 1, '20154', 20165, 0, 4),
(179, 20154, '70', 1, '20154', 20164, 0, 2),
(180, 20154, '70', 1, '20154', 20165, 0, 2),
(181, 20154, '71', 1, '20154', 20162, 0, 2),
(182, 20154, '71', 1, '20154', 20164, 0, 2),
(183, 20154, '71', 1, '20154', 20165, 0, 2),
(184, 20154, '73', 1, '20154', 20162, 0, 2),
(185, 20154, '73', 1, '20154', 20164, 0, 2),
(186, 20154, '73', 1, '20154', 20165, 0, 2),
(187, 20154, '77', 1, '20154', 20162, 0, 2),
(188, 20154, '77', 1, '20154', 20164, 0, 2),
(189, 20154, '77', 1, '20154', 20165, 0, 2),
(190, 20154, '180', 1, '20154', 20162, 0, 2),
(191, 20154, '180', 1, '20154', 20164, 0, 2),
(192, 20154, '180', 1, '20154', 20165, 0, 2),
(193, 20154, '181', 1, '20154', 20162, 0, 2),
(194, 20154, '181', 1, '20154', 20164, 0, 2),
(195, 20154, '181', 1, '20154', 20165, 0, 2),
(196, 20154, '182', 1, '20154', 20164, 0, 2),
(197, 20154, '182', 1, '20154', 20165, 0, 2),
(198, 20154, '183', 1, '20154', 20161, 0, 2),
(199, 20154, '184', 1, '20154', 20162, 0, 2),
(200, 20154, '184', 1, '20154', 20164, 0, 2),
(201, 20154, '184', 1, '20154', 20165, 0, 2),
(202, 20154, '186', 1, '20154', 20164, 0, 2),
(203, 20154, '186', 1, '20154', 20165, 0, 2),
(204, 20154, '187', 1, '20154', 20164, 0, 2),
(205, 20154, '187', 1, '20154', 20165, 0, 2),
(206, 20154, '100', 1, '20154', 20164, 0, 2),
(207, 20154, '100', 1, '20154', 20165, 0, 2),
(208, 20154, '188', 1, '20154', 20164, 0, 2),
(209, 20154, '188', 1, '20154', 20165, 0, 2),
(210, 20154, '101', 1, '20154', 20162, 0, 4),
(211, 20154, '101', 1, '20154', 20164, 0, 4),
(212, 20154, '101', 1, '20154', 20165, 0, 4),
(213, 20154, '102', 1, '20154', 20161, 0, 2),
(214, 20154, '107', 1, '20154', 20164, 0, 2),
(215, 20154, '107', 1, '20154', 20165, 0, 2),
(216, 20154, '108', 1, '20154', 20164, 0, 2),
(217, 20154, '108', 1, '20154', 20165, 0, 2),
(218, 20154, '82', 1, '20154', 20162, 0, 2),
(219, 20154, '82', 1, '20154', 20164, 0, 2),
(220, 20154, '82', 1, '20154', 20165, 0, 2),
(221, 20154, '83', 1, '20154', 20164, 0, 4),
(222, 20154, '83', 1, '20154', 20165, 0, 4),
(223, 20154, '84', 1, '20154', 20164, 0, 4),
(224, 20154, '84', 1, '20154', 20165, 0, 4),
(225, 20154, '85', 1, '20154', 20162, 0, 2),
(226, 20154, '85', 1, '20154', 20164, 0, 2),
(227, 20154, '85', 1, '20154', 20165, 0, 2),
(228, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20303', 20163, 20158, 15),
(229, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20303', 20165, 0, 1),
(230, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20303', 20162, 0, 1),
(231, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20304', 20163, 20158, 15),
(232, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20304', 20165, 0, 1),
(233, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20304', 20162, 0, 1),
(234, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20305', 20163, 20158, 15),
(235, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20305', 20165, 0, 1),
(236, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20305', 20162, 0, 1),
(237, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20307', 20163, 20158, 15),
(238, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20307', 20165, 0, 1),
(239, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20307', 20162, 0, 1),
(240, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20306', 20163, 20158, 15),
(241, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20306', 20165, 0, 1),
(242, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20306', 20162, 0, 1),
(243, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20309', 20163, 20158, 15),
(244, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20309', 20165, 0, 1),
(245, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20309', 20162, 0, 1),
(246, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20308', 20163, 20158, 15),
(247, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20308', 20165, 0, 1),
(248, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20308', 20162, 0, 1),
(249, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20311', 20163, 20158, 15),
(250, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20311', 20165, 0, 1),
(251, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20311', 20162, 0, 1),
(252, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20310', 20163, 20158, 15),
(253, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20310', 20165, 0, 1),
(254, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20310', 20162, 0, 1),
(255, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20313', 20163, 20158, 15),
(256, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20313', 20165, 0, 1),
(257, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20313', 20162, 0, 1),
(586, 20154, '145', 4, '21219_LAYOUT_145', 20170, 0, 1),
(258, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20312', 20163, 20158, 15),
(259, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20312', 20165, 0, 1),
(260, 20154, 'com.liferay.portlet.documentlibrary.model.DLFileEntryType', 4, '20312', 20162, 0, 1),
(281, 20154, '141', 4, '20332_LAYOUT_141_INSTANCE_BbACiNx07OfW', 20163, 0, 127),
(282, 20154, '141', 4, '20332_LAYOUT_141_INSTANCE_BbACiNx07OfW', 20170, 0, 1),
(283, 20154, '141', 4, '20332_LAYOUT_141_INSTANCE_BbACiNx07OfW', 20162, 0, 1),
(284, 20154, '122', 4, '20332_LAYOUT_122_INSTANCE_qicEDkGIn0qb', 20163, 0, 127),
(285, 20154, '122', 4, '20332_LAYOUT_122_INSTANCE_qicEDkGIn0qb', 20170, 0, 1),
(286, 20154, '122', 4, '20332_LAYOUT_122_INSTANCE_qicEDkGIn0qb', 20162, 0, 1),
(335, 20154, '36', 4, '20369_LAYOUT_36', 20163, 0, 127),
(336, 20154, '36', 4, '20369_LAYOUT_36', 20170, 0, 1),
(337, 20154, '36', 4, '20369_LAYOUT_36', 20162, 0, 1),
(338, 20154, 'com.liferay.portlet.wiki', 4, '20350', 20163, 0, 6),
(339, 20154, '122', 4, '20369_LAYOUT_122_INSTANCE_Ao3iUYFOTNy9', 20163, 0, 127),
(340, 20154, '122', 4, '20369_LAYOUT_122_INSTANCE_Ao3iUYFOTNy9', 20170, 0, 1),
(341, 20154, '122', 4, '20369_LAYOUT_122_INSTANCE_Ao3iUYFOTNy9', 20162, 0, 1),
(342, 20154, '148', 4, '20369_LAYOUT_148_INSTANCE_OVwhU66EyPOd', 20163, 0, 63),
(343, 20154, '148', 4, '20369_LAYOUT_148_INSTANCE_OVwhU66EyPOd', 20170, 0, 1),
(344, 20154, '148', 4, '20369_LAYOUT_148_INSTANCE_OVwhU66EyPOd', 20162, 0, 1),
(345, 20154, 'com.liferay.portal.model.LayoutSetPrototype', 4, '20375', 20163, 20158, 15),
(349, 20154, 'com.liferay.portal.model.Layout', 4, '20387', 20163, 20158, 1023),
(350, 20154, 'com.liferay.portal.model.Layout', 4, '20387', 20170, 0, 19),
(351, 20154, 'com.liferay.portal.model.Layout', 4, '20387', 20162, 0, 1),
(355, 20154, '3', 4, '20387_LAYOUT_3', 20163, 0, 63),
(356, 20154, '3', 4, '20387_LAYOUT_3', 20170, 0, 1),
(357, 20154, '3', 4, '20387_LAYOUT_3', 20162, 0, 1),
(261, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20315', 20163, 20158, 15),
(262, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20315', 20165, 0, 1),
(263, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20315', 20162, 0, 1),
(264, 20154, 'com.liferay.portal.model.LayoutPrototype', 4, '20316', 20163, 20158, 15),
(265, 20154, 'com.liferay.portal.model.Layout', 4, '20320', 20163, 20158, 1023),
(266, 20154, 'com.liferay.portal.model.Layout', 4, '20320', 20170, 0, 19),
(267, 20154, 'com.liferay.portlet.asset.model.AssetVocabulary', 4, '20324', 20163, 20158, 15),
(268, 20154, '33', 4, '20320_LAYOUT_33', 20163, 0, 127),
(269, 20154, '33', 4, '20320_LAYOUT_33', 20170, 0, 1),
(270, 20154, '33', 4, '20320_LAYOUT_33', 20162, 0, 1),
(271, 20154, 'com.liferay.portlet.blogs', 4, '20317', 20163, 0, 14),
(272, 20154, '148', 4, '20320_LAYOUT_148_INSTANCE_DLYlavU3okz7', 20163, 0, 63),
(273, 20154, '148', 4, '20320_LAYOUT_148_INSTANCE_DLYlavU3okz7', 20170, 0, 1),
(274, 20154, '148', 4, '20320_LAYOUT_148_INSTANCE_DLYlavU3okz7', 20162, 0, 1),
(275, 20154, '114', 4, '20320_LAYOUT_114', 20163, 0, 63),
(276, 20154, '114', 4, '20320_LAYOUT_114', 20170, 0, 1),
(277, 20154, '114', 4, '20320_LAYOUT_114', 20162, 0, 1),
(278, 20154, 'com.liferay.portal.model.LayoutPrototype', 4, '20328', 20163, 20158, 15),
(279, 20154, 'com.liferay.portal.model.Layout', 4, '20332', 20163, 20158, 1023),
(280, 20154, 'com.liferay.portal.model.Layout', 4, '20332', 20170, 0, 19),
(287, 20154, '3', 4, '20332_LAYOUT_3', 20163, 0, 63),
(288, 20154, '3', 4, '20332_LAYOUT_3', 20170, 0, 1),
(289, 20154, '3', 4, '20332_LAYOUT_3', 20162, 0, 1),
(290, 20154, '101', 4, '20332_LAYOUT_101_INSTANCE_CBQk3sz04uzE', 20163, 0, 255),
(291, 20154, '101', 4, '20332_LAYOUT_101_INSTANCE_CBQk3sz04uzE', 20170, 0, 17),
(292, 20154, '101', 4, '20332_LAYOUT_101_INSTANCE_CBQk3sz04uzE', 20162, 0, 1),
(293, 20154, 'com.liferay.portal.model.LayoutPrototype', 4, '20338', 20163, 20158, 15),
(294, 20154, 'com.liferay.portal.model.Layout', 4, '20342', 20163, 20158, 1023),
(295, 20154, 'com.liferay.portal.model.Layout', 4, '20342', 20170, 0, 19),
(296, 20154, '36', 4, '20342_LAYOUT_36', 20163, 0, 127),
(297, 20154, '36', 4, '20342_LAYOUT_36', 20170, 0, 1),
(298, 20154, '36', 4, '20342_LAYOUT_36', 20162, 0, 1),
(299, 20154, 'com.liferay.portlet.wiki', 4, '20339', 20163, 0, 6),
(300, 20154, '122', 4, '20342_LAYOUT_122_INSTANCE_LIIqJ9xanQ9a', 20163, 0, 127),
(301, 20154, '122', 4, '20342_LAYOUT_122_INSTANCE_LIIqJ9xanQ9a', 20170, 0, 1),
(302, 20154, '122', 4, '20342_LAYOUT_122_INSTANCE_LIIqJ9xanQ9a', 20162, 0, 1),
(303, 20154, '141', 4, '20342_LAYOUT_141_INSTANCE_KCTufRa3EdlY', 20163, 0, 127),
(304, 20154, '141', 4, '20342_LAYOUT_141_INSTANCE_KCTufRa3EdlY', 20170, 0, 1),
(305, 20154, '141', 4, '20342_LAYOUT_141_INSTANCE_KCTufRa3EdlY', 20162, 0, 1),
(306, 20154, 'com.liferay.portal.model.LayoutSetPrototype', 4, '20349', 20163, 20158, 15),
(310, 20154, 'com.liferay.portal.model.Layout', 4, '20361', 20163, 20158, 1023),
(311, 20154, 'com.liferay.portal.model.Layout', 4, '20361', 20170, 0, 19),
(312, 20154, 'com.liferay.portal.model.Layout', 4, '20361', 20162, 0, 1),
(313, 20154, '19', 4, '20361_LAYOUT_19', 20163, 0, 63),
(314, 20154, '19', 4, '20361_LAYOUT_19', 20170, 0, 1),
(315, 20154, '19', 4, '20361_LAYOUT_19', 20162, 0, 1),
(316, 20154, 'com.liferay.portlet.messageboards', 4, '20350', 20163, 0, 2047),
(317, 20154, 'com.liferay.portlet.messageboards', 4, '20350', 20170, 0, 781),
(318, 20154, 'com.liferay.portlet.messageboards', 4, '20350', 20162, 0, 1),
(319, 20154, '3', 4, '20361_LAYOUT_3', 20163, 0, 63),
(320, 20154, '3', 4, '20361_LAYOUT_3', 20170, 0, 1),
(321, 20154, '3', 4, '20361_LAYOUT_3', 20162, 0, 1),
(322, 20154, '59', 4, '20361_LAYOUT_59_INSTANCE_14bKpTF504WC', 20163, 0, 63),
(323, 20154, '59', 4, '20361_LAYOUT_59_INSTANCE_14bKpTF504WC', 20170, 0, 1),
(324, 20154, '59', 4, '20361_LAYOUT_59_INSTANCE_14bKpTF504WC', 20162, 0, 1),
(325, 20154, 'com.liferay.portlet.polls', 4, '20350', 20163, 0, 6),
(326, 20154, '180', 4, '20361_LAYOUT_180', 20163, 0, 63),
(327, 20154, '180', 4, '20361_LAYOUT_180', 20170, 0, 1),
(328, 20154, '180', 4, '20361_LAYOUT_180', 20162, 0, 1),
(329, 20154, '101', 4, '20361_LAYOUT_101_INSTANCE_CZDTqFGHFA7o', 20163, 0, 255),
(330, 20154, '101', 4, '20361_LAYOUT_101_INSTANCE_CZDTqFGHFA7o', 20170, 0, 17),
(331, 20154, '101', 4, '20361_LAYOUT_101_INSTANCE_CZDTqFGHFA7o', 20162, 0, 1),
(332, 20154, 'com.liferay.portal.model.Layout', 4, '20369', 20163, 20158, 1023),
(333, 20154, 'com.liferay.portal.model.Layout', 4, '20369', 20170, 0, 19),
(334, 20154, 'com.liferay.portal.model.Layout', 4, '20369', 20162, 0, 1),
(352, 20154, '116', 4, '20387_LAYOUT_116', 20163, 0, 63),
(353, 20154, '116', 4, '20387_LAYOUT_116', 20170, 0, 1),
(354, 20154, '116', 4, '20387_LAYOUT_116', 20162, 0, 1),
(358, 20154, '82', 4, '20387_LAYOUT_82', 20163, 0, 63),
(359, 20154, '82', 4, '20387_LAYOUT_82', 20170, 0, 1),
(360, 20154, '82', 4, '20387_LAYOUT_82', 20162, 0, 1),
(361, 20154, '101', 4, '20387_LAYOUT_101_INSTANCE_3B45gnm0aIWH', 20163, 0, 255),
(362, 20154, '101', 4, '20387_LAYOUT_101_INSTANCE_3B45gnm0aIWH', 20170, 0, 17),
(363, 20154, '101', 4, '20387_LAYOUT_101_INSTANCE_3B45gnm0aIWH', 20162, 0, 1),
(364, 20154, 'com.liferay.portal.model.Layout', 4, '20396', 20163, 20158, 1023),
(365, 20154, 'com.liferay.portal.model.Layout', 4, '20396', 20170, 0, 19),
(366, 20154, 'com.liferay.portal.model.Layout', 4, '20396', 20162, 0, 1),
(367, 20154, '20', 4, '20396_LAYOUT_20', 20163, 0, 127),
(368, 20154, '20', 4, '20396_LAYOUT_20', 20170, 0, 1),
(369, 20154, '20', 4, '20396_LAYOUT_20', 20162, 0, 1),
(373, 20154, '101', 4, '20396_LAYOUT_101_INSTANCE_bYyBjb7FPi9j', 20163, 0, 255),
(374, 20154, '101', 4, '20396_LAYOUT_101_INSTANCE_bYyBjb7FPi9j', 20170, 0, 17),
(375, 20154, '101', 4, '20396_LAYOUT_101_INSTANCE_bYyBjb7FPi9j', 20162, 0, 1),
(379, 20154, '39', 4, '20404_LAYOUT_39_INSTANCE_8tltikUwrrkU', 20163, 0, 63),
(380, 20154, '39', 4, '20404_LAYOUT_39_INSTANCE_8tltikUwrrkU', 20170, 0, 1),
(381, 20154, '39', 4, '20404_LAYOUT_39_INSTANCE_8tltikUwrrkU', 20162, 0, 1),
(389, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20416', 20163, 20158, 15),
(390, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20417', 20163, 20158, 15),
(391, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20418', 20163, 20158, 15),
(392, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20420', 20163, 20158, 15),
(393, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20422', 20163, 20158, 15),
(394, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20425', 20163, 20158, 15),
(395, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20427', 20163, 20158, 15),
(396, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20429', 20163, 20158, 15),
(397, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate', 4, '20431', 20163, 20158, 15),
(370, 20154, 'com.liferay.portlet.documentlibrary', 4, '20376', 20163, 0, 1023),
(371, 20154, 'com.liferay.portlet.documentlibrary', 4, '20376', 20170, 0, 331),
(372, 20154, 'com.liferay.portlet.documentlibrary', 4, '20376', 20162, 0, 1),
(382, 20154, '39', 4, '20404_LAYOUT_39_INSTANCE_ITbYLVHfS66S', 20163, 0, 63),
(383, 20154, '39', 4, '20404_LAYOUT_39_INSTANCE_ITbYLVHfS66S', 20170, 0, 1),
(384, 20154, '39', 4, '20404_LAYOUT_39_INSTANCE_ITbYLVHfS66S', 20162, 0, 1),
(385, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20412', 20163, 20158, 15),
(386, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20413', 20163, 20158, 15),
(387, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20414', 20163, 20158, 15),
(398, 20154, 'com.liferay.portlet.expando.model.ExpandoColumn', 4, '20442', 20163, 0, 15),
(376, 20154, 'com.liferay.portal.model.Layout', 4, '20404', 20163, 20158, 1023),
(377, 20154, 'com.liferay.portal.model.Layout', 4, '20404', 20170, 0, 19),
(378, 20154, 'com.liferay.portal.model.Layout', 4, '20404', 20162, 0, 1),
(388, 20154, 'com.liferay.portlet.dynamicdatamapping.model.DDMStructure', 4, '20415', 20163, 20158, 15),
(399, 20154, '1_WAR_calendarportlet', 1, '20154', 20161, 0, 4),
(400, 20154, '1_WAR_calendarportlet', 1, '20154', 20162, 0, 4),
(401, 20154, '1_WAR_calendarportlet', 1, '20154', 20164, 0, 4),
(402, 20154, '1_WAR_calendarportlet', 1, '20154', 20165, 0, 4),
(403, 20154, '1_WAR_notificationsportlet', 1, '20154', 20161, 0, 2),
(404, 20154, '1_WAR_notificationsportlet', 1, '20154', 20162, 0, 2),
(405, 20154, '1_WAR_notificationsportlet', 1, '20154', 20164, 0, 2),
(406, 20154, '1_WAR_notificationsportlet', 1, '20154', 20165, 0, 2),
(407, 20154, '2_WAR_opensocialportlet', 1, '20154', 20161, 0, 2),
(408, 20154, '2_WAR_opensocialportlet', 1, '20154', 20162, 0, 2),
(409, 20154, '2_WAR_opensocialportlet', 1, '20154', 20164, 0, 2),
(410, 20154, '2_WAR_opensocialportlet', 1, '20154', 20165, 0, 2),
(411, 20154, '3_WAR_opensocialportlet', 1, '20154', 20161, 0, 2),
(412, 20154, '3_WAR_opensocialportlet', 1, '20154', 20162, 0, 2),
(413, 20154, '3_WAR_opensocialportlet', 1, '20154', 20164, 0, 2),
(414, 20154, '3_WAR_opensocialportlet', 1, '20154', 20165, 0, 2),
(415, 20154, '1_WAR_webformportlet', 1, '20154', 20161, 0, 2),
(416, 20154, '1_WAR_webformportlet', 1, '20154', 20162, 0, 2),
(417, 20154, '1_WAR_webformportlet', 1, '20154', 20164, 0, 2),
(418, 20154, '1_WAR_webformportlet', 1, '20154', 20165, 0, 2),
(419, 20154, 'com.liferay.portal.model.Organization', 4, '20516', 20163, 20158, 2047),
(420, 20154, 'com.liferay.portal.model.Layout', 4, '20520', 20163, 20158, 1023),
(421, 20154, 'com.liferay.portal.model.Layout', 4, '20520', 20170, 0, 19),
(422, 20154, 'com.liferay.portal.model.Layout', 4, '20520', 20162, 0, 1),
(423, 20154, 'com.liferay.portal.model.Layout', 4, '20526', 20163, 20158, 1023),
(424, 20154, 'com.liferay.portal.model.Layout', 4, '20526', 20170, 0, 19),
(425, 20154, 'com.liferay.portal.model.Organization', 4, '20532', 20163, 20158, 2047),
(426, 20154, 'com.liferay.portal.model.User', 4, '20536', 20163, 20536, 31),
(427, 20154, 'com.liferay.portal.model.User', 4, '20542', 20163, 20542, 31),
(428, 20154, 'com.liferay.portal.model.User', 4, '20548', 20163, 20548, 31),
(429, 20154, 'com.liferay.portal.model.User', 4, '20554', 20163, 20554, 31),
(430, 20154, 'com.liferay.portal.model.User', 4, '20560', 20163, 20560, 31),
(431, 20154, 'com.liferay.portal.model.User', 4, '20566', 20163, 20566, 31),
(432, 20154, 'com.liferay.portal.model.User', 4, '20572', 20163, 20572, 31),
(433, 20154, 'com.liferay.portal.model.User', 4, '20578', 20163, 20578, 31),
(434, 20154, 'com.liferay.portal.model.User', 4, '20584', 20163, 20584, 31),
(435, 20154, 'com.liferay.portal.model.User', 4, '20590', 20163, 20590, 31),
(436, 20154, 'com.liferay.portal.model.Organization', 4, '20596', 20163, 20158, 2047),
(437, 20154, 'com.liferay.portal.model.Organization', 4, '20600', 20163, 20158, 2047),
(438, 20154, 'com.liferay.portal.model.User', 4, '20604', 20163, 20604, 31),
(439, 20154, 'com.liferay.portal.model.User', 4, '20610', 20163, 20610, 31),
(440, 20154, 'com.liferay.portal.model.User', 4, '20616', 20163, 20616, 31),
(441, 20154, 'com.liferay.portal.model.User', 4, '20622', 20163, 20622, 31),
(442, 20154, 'com.liferay.portal.model.User', 4, '20628', 20163, 20628, 31),
(443, 20154, 'com.liferay.portal.model.User', 4, '20634', 20163, 20634, 31),
(444, 20154, 'com.liferay.portal.model.User', 4, '20640', 20163, 20640, 31),
(445, 20154, 'com.liferay.portal.model.User', 4, '20646', 20163, 20646, 31),
(446, 20154, 'com.liferay.portal.model.User', 4, '20652', 20163, 20652, 31),
(447, 20154, 'com.liferay.portal.model.User', 4, '20658', 20163, 20658, 31),
(448, 20154, 'com.liferay.portal.model.Organization', 4, '20664', 20163, 20158, 2047),
(449, 20154, 'com.liferay.portal.model.Organization', 4, '20668', 20163, 20158, 2047),
(450, 20154, 'com.liferay.portal.model.User', 4, '20672', 20163, 20672, 31),
(451, 20154, 'com.liferay.portal.model.User', 4, '20678', 20163, 20678, 31),
(452, 20154, 'com.liferay.portal.model.User', 4, '20684', 20163, 20684, 31),
(453, 20154, 'com.liferay.portal.model.User', 4, '20690', 20163, 20690, 31),
(454, 20154, 'com.liferay.portal.model.User', 4, '20696', 20163, 20696, 31),
(455, 20154, 'com.liferay.portal.model.User', 4, '20702', 20163, 20702, 31),
(456, 20154, 'com.liferay.portal.model.User', 4, '20708', 20163, 20708, 31),
(457, 20154, 'com.liferay.portal.model.User', 4, '20714', 20163, 20714, 31),
(458, 20154, 'com.liferay.portal.model.User', 4, '20720', 20163, 20720, 31),
(459, 20154, 'com.liferay.portal.model.User', 4, '20726', 20163, 20726, 31),
(460, 20154, 'com.liferay.portal.model.Organization', 4, '20732', 20163, 20158, 2047),
(461, 20154, 'com.liferay.portal.model.User', 4, '20736', 20163, 20736, 31),
(462, 20154, 'com.liferay.portal.model.User', 4, '20742', 20163, 20742, 31),
(463, 20154, 'com.liferay.portal.model.User', 4, '20748', 20163, 20748, 31),
(464, 20154, 'com.liferay.portal.model.User', 4, '20754', 20163, 20754, 31),
(465, 20154, 'com.liferay.portal.model.User', 4, '20760', 20163, 20760, 31),
(466, 20154, 'com.liferay.portal.model.User', 4, '20766', 20163, 20766, 31),
(467, 20154, 'com.liferay.portal.model.User', 4, '20772', 20163, 20772, 31),
(468, 20154, 'com.liferay.portal.model.User', 4, '20778', 20163, 20778, 31),
(469, 20154, 'com.liferay.portal.model.User', 4, '20784', 20163, 20784, 31),
(471, 20154, 'com.liferay.portal.model.Organization', 4, '20796', 20163, 20158, 2047),
(474, 20154, 'com.liferay.portal.model.User', 4, '20812', 20163, 20812, 31),
(475, 20154, 'com.liferay.portal.model.User', 4, '20818', 20163, 20818, 31),
(476, 20154, 'com.liferay.portal.model.User', 4, '20824', 20163, 20824, 31),
(477, 20154, 'com.liferay.portal.model.User', 4, '20830', 20163, 20830, 31),
(479, 20154, 'com.liferay.portal.model.User', 4, '20842', 20163, 20842, 31),
(480, 20154, 'com.liferay.portal.model.User', 4, '20848', 20163, 20848, 31),
(481, 20154, 'com.liferay.portal.model.User', 4, '20854', 20163, 20854, 31),
(482, 20154, 'com.liferay.portal.model.Organization', 4, '20860', 20163, 20158, 2047),
(483, 20154, 'com.liferay.portal.model.User', 4, '20864', 20163, 20864, 31),
(484, 20154, 'com.liferay.portal.model.User', 4, '20870', 20163, 20870, 31),
(485, 20154, 'com.liferay.portal.model.User', 4, '20876', 20163, 20876, 31),
(486, 20154, 'com.liferay.portal.model.User', 4, '20882', 20163, 20882, 31),
(487, 20154, 'com.liferay.portal.model.User', 4, '20888', 20163, 20888, 31),
(489, 20154, 'com.liferay.portal.model.User', 4, '20900', 20163, 20900, 31),
(496, 20154, 'com.liferay.portal.model.User', 4, '20940', 20163, 20940, 31),
(470, 20154, 'com.liferay.portal.model.User', 4, '20790', 20163, 20790, 31),
(473, 20154, 'com.liferay.portal.model.User', 4, '20806', 20163, 20806, 31),
(497, 20154, 'com.liferay.portal.model.User', 4, '20946', 20163, 20946, 31),
(498, 20154, 'com.liferay.portal.model.User', 4, '20952', 20163, 20952, 31),
(499, 20154, 'com.liferay.portal.model.User', 4, '20958', 20163, 20958, 31),
(500, 20154, 'com.liferay.portal.model.User', 4, '20964', 20163, 20964, 31),
(501, 20154, 'com.liferay.portal.model.User', 4, '20970', 20163, 20970, 31),
(502, 20154, 'com.liferay.portal.model.User', 4, '20976', 20163, 20976, 31),
(503, 20154, 'com.liferay.portal.model.User', 4, '20982', 20163, 20982, 31),
(504, 20154, 'com.liferay.portal.model.Organization', 4, '20988', 20163, 20158, 2047),
(505, 20154, 'com.liferay.portal.model.Organization', 4, '20992', 20163, 20158, 2047),
(506, 20154, 'com.liferay.portal.model.User', 4, '20996', 20163, 20996, 31),
(507, 20154, 'com.liferay.portal.model.User', 4, '21002', 20163, 21002, 31),
(508, 20154, 'com.liferay.portal.model.User', 4, '21008', 20163, 21008, 31),
(472, 20154, 'com.liferay.portal.model.User', 4, '20800', 20163, 20800, 31),
(478, 20154, 'com.liferay.portal.model.User', 4, '20836', 20163, 20836, 31),
(488, 20154, 'com.liferay.portal.model.User', 4, '20894', 20163, 20894, 31),
(490, 20154, 'com.liferay.portal.model.User', 4, '20906', 20163, 20906, 31),
(491, 20154, 'com.liferay.portal.model.User', 4, '20912', 20163, 20912, 31),
(492, 20154, 'com.liferay.portal.model.User', 4, '20918', 20163, 20918, 31),
(493, 20154, 'com.liferay.portal.model.Organization', 4, '20924', 20163, 20158, 2047),
(494, 20154, 'com.liferay.portal.model.User', 4, '20928', 20163, 20928, 31),
(495, 20154, 'com.liferay.portal.model.User', 4, '20934', 20163, 20934, 31),
(509, 20154, 'com.liferay.portal.model.User', 4, '21014', 20163, 21014, 31),
(510, 20154, 'com.liferay.portal.model.User', 4, '21020', 20163, 21020, 31),
(511, 20154, 'com.liferay.portal.model.User', 4, '21026', 20163, 21026, 31),
(512, 20154, 'com.liferay.portal.model.User', 4, '21032', 20163, 21032, 31),
(513, 20154, 'com.liferay.portal.model.User', 4, '21038', 20163, 21038, 31),
(514, 20154, 'com.liferay.portal.model.User', 4, '21044', 20163, 21044, 31),
(515, 20154, 'com.liferay.portal.model.User', 4, '21050', 20163, 21050, 31),
(516, 20154, 'com.liferay.portal.model.Organization', 4, '21056', 20163, 20158, 2047),
(517, 20154, 'com.liferay.portal.model.User', 4, '21060', 20163, 21060, 31),
(518, 20154, 'com.liferay.portal.model.User', 4, '21066', 20163, 21066, 31),
(519, 20154, 'com.liferay.portal.model.User', 4, '21072', 20163, 21072, 31),
(520, 20154, 'com.liferay.portal.model.User', 4, '21078', 20163, 21078, 31),
(521, 20154, 'com.liferay.portal.model.User', 4, '21084', 20163, 21084, 31),
(522, 20154, 'com.liferay.portal.model.User', 4, '21090', 20163, 21090, 31),
(523, 20154, 'com.liferay.portal.model.User', 4, '21096', 20163, 21096, 31),
(524, 20154, 'com.liferay.portal.model.User', 4, '21102', 20163, 21102, 31),
(525, 20154, 'com.liferay.portal.model.User', 4, '21108', 20163, 21108, 31),
(526, 20154, 'com.liferay.portal.model.User', 4, '21114', 20163, 21114, 31),
(527, 20154, 'com.liferay.portal.model.Organization', 4, '21120', 20163, 20158, 2047),
(528, 20154, 'com.liferay.portal.model.Organization', 4, '21124', 20163, 20158, 2047),
(529, 20154, 'com.liferay.portal.model.User', 4, '21128', 20163, 21128, 31),
(530, 20154, 'com.liferay.portal.model.User', 4, '21134', 20163, 21134, 31),
(531, 20154, 'com.liferay.portal.model.User', 4, '21140', 20163, 21140, 31),
(532, 20154, 'com.liferay.portal.model.User', 4, '21146', 20163, 21146, 31),
(533, 20154, 'com.liferay.portal.model.User', 4, '21152', 20163, 21152, 31),
(534, 20154, 'com.liferay.portal.model.User', 4, '21158', 20163, 21158, 31),
(535, 20154, 'com.liferay.portal.model.User', 4, '21164', 20163, 21164, 31),
(536, 20154, 'com.liferay.portal.model.User', 4, '21170', 20163, 21170, 31),
(537, 20154, 'com.liferay.portal.model.User', 4, '21176', 20163, 21176, 31),
(538, 20154, 'com.liferay.portal.model.User', 4, '21182', 20163, 21182, 31),
(539, 20154, 'com.liferay.portal.model.Organization', 4, '21188', 20163, 20158, 2047),
(540, 20154, 'com.liferay.portal.model.Layout', 4, '21192', 20163, 20198, 1023),
(541, 20154, 'com.liferay.portal.model.Layout', 4, '21198', 20163, 20198, 1023),
(542, 20154, 'com.liferay.portal.model.Layout', 4, '21198', 20165, 0, 19),
(543, 20154, 'com.liferay.portal.model.Layout', 4, '21198', 20162, 0, 1),
(544, 20154, '145', 4, '20184_LAYOUT_145', 20163, 0, 63),
(545, 20154, '145', 4, '20184_LAYOUT_145', 20170, 0, 1),
(546, 20154, '145', 4, '20184_LAYOUT_145', 20162, 0, 1),
(553, 20154, '2_WAR_notificationsportlet', 4, '20184_LAYOUT_2_WAR_notificationsportlet', 20163, 0, 63),
(554, 20154, '2_WAR_notificationsportlet', 4, '20184_LAYOUT_2_WAR_notificationsportlet', 20170, 0, 1),
(555, 20154, '2_WAR_notificationsportlet', 4, '20184_LAYOUT_2_WAR_notificationsportlet', 20162, 0, 1),
(556, 20154, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 1, '20154', 20161, 0, 2),
(557, 20154, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 1, '20154', 20162, 0, 2),
(558, 20154, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 1, '20154', 20164, 0, 2),
(559, 20154, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 1, '20154', 20165, 0, 2),
(560, 20154, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 1, '20154', 20161, 0, 2),
(561, 20154, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 1, '20154', 20162, 0, 2),
(562, 20154, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 1, '20154', 20164, 0, 2),
(563, 20154, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 1, '20154', 20165, 0, 2),
(564, 20154, 'com.liferay.portlet.journal', 4, '20181', 20163, 0, 255),
(565, 20154, 'com.liferay.portlet.journal', 4, '20181', 20170, 0, 1),
(566, 20154, 'com.liferay.portlet.journal', 4, '20181', 20162, 0, 1),
(567, 20154, 'com.liferay.portlet.documentlibrary', 4, '20181', 20163, 0, 1023),
(568, 20154, 'com.liferay.portlet.documentlibrary', 4, '20181', 20170, 0, 331),
(569, 20154, 'com.liferay.portlet.documentlibrary', 4, '20181', 20162, 0, 1),
(570, 20154, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', 4, '20184_LAYOUT_employeeregistermvc_WAR_employeeregisterbuilderportlet', 20163, 0, 63),
(571, 20154, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', 4, '20184_LAYOUT_employeeregistermvc_WAR_employeeregisterbuilderportlet', 20170, 0, 1),
(585, 20154, '145', 4, '21219_LAYOUT_145', 20163, 0, 63),
(572, 20154, 'employeeregistermvc_WAR_employeeregisterbuilderportlet', 4, '20184_LAYOUT_employeeregistermvc_WAR_employeeregisterbuilderportlet', 20162, 0, 1),
(582, 20154, 'com.liferay.portal.model.Layout', 4, '21219', 20163, 20198, 1023),
(583, 20154, 'com.liferay.portal.model.Layout', 4, '21219', 20170, 0, 19),
(584, 20154, 'com.liferay.portal.model.Layout', 4, '21219', 20162, 0, 1),
(587, 20154, '145', 4, '21219_LAYOUT_145', 20162, 0, 1),
(588, 20154, '2_WAR_notificationsportlet', 4, '21219_LAYOUT_2_WAR_notificationsportlet', 20163, 0, 63),
(589, 20154, '2_WAR_notificationsportlet', 4, '21219_LAYOUT_2_WAR_notificationsportlet', 20170, 0, 1),
(590, 20154, '2_WAR_notificationsportlet', 4, '21219_LAYOUT_2_WAR_notificationsportlet', 20162, 0, 1),
(591, 20154, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 4, '21219_LAYOUT_bankregistermvc_WAR_employeeregisterbuilderportlet', 20163, 0, 63),
(592, 20154, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 4, '21219_LAYOUT_bankregistermvc_WAR_employeeregisterbuilderportlet', 20170, 0, 1),
(593, 20154, 'bankregistermvc_WAR_employeeregisterbuilderportlet', 4, '21219_LAYOUT_bankregistermvc_WAR_employeeregisterbuilderportlet', 20162, 0, 1),
(601, 20154, 'com.liferay.portal.model.Layout', 4, '21301', 20163, 20198, 1023),
(602, 20154, 'com.liferay.portal.model.Layout', 4, '21301', 20170, 0, 19),
(603, 20154, 'com.liferay.portal.model.Layout', 4, '21301', 20162, 0, 1),
(604, 20154, '145', 4, '21301_LAYOUT_145', 20163, 0, 63),
(605, 20154, '145', 4, '21301_LAYOUT_145', 20170, 0, 1),
(606, 20154, '145', 4, '21301_LAYOUT_145', 20162, 0, 1),
(607, 20154, '2_WAR_notificationsportlet', 4, '21301_LAYOUT_2_WAR_notificationsportlet', 20163, 0, 63),
(608, 20154, '2_WAR_notificationsportlet', 4, '21301_LAYOUT_2_WAR_notificationsportlet', 20170, 0, 1),
(609, 20154, '2_WAR_notificationsportlet', 4, '21301_LAYOUT_2_WAR_notificationsportlet', 20162, 0, 1),
(610, 20154, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 4, '21301_LAYOUT_positionregistermvc_WAR_employeeregisterbuilderportlet', 20163, 0, 63),
(611, 20154, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 4, '21301_LAYOUT_positionregistermvc_WAR_employeeregisterbuilderportlet', 20170, 0, 1),
(612, 20154, 'positionregistermvc_WAR_employeeregisterbuilderportlet', 4, '21301_LAYOUT_positionregistermvc_WAR_employeeregisterbuilderportlet', 20162, 0, 1),
(701, 20154, '58', 4, '20184_LAYOUT_58', 20163, 0, 63),
(702, 20154, '58', 4, '20184_LAYOUT_58', 20170, 0, 1),
(703, 20154, '58', 4, '20184_LAYOUT_58', 20162, 0, 1),
(704, 20154, '113', 4, '20184_LAYOUT_113', 20163, 0, 63),
(705, 20154, '113', 4, '20184_LAYOUT_113', 20170, 0, 1),
(706, 20154, '113', 4, '20184_LAYOUT_113', 20162, 0, 1),
(707, 20154, '113', 4, '21219_LAYOUT_113', 20163, 0, 63),
(708, 20154, '113', 4, '21219_LAYOUT_113', 20170, 0, 1),
(709, 20154, '113', 4, '21219_LAYOUT_113', 20162, 0, 1),
(710, 20154, '113', 4, '21301_LAYOUT_113', 20163, 0, 63),
(711, 20154, '113', 4, '21301_LAYOUT_113', 20170, 0, 1),
(712, 20154, '113', 4, '21301_LAYOUT_113', 20162, 0, 1);



INSERT INTO "public"."role_" ("uuid_", "roleid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "name", "title", "description", "type_", "subtype") VALUES
('7dcea9b7-7f04-4396-b3cb-9f6c8f5ef4c0', 20161, 20154, 20158, '', '2021-05-30 13:04:20.311', '2021-05-30 13:04:20.311', 20004, 20161, 'Administrator', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Administrators are super users who can do anything.</Description></root>', 1, '');
INSERT INTO "public"."role_" ("uuid_", "roleid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "name", "title", "description", "type_", "subtype") VALUES
('050e799f-1ef8-4bf7-8519-025ed04095af', 20162, 20154, 20158, '', '2021-05-30 13:04:20.449', '2021-05-30 13:04:20.449', 20004, 20162, 'Guest', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Unauthenticated users always have this role.</Description></root>', 1, '');
INSERT INTO "public"."role_" ("uuid_", "roleid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "name", "title", "description", "type_", "subtype") VALUES
('c146eb8c-58b6-45b3-803c-1e71dd30286d', 20163, 20154, 20158, '', '2021-05-30 13:04:20.543', '2021-05-30 13:04:20.543', 20004, 20163, 'Owner', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">This is an implied role with respect to the objects users create.</Description></root>', 1, '');
INSERT INTO "public"."role_" ("uuid_", "roleid", "companyid", "userid", "username", "createdate", "modifieddate", "classnameid", "classpk", "name", "title", "description", "type_", "subtype") VALUES
('0642c446-8da1-474f-97e0-7cd9cc63de8a', 20164, 20154, 20158, '', '2021-05-30 13:04:20.632', '2021-05-30 13:04:20.632', 20004, 20164, 'Power User', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Power Users have their own personal site.</Description></root>', 1, ''),
('127e611b-89ec-4af6-9134-f78e1d10fa93', 20165, 20154, 20158, '', '2021-05-30 13:04:20.705', '2021-05-30 13:04:20.705', 20004, 20165, 'User', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Authenticated users should be assigned this role.</Description></root>', 1, ''),
('c2735c13-0863-41ab-a048-ae5ba3336322', 20166, 20154, 20158, '', '2021-05-30 13:04:20.97', '2021-05-30 13:04:20.97', 20004, 20166, 'Organization Administrator', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>', 3, ''),
('9728e5f4-4140-4a15-aed2-cec4c6495795', 20167, 20154, 20158, '', '2021-05-30 13:04:21.113', '2021-05-30 13:04:21.113', 20004, 20167, 'Organization Owner', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>', 3, ''),
('70fe7166-e3d3-495b-9354-5bc2221527b2', 20168, 20154, 20158, '', '2021-05-30 13:04:21.184', '2021-05-30 13:04:21.184', 20004, 20168, 'Organization User', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">All users who belong to an organization have this role within that organization.</Description></root>', 3, ''),
('43751a64-7289-4483-b2a9-9a90206f18b4', 20169, 20154, 20158, '', '2021-05-30 13:04:21.248', '2021-05-30 13:04:21.248', 20004, 20169, 'Site Administrator', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>', 2, ''),
('4c02e1d2-f115-45e1-8b9d-454d75eaa189', 20170, 20154, 20158, '', '2021-05-30 13:04:21.324', '2021-05-30 13:04:21.324', 20004, 20170, 'Site Member', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">All users who belong to a site have this role within that site.</Description></root>', 2, ''),
('e25ebbd6-455b-423b-b0c9-0d09f33cd1de', 20171, 20154, 20158, '', '2021-05-30 13:04:21.386', '2021-05-30 13:04:21.386', 20004, 20171, 'Site Owner', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Site Owners are super users of their site and can assign site roles to users.</Description></root>', 2, ''),
('f169b41a-c47a-41b5-b253-8ef433e4e31d', 20478, 20154, 20158, '', '2021-05-30 13:05:04.464', '2021-05-30 13:05:04.464', 20004, 20478, 'Organization Content Reviewer', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Autogenerated role from workflow definition</Description></root>', 3, ''),
('72bd14a4-7aaf-4e76-9f96-6e9eee1e1764', 20484, 20154, 20158, '', '2021-05-30 13:05:04.657', '2021-05-30 13:05:04.657', 20004, 20484, 'Site Content Reviewer', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Autogenerated role from workflow definition</Description></root>', 2, ''),
('572eefac-8b1f-4836-9766-bc0b8ed2f129', 20487, 20154, 20158, '', '2021-05-30 13:05:04.805', '2021-05-30 13:05:04.805', 20004, 20487, 'Portal Content Reviewer', '', '<?xml version=''1.0'' encoding=''UTF-8''?><root available-locales="en_US" default-locale="en_US"><Description language-id="en_US">Autogenerated role from workflow definition</Description></root>', 1, '');















INSERT INTO "public"."servicecomponent" ("servicecomponentid", "buildnamespace", "buildnumber", "builddate", "data_") VALUES
(20439, 'Marketplace', 4, 1410828214125, '<?xml version="1.0"?>

<data>
	<tables-sql><![CDATA[create table Marketplace_App (
	uuid_ VARCHAR(75) null,
	appId LONG not null primary key,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	remoteAppId LONG,
	title VARCHAR(75) null,
	description STRING null,
	category VARCHAR(75) null,
	iconURL STRING null,
	version VARCHAR(75) null
);

create table Marketplace_Module (
	uuid_ VARCHAR(75) null,
	moduleId LONG not null primary key,
	appId LONG,
	bundleSymbolicName VARCHAR(500) null,
	bundleVersion VARCHAR(75) null,
	contextName VARCHAR(75) null
);]]></tables-sql>
	<sequences-sql><![CDATA[]]></sequences-sql>
	<indexes-sql><![CDATA[create index IX_94A7EF25 on Marketplace_App (category);
create index IX_865B7BD5 on Marketplace_App (companyId);
create index IX_20F14D93 on Marketplace_App (remoteAppId);
create index IX_3E667FE1 on Marketplace_App (uuid_);
create index IX_A7807DA7 on Marketplace_App (uuid_, companyId);

create index IX_7DC16D26 on Marketplace_Module (appId);
create index IX_5848F52D on Marketplace_Module (appId, bundleSymbolicName, bundleVersion);
create index IX_C6938724 on Marketplace_Module (appId, contextName);
create index IX_DD03D499 on Marketplace_Module (bundleSymbolicName);
create index IX_F2F1E964 on Marketplace_Module (contextName);
create index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>
</data>');
INSERT INTO "public"."servicecomponent" ("servicecomponentid", "buildnamespace", "buildnumber", "builddate", "data_") VALUES
(20447, 'Calendar', 4, 1424703239325, '<?xml version="1.0"?>

<data>
	<tables-sql><![CDATA[create table Calendar (
	uuid_ VARCHAR(75) null,
	calendarId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	resourceBlockId LONG,
	calendarResourceId LONG,
	name STRING null,
	description STRING null,
	timeZoneId VARCHAR(75) null,
	color INTEGER,
	defaultCalendar BOOLEAN,
	enableComments BOOLEAN,
	enableRatings BOOLEAN
);

create table CalendarBooking (
	uuid_ VARCHAR(75) null,
	calendarBookingId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	resourceBlockId LONG,
	calendarId LONG,
	calendarResourceId LONG,
	parentCalendarBookingId LONG,
	vEventUid VARCHAR(255) null,
	title STRING null,
	description TEXT null,
	location STRING null,
	startTime LONG,
	endTime LONG,
	allDay BOOLEAN,
	recurrence STRING null,
	firstReminder LONG,
	firstReminderType VARCHAR(75) null,
	secondReminder LONG,
	secondReminderType VARCHAR(75) null,
	status INTEGER,
	statusByUserId LONG,
	statusByUserName VARCHAR(75) null,
	statusDate DATE null
);

create table CalendarNotificationTemplate (
	uuid_ VARCHAR(75) null,
	calendarNotificationTemplateId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	calendarId LONG,
	notificationType VARCHAR(75) null,
	notificationTypeSettings VARCHAR(75) null,
	notificationTemplateType VARCHAR(75) null,
	subject VARCHAR(75) null,
	body TEXT null
);

create table CalendarResource (
	uuid_ VARCHAR(75) null,
	calendarResourceId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	resourceBlockId LONG,
	classNameId LONG,
	classPK LONG,
	classUuid VARCHAR(75) null,
	code_ VARCHAR(75) null,
	name STRING null,
	description STRING null,
	active_ BOOLEAN
);]]></tables-sql>
	<sequences-sql><![CDATA[]]></sequences-sql>
	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);
create index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);
create index IX_F0FAF226 on Calendar (resourceBlockId);
create index IX_96C8590 on Calendar (uuid_);
create index IX_97656498 on Calendar (uuid_, companyId);
create unique index IX_3AE311A on Calendar (uuid_, groupId);

create index IX_D300DFCE on CalendarBooking (calendarId);
create unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);
create index IX_470170B4 on CalendarBooking (calendarId, status);
create unique index IX_8B23DA0E on CalendarBooking (calendarId, vEventUid);
create index IX_B198FFC on CalendarBooking (calendarResourceId);
create index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);
create index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);
create index IX_22DFDB49 on CalendarBooking (resourceBlockId);
create index IX_F6E8EE73 on CalendarBooking (uuid_);
create index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);
create unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);

create index IX_A412E5B6 on CalendarNotificationTemplate (calendarId);
create index IX_7727A482 on CalendarNotificationTemplate (calendarId, notificationType, notificationTemplateType);
create index IX_A2D4D78B on CalendarNotificationTemplate (uuid_);
create index IX_4D7D97BD on CalendarNotificationTemplate (uuid_, companyId);
create unique index IX_4012E97F on CalendarNotificationTemplate (uuid_, groupId);

create index IX_76DDD0F7 on CalendarResource (active_);
create unique index IX_16A12327 on CalendarResource (classNameId, classPK);
create index IX_4470A59D on CalendarResource (companyId, code_, active_);
create index IX_1243D698 on CalendarResource (groupId);
create index IX_40678371 on CalendarResource (groupId, active_);
create index IX_55C2F8AA on CalendarResource (groupId, code_);
create index IX_8BCB4D38 on CalendarResource (resourceBlockId);
create index IX_150E2F22 on CalendarResource (uuid_);
create index IX_56A06BC6 on CalendarResource (uuid_, companyId);
create unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>
</data>');
INSERT INTO "public"."servicecomponent" ("servicecomponentid", "buildnamespace", "buildnumber", "builddate", "data_") VALUES
(20466, 'Kaleo', 8, 1425595080483, '<?xml version="1.0"?>

<data>
	<tables-sql><![CDATA[create table KaleoAction (
	kaleoActionId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoClassName VARCHAR(200) null,
	kaleoClassPK LONG,
	kaleoDefinitionId LONG,
	kaleoNodeName VARCHAR(200) null,
	name VARCHAR(200) null,
	description STRING null,
	executionType VARCHAR(20) null,
	script TEXT null,
	scriptLanguage VARCHAR(75) null,
	scriptRequiredContexts STRING null,
	priority INTEGER
);

create table KaleoCondition (
	kaleoConditionId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoDefinitionId LONG,
	kaleoNodeId LONG,
	script TEXT null,
	scriptLanguage VARCHAR(75) null,
	scriptRequiredContexts STRING null
);

create table KaleoDefinition (
	kaleoDefinitionId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	name VARCHAR(200) null,
	title STRING null,
	description STRING null,
	content TEXT null,
	version INTEGER,
	active_ BOOLEAN,
	startKaleoNodeId LONG
);

create table KaleoInstance (
	kaleoInstanceId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoDefinitionId LONG,
	kaleoDefinitionName VARCHAR(200) null,
	kaleoDefinitionVersion INTEGER,
	rootKaleoInstanceTokenId LONG,
	className VARCHAR(200) null,
	classPK LONG,
	completed BOOLEAN,
	completionDate DATE null,
	workflowContext TEXT null
);

create table KaleoInstanceToken (
	kaleoInstanceTokenId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoDefinitionId LONG,
	kaleoInstanceId LONG,
	parentKaleoInstanceTokenId LONG,
	currentKaleoNodeId LONG,
	currentKaleoNodeName VARCHAR(200) null,
	className VARCHAR(200) null,
	classPK LONG,
	completed BOOLEAN,
	completionDate DATE null
);

create table KaleoLog (
	kaleoLogId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoClassName VARCHAR(200) null,
	kaleoClassPK LONG,
	kaleoDefinitionId LONG,
	kaleoInstanceId LONG,
	kaleoInstanceTokenId LONG,
	kaleoTaskInstanceTokenId LONG,
	kaleoNodeName VARCHAR(200) null,
	terminalKaleoNode BOOLEAN,
	kaleoActionId LONG,
	kaleoActionName VARCHAR(200) null,
	kaleoActionDescription STRING null,
	previousKaleoNodeId LONG,
	previousKaleoNodeName VARCHAR(200) null,
	previousAssigneeClassName VARCHAR(200) null,
	previousAssigneeClassPK LONG,
	currentAssigneeClassName VARCHAR(200) null,
	currentAssigneeClassPK LONG,
	type_ VARCHAR(50) null,
	comment_ TEXT null,
	startDate DATE null,
	endDate DATE null,
	duration LONG,
	workflowContext TEXT null
);

create table KaleoNode (
	kaleoNodeId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoDefinitionId LONG,
	name VARCHAR(200) null,
	metadata STRING null,
	description STRING null,
	type_ VARCHAR(20) null,
	initial_ BOOLEAN,
	terminal BOOLEAN
);

create table KaleoNotification (
	kaleoNotificationId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoClassName VARCHAR(200) null,
	kaleoClassPK LONG,
	kaleoDefinitionId LONG,
	kaleoNodeName VARCHAR(200) null,
	name VARCHAR(200) null,
	description STRING null,
	executionType VARCHAR(20) null,
	template TEXT null,
	templateLanguage VARCHAR(75) null,
	notificationTypes VARCHAR(25) null
);

create table KaleoNotificationRecipient (
	kaleoNotificationRecipientId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoDefinitionId LONG,
	kaleoNotificationId LONG,
	recipientClassName VARCHAR(200) null,
	recipientClassPK LONG,
	recipientRoleType INTEGER,
	address VARCHAR(255) null
);

create table KaleoTask (
	kaleoTaskId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoDefinitionId LONG,
	kaleoNodeId LONG,
	name VARCHAR(200) null,
	description STRING null
);

create table KaleoTaskAssignment (
	kaleoTaskAssignmentId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoClassName VARCHAR(200) null,
	kaleoClassPK LONG,
	kaleoDefinitionId LONG,
	kaleoNodeId LONG,
	assigneeClassName VARCHAR(200) null,
	assigneeClassPK LONG,
	assigneeActionId VARCHAR(75) null,
	assigneeScript TEXT null,
	assigneeScriptLanguage VARCHAR(75) null,
	assigneeScriptRequiredContexts STRING null
);

create table KaleoTaskAssignmentInstance (
	kaleoTaskAssignmentInstanceId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoDefinitionId LONG,
	kaleoInstanceId LONG,
	kaleoInstanceTokenId LONG,
	kaleoTaskInstanceTokenId LONG,
	kaleoTaskId LONG,
	kaleoTaskName VARCHAR(200) null,
	assigneeClassName VARCHAR(200) null,
	assigneeClassPK LONG,
	completed BOOLEAN,
	completionDate DATE null
);

create table KaleoTaskInstanceToken (
	kaleoTaskInstanceTokenId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoDefinitionId LONG,
	kaleoInstanceId LONG,
	kaleoInstanceTokenId LONG,
	kaleoTaskId LONG,
	kaleoTaskName VARCHAR(200) null,
	className VARCHAR(200) null,
	classPK LONG,
	completionUserId LONG,
	completed BOOLEAN,
	completionDate DATE null,
	dueDate DATE null,
	workflowContext TEXT null
);

create table KaleoTimer (
	kaleoTimerId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoClassName VARCHAR(200) null,
	kaleoClassPK LONG,
	kaleoDefinitionId LONG,
	name VARCHAR(75) null,
	blocking BOOLEAN,
	description STRING null,
	duration DOUBLE,
	scale VARCHAR(75) null,
	recurrenceDuration DOUBLE,
	recurrenceScale VARCHAR(75) null
);

create table KaleoTimerInstanceToken (
	kaleoTimerInstanceTokenId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoClassName VARCHAR(200) null,
	kaleoClassPK LONG,
	kaleoDefinitionId LONG,
	kaleoInstanceId LONG,
	kaleoInstanceTokenId LONG,
	kaleoTaskInstanceTokenId LONG,
	kaleoTimerId LONG,
	kaleoTimerName VARCHAR(200) null,
	blocking BOOLEAN,
	completionUserId LONG,
	completed BOOLEAN,
	completionDate DATE null,
	workflowContext TEXT null
);

create table KaleoTransition (
	kaleoTransitionId LONG not null primary key,
	groupId LONG,
	companyId LONG,
	userId LONG,
	userName VARCHAR(200) null,
	createDate DATE null,
	modifiedDate DATE null,
	kaleoDefinitionId LONG,
	kaleoNodeId LONG,
	name VARCHAR(200) null,
	description STRING null,
	sourceKaleoNodeId LONG,
	sourceKaleoNodeName VARCHAR(200) null,
	targetKaleoNodeId LONG,
	targetKaleoNodeName VARCHAR(200) null,
	defaultTransition BOOLEAN
);]]></tables-sql>
	<sequences-sql><![CDATA[]]></sequences-sql>
	<indexes-sql><![CDATA[create index IX_50E9112C on KaleoAction (companyId);
create index IX_170EFD7A on KaleoAction (kaleoClassName, kaleoClassPK);
create index IX_4B2545E8 on KaleoAction (kaleoClassName, kaleoClassPK, executionType);
create index IX_F95A622 on KaleoAction (kaleoDefinitionId);

create index IX_FEE46067 on KaleoCondition (companyId);
create index IX_DC978A5D on KaleoCondition (kaleoDefinitionId);
create index IX_86CBD4C on KaleoCondition (kaleoNodeId);

create index IX_40B9112F on KaleoDefinition (companyId);
create index IX_408542BA on KaleoDefinition (companyId, active_);
create index IX_76C781AE on KaleoDefinition (companyId, name);
create index IX_4C23F11B on KaleoDefinition (companyId, name, active_);
create index IX_EC14F81A on KaleoDefinition (companyId, name, version);

create index IX_58D85ECB on KaleoInstance (className, classPK);
create index IX_5F2FCD2D on KaleoInstance (companyId);
create index IX_BF5839F8 on KaleoInstance (companyId, kaleoDefinitionName, kaleoDefinitionVersion, completionDate);
create index IX_C6D7A867 on KaleoInstance (companyId, userId);
create index IX_4DA4D123 on KaleoInstance (kaleoDefinitionId);
create index IX_ACF16238 on KaleoInstance (kaleoDefinitionId, completed);

create index IX_153721BE on KaleoInstanceToken (companyId);
create index IX_4A86923B on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId);
create index IX_360D34D9 on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId, completionDate);
create index IX_7BDB04B4 on KaleoInstanceToken (kaleoDefinitionId);
create index IX_F42AAFF6 on KaleoInstanceToken (kaleoInstanceId);

create index IX_73B5F4DE on KaleoLog (companyId);
create index IX_E66A153A on KaleoLog (kaleoClassName, kaleoClassPK, kaleoInstanceTokenId, type_);
create index IX_6C64B7D4 on KaleoLog (kaleoDefinitionId);
create index IX_5BC6AB16 on KaleoLog (kaleoInstanceId);
create index IX_470B9FF8 on KaleoLog (kaleoInstanceTokenId, type_);
create index IX_B0CDCA38 on KaleoLog (kaleoTaskInstanceTokenId);

create index IX_C4E9ACE0 on KaleoNode (companyId);
create index IX_F28C443E on KaleoNode (companyId, kaleoDefinitionId);
create index IX_32E94DD6 on KaleoNode (kaleoDefinitionId);

create index IX_38829497 on KaleoNotification (companyId);
create index IX_902D342F on KaleoNotification (kaleoClassName, kaleoClassPK);
create index IX_F3362E93 on KaleoNotification (kaleoClassName, kaleoClassPK, executionType);
create index IX_4B968E8D on KaleoNotification (kaleoDefinitionId);

create index IX_2C8C4AF4 on KaleoNotificationRecipient (companyId);
create index IX_AA6697EA on KaleoNotificationRecipient (kaleoDefinitionId);
create index IX_7F4FED02 on KaleoNotificationRecipient (kaleoNotificationId);

create index IX_E1F8B23D on KaleoTask (companyId);
create index IX_3FFA633 on KaleoTask (kaleoDefinitionId);
create index IX_77B3F1A2 on KaleoTask (kaleoNodeId);

create index IX_611732B0 on KaleoTaskAssignment (companyId);
create index IX_D835C576 on KaleoTaskAssignment (kaleoClassName, kaleoClassPK);
create index IX_1087068E on KaleoTaskAssignment (kaleoClassName, kaleoClassPK, assigneeClassName);
create index IX_575C03A6 on KaleoTaskAssignment (kaleoDefinitionId);

create index IX_945F4EB7 on KaleoTaskAssignmentInstance (assigneeClassName);
create index IX_3BD436FD on KaleoTaskAssignmentInstance (assigneeClassName, assigneeClassPK);
create index IX_6E3CDA1B on KaleoTaskAssignmentInstance (companyId);
create index IX_38A47B17 on KaleoTaskAssignmentInstance (groupId, assigneeClassPK);
create index IX_C851011 on KaleoTaskAssignmentInstance (kaleoDefinitionId);
create index IX_67A9EE93 on KaleoTaskAssignmentInstance (kaleoInstanceId);
create index IX_D4C2235B on KaleoTaskAssignmentInstance (kaleoTaskInstanceTokenId);

create index IX_A3271995 on KaleoTaskInstanceToken (className, classPK);
create index IX_997FE723 on KaleoTaskInstanceToken (companyId);
create index IX_608E9519 on KaleoTaskInstanceToken (kaleoDefinitionId);
create index IX_2CE1159B on KaleoTaskInstanceToken (kaleoInstanceId);
create index IX_B857A115 on KaleoTaskInstanceToken (kaleoInstanceId, kaleoTaskId);

create index IX_4DE6A889 on KaleoTimer (kaleoClassName, kaleoClassPK);
create index IX_1A479F32 on KaleoTimer (kaleoClassName, kaleoClassPK, blocking);

create index IX_DB96C55B on KaleoTimerInstanceToken (kaleoInstanceId);
create index IX_DB279423 on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed);
create index IX_9932524C on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed, blocking);
create index IX_13A5BA2C on KaleoTimerInstanceToken (kaleoInstanceTokenId, kaleoTimerId);

create index IX_41D6C6D on KaleoTransition (companyId);
create index IX_479F3063 on KaleoTransition (kaleoDefinitionId);
create index IX_A392DFD2 on KaleoTransition (kaleoNodeId);
create index IX_A38E2194 on KaleoTransition (kaleoNodeId, defaultTransition);
create index IX_85268A11 on KaleoTransition (kaleoNodeId, name);]]></indexes-sql>
</data>');
INSERT INTO "public"."servicecomponent" ("servicecomponentid", "buildnamespace", "buildnumber", "builddate", "data_") VALUES
(20494, 'Notification', 1, 1409250476826, '<?xml version="1.0"?>

<data>
	<tables-sql><![CDATA[create table Notifications_UserNotificationEvent (
	notificationEventId LONG not null primary key,
	companyId LONG,
	userId LONG,
	userNotificationEventId LONG,
	timestamp LONG,
	delivered BOOLEAN,
	actionRequired BOOLEAN,
	archived BOOLEAN
);]]></tables-sql>
	<sequences-sql><![CDATA[]]></sequences-sql>
	<indexes-sql><![CDATA[create index IX_93C52776 on Notifications_UserNotificationEvent (userId, actionRequired);
create index IX_36E5AE4C on Notifications_UserNotificationEvent (userId, actionRequired, archived);
create index IX_73C065F0 on Notifications_UserNotificationEvent (userId, delivered, actionRequired);
create unique index IX_DC9FCEDC on Notifications_UserNotificationEvent (userNotificationEventId);]]></indexes-sql>
</data>'),
(20504, 'OpenSocial', 4, 1343264401607, '<?xml version="1.0"?>

<data>
	<tables-sql><![CDATA[create table OpenSocial_Gadget (
	uuid_ VARCHAR(75) null,
	gadgetId LONG not null primary key,
	companyId LONG,
	createDate DATE null,
	modifiedDate DATE null,
	name VARCHAR(75) null,
	url STRING null,
	portletCategoryNames STRING null
);

create table OpenSocial_OAuthConsumer (
	oAuthConsumerId LONG not null primary key,
	companyId LONG,
	createDate DATE null,
	modifiedDate DATE null,
	gadgetKey VARCHAR(75) null,
	serviceName VARCHAR(75) null,
	consumerKey VARCHAR(75) null,
	consumerSecret TEXT null,
	keyType VARCHAR(75) null
);

create table OpenSocial_OAuthToken (
	oAuthTokenId LONG not null primary key,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createDate DATE null,
	modifiedDate DATE null,
	gadgetKey VARCHAR(75) null,
	serviceName VARCHAR(75) null,
	moduleId LONG,
	accessToken VARCHAR(75) null,
	tokenName VARCHAR(75) null,
	tokenSecret VARCHAR(75) null,
	sessionHandle VARCHAR(75) null,
	expiration LONG
);]]></tables-sql>
	<sequences-sql><![CDATA[]]></sequences-sql>
	<indexes-sql><![CDATA[create index IX_729869EE on OpenSocial_Gadget (companyId);
create unique index IX_A6A89EB1 on OpenSocial_Gadget (companyId, url);
create index IX_E1F8627A on OpenSocial_Gadget (uuid_);
create index IX_3C79316E on OpenSocial_Gadget (uuid_, companyId);

create index IX_47206618 on OpenSocial_OAuthConsumer (gadgetKey);
create index IX_8E715BF8 on OpenSocial_OAuthConsumer (gadgetKey, serviceName);

create index IX_6C8CCC3D on OpenSocial_OAuthToken (gadgetKey, serviceName);
create index IX_CDD35402 on OpenSocial_OAuthToken (userId, gadgetKey, serviceName, moduleId, tokenName);]]></indexes-sql>
</data>'),
(20513, 'Sync', 6, 1445034861916, '<?xml version="1.0"?>

<data>
	<tables-sql><![CDATA[create table SyncDLFileVersionDiff (
	syncDLFileVersionDiffId LONG not null primary key,
	fileEntryId LONG,
	sourceFileVersionId LONG,
	targetFileVersionId LONG,
	dataFileEntryId LONG,
	size_ LONG,
	expirationDate DATE null
);

create table SyncDLObject (
	syncDLObjectId LONG not null primary key,
	companyId LONG,
	userId LONG,
	userName VARCHAR(75) null,
	createTime LONG,
	modifiedTime LONG,
	repositoryId LONG,
	parentFolderId LONG,
	treePath STRING null,
	name VARCHAR(255) null,
	extension VARCHAR(75) null,
	mimeType VARCHAR(75) null,
	description STRING null,
	changeLog VARCHAR(75) null,
	extraSettings TEXT null,
	version VARCHAR(75) null,
	versionId LONG,
	size_ LONG,
	checksum VARCHAR(75) null,
	event VARCHAR(75) null,
	lastPermissionChangeDate DATE null,
	lockExpirationDate DATE null,
	lockUserId LONG,
	lockUserName VARCHAR(75) null,
	type_ VARCHAR(75) null,
	typePK LONG,
	typeUuid VARCHAR(75) null
);]]></tables-sql>
	<sequences-sql><![CDATA[]]></sequences-sql>
	<indexes-sql><![CDATA[create index IX_A9B43C55 on SyncDLFileVersionDiff (expirationDate);
create index IX_F832A75D on SyncDLFileVersionDiff (fileEntryId);
create unique index IX_AC4C7667 on SyncDLFileVersionDiff (fileEntryId, sourceFileVersionId, targetFileVersionId);

create index IX_980323CB on SyncDLObject (modifiedTime, repositoryId);
create index IX_8D4FDC9F on SyncDLObject (modifiedTime, repositoryId, event);
create index IX_A3ACE372 on SyncDLObject (modifiedTime, repositoryId, parentFolderId);
create index IX_F174AD48 on SyncDLObject (repositoryId, parentFolderId);
create index IX_3BE7BB8D on SyncDLObject (repositoryId, parentFolderId, type_);
create index IX_57F62914 on SyncDLObject (repositoryId, type_);
create unique index IX_E3F57BD6 on SyncDLObject (type_, typePK);
create index IX_28CD54BB on SyncDLObject (type_, version);
create index IX_1CCA3B5 on SyncDLObject (version, type_);]]></indexes-sql>
</data>'),
(21212, 'Emp', 34, 1622358908085, '<?xml version="1.0"?>

<data>
	<tables-sql><![CDATA[create table Emp_Bank (
	uuid_ VARCHAR(75) null,
	bank_id LONG not null primary key,
	name VARCHAR(75) null,
	bik VARCHAR(75) null,
	address VARCHAR(75) null
);

create table Emp_Banks_Employees (
	bank_id LONG not null,
	employee_id LONG not null,
	primary key (bank_id, employee_id)
);

create table Emp_Employee (
	uuid_ VARCHAR(75) null,
	employee_id LONG not null primary key,
	name VARCHAR(75) null,
	patronymic VARCHAR(75) null,
	surname VARCHAR(75) null,
	gender VARCHAR(75) null,
	birth_date DATE null,
	date_of_employment DATE null,
	salary INTEGER,
	work_phone VARCHAR(75) null,
	mobile_phone VARCHAR(75) null,
	archive BOOLEAN,
	position_id LONG
);

create table Emp_Position (
	uuid_ VARCHAR(75) null,
	position_id LONG not null primary key,
	name VARCHAR(75) null,
	archive BOOLEAN,
	employee_id LONG
);]]></tables-sql>
	<sequences-sql><![CDATA[]]></sequences-sql>
	<indexes-sql><![CDATA[create index IX_25D284FB on Emp_Bank (uuid_);
create index IX_64DA244D on Emp_Bank (uuid_, companyId);
create unique index IX_4B495A0F on Emp_Bank (uuid_, groupId);

create index IX_FF6B3B96 on Emp_Banks_Emoloyees (bankId);
create index IX_EF355DA3 on Emp_Banks_Emoloyees (bank_id);
create index IX_5360F488 on Emp_Banks_Emoloyees (employeeId);
create index IX_19F6C2F1 on Emp_Banks_Emoloyees (employee_id);

create index IX_50151997 on Emp_Banks_Employees (bankId);
create index IX_B3C73FC2 on Emp_Banks_Employees (bank_id);
create index IX_5FF9EA09 on Emp_Banks_Employees (employeeId);
create index IX_A07C7D90 on Emp_Banks_Employees (employee_id);

create index IX_3FD29849 on Emp_Employee (uuid_);
create index IX_9240943F on Emp_Employee (uuid_, companyId);
create unique index IX_530F1E81 on Emp_Employee (uuid_, groupId);

create index IX_7734802E on Emp_Position (uuid_);
create index IX_D2613B3A on Emp_Position (uuid_, companyId);
create unique index IX_A393483C on Emp_Position (uuid_, groupId);]]></indexes-sql>
</data>'),
(21501, 'Emp', 35, 1622391982320, '<?xml version="1.0"?>

<data>
	<tables-sql><![CDATA[create table Emp_Bank (
	uuid_ VARCHAR(75) null,
	bank_id LONG not null primary key,
	name VARCHAR(75) null,
	bik VARCHAR(75) null,
	address VARCHAR(75) null
);

create table Emp_Banks_Employees (
	bank_id LONG not null,
	employee_id LONG not null,
	primary key (bank_id, employee_id)
);

create table Emp_Employee (
	uuid_ VARCHAR(75) null,
	employee_id LONG not null primary key,
	name VARCHAR(75) null,
	patronymic VARCHAR(75) null,
	surname VARCHAR(75) null,
	gender VARCHAR(75) null,
	birth_date DATE null,
	date_of_employment DATE null,
	salary INTEGER,
	work_phone VARCHAR(75) null,
	mobile_phone VARCHAR(75) null,
	archive BOOLEAN,
	position_id LONG
);

create table Emp_Position (
	uuid_ VARCHAR(75) null,
	position_id LONG not null primary key,
	name VARCHAR(75) null,
	archive BOOLEAN,
	employee_id LONG
);]]></tables-sql>
	<sequences-sql><![CDATA[]]></sequences-sql>
	<indexes-sql><![CDATA[create index IX_25D284FB on Emp_Bank (uuid_);
create index IX_64DA244D on Emp_Bank (uuid_, companyId);
create unique index IX_4B495A0F on Emp_Bank (uuid_, groupId);

create index IX_FF6B3B96 on Emp_Banks_Emoloyees (bankId);
create index IX_EF355DA3 on Emp_Banks_Emoloyees (bank_id);
create index IX_5360F488 on Emp_Banks_Emoloyees (employeeId);
create index IX_19F6C2F1 on Emp_Banks_Emoloyees (employee_id);

create index IX_50151997 on Emp_Banks_Employees (bankId);
create index IX_B3C73FC2 on Emp_Banks_Employees (bank_id);
create index IX_5FF9EA09 on Emp_Banks_Employees (employeeId);
create index IX_A07C7D90 on Emp_Banks_Employees (employee_id);

create index IX_3FD29849 on Emp_Employee (uuid_);
create index IX_9240943F on Emp_Employee (uuid_, companyId);
create unique index IX_530F1E81 on Emp_Employee (uuid_, groupId);

create index IX_7734802E on Emp_Position (uuid_);
create index IX_D2613B3A on Emp_Position (uuid_, companyId);
create unique index IX_A393483C on Emp_Position (uuid_, groupId);]]></indexes-sql>
</data>');

INSERT INTO "public"."shard" ("shardid", "classnameid", "classpk", "name") VALUES
(20155, 20025, 20154, 'default');


















































INSERT INTO "public"."user_" ("uuid_", "userid", "companyid", "createdate", "modifieddate", "defaultuser", "contactid", "password_", "passwordencrypted", "passwordreset", "passwordmodifieddate", "digest", "reminderqueryquestion", "reminderqueryanswer", "gracelogincount", "screenname", "emailaddress", "facebookid", "ldapserverid", "openid", "portraitid", "languageid", "timezoneid", "greeting", "comments", "firstname", "middlename", "lastname", "jobtitle", "logindate", "loginip", "lastlogindate", "lastloginip", "lastfailedlogindate", "failedloginattempts", "lockout", "lockoutdate", "agreedtotermsofuse", "emailaddressverified", "status") VALUES
('0c3516c2-0fec-4828-9e1f-b834b071769b', 20158, 20154, '2021-05-30 13:04:19.914', '2021-05-30 13:04:19.914', 't', 20159, 'password', 'f', 'f', NULL, '5533ed38b5e33c076a804bb4bca644f9,4ab65718846308d51294d0f4dfbb74c2,4ab65718846308d51294d0f4dfbb74c2', '', '', 0, '20158', 'default@liferay.com', 0, 0, '', 0, 'en_US', 'UTC', 'Welcome!', '', '', '', '', '', '2021-05-30 13:04:19.914', '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0);
INSERT INTO "public"."user_" ("uuid_", "userid", "companyid", "createdate", "modifieddate", "defaultuser", "contactid", "password_", "passwordencrypted", "passwordreset", "passwordmodifieddate", "digest", "reminderqueryquestion", "reminderqueryanswer", "gracelogincount", "screenname", "emailaddress", "facebookid", "ldapserverid", "openid", "portraitid", "languageid", "timezoneid", "greeting", "comments", "firstname", "middlename", "lastname", "jobtitle", "logindate", "loginip", "lastlogindate", "lastloginip", "lastfailedlogindate", "failedloginattempts", "lockout", "lockoutdate", "agreedtotermsofuse", "emailaddressverified", "status") VALUES
('0cfa7849-96f1-4ad2-8894-bd1120ed10a4', 20536, 20154, '2021-05-30 13:05:25.041', '2021-05-30 13:05:25.041', 'f', 20537, 'AAAAoAAB9AC58uV9Z7v0uJ3hFLJkBn9rdG7mD+Dgw3jmzVxF', 't', 'f', NULL, '', '', '', 0, 'ord1', 'test.ord.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 1!', '', 'Test', '', 'ORD 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0);
INSERT INTO "public"."user_" ("uuid_", "userid", "companyid", "createdate", "modifieddate", "defaultuser", "contactid", "password_", "passwordencrypted", "passwordreset", "passwordmodifieddate", "digest", "reminderqueryquestion", "reminderqueryanswer", "gracelogincount", "screenname", "emailaddress", "facebookid", "ldapserverid", "openid", "portraitid", "languageid", "timezoneid", "greeting", "comments", "firstname", "middlename", "lastname", "jobtitle", "logindate", "loginip", "lastlogindate", "lastloginip", "lastfailedlogindate", "failedloginattempts", "lockout", "lockoutdate", "agreedtotermsofuse", "emailaddressverified", "status") VALUES
('81139fb6-3308-41f7-99b9-d15de5159905', 20542, 20154, '2021-05-30 13:05:25.513', '2021-05-30 13:05:25.513', 'f', 20543, 'AAAAoAAB9ABTLyy3Kp1KdEmB7P2apygI2sLev/xlVLdWktk8', 't', 'f', NULL, '', '', '', 0, 'ord2', 'test.ord.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 2!', '', 'Test', '', 'ORD 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0);
INSERT INTO "public"."user_" ("uuid_", "userid", "companyid", "createdate", "modifieddate", "defaultuser", "contactid", "password_", "passwordencrypted", "passwordreset", "passwordmodifieddate", "digest", "reminderqueryquestion", "reminderqueryanswer", "gracelogincount", "screenname", "emailaddress", "facebookid", "ldapserverid", "openid", "portraitid", "languageid", "timezoneid", "greeting", "comments", "firstname", "middlename", "lastname", "jobtitle", "logindate", "loginip", "lastlogindate", "lastloginip", "lastfailedlogindate", "failedloginattempts", "lockout", "lockoutdate", "agreedtotermsofuse", "emailaddressverified", "status") VALUES
('26365af7-2f71-4300-89ac-dc557bdaf0bf', 20548, 20154, '2021-05-30 13:05:25.929', '2021-05-30 13:05:25.929', 'f', 20549, 'AAAAoAAB9ADH0FAcot//nCTGTTFVLan44KsC1iMj387sJez+', 't', 'f', NULL, '', '', '', 0, 'ord3', 'test.ord.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 3!', '', 'Test', '', 'ORD 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('749dbbb5-c9df-4368-bf9d-1ed64ff6c75e', 20554, 20154, '2021-05-30 13:05:26.395', '2021-05-30 13:05:26.395', 'f', 20555, 'AAAAoAAB9AA9JK8Y1fHGSTTbZr32Yubdur4A8BKQyuIOv4Lg', 't', 'f', NULL, '', '', '', 0, 'ord4', 'test.ord.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 4!', '', 'Test', '', 'ORD 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('90917ca7-817f-4d6a-a6aa-77e93dc59446', 20560, 20154, '2021-05-30 13:05:26.833', '2021-05-30 13:05:26.833', 'f', 20561, 'AAAAoAAB9ABiMKxDkIdAgI5x3ytHyyvivmo36GzonE4joLNE', 't', 'f', NULL, '', '', '', 0, 'ord5', 'test.ord.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 5!', '', 'Test', '', 'ORD 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('1084de06-c42d-41b8-b369-e03d4bd61564', 20566, 20154, '2021-05-30 13:05:27.295', '2021-05-30 13:05:27.295', 'f', 20567, 'AAAAoAAB9AAgpRhql8RnhwqcGTFFvznv/bofT2G/Q3YL8l1f', 't', 'f', NULL, '', '', '', 0, 'ord6', 'test.ord.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 6!', '', 'Test', '', 'ORD 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('aa7b4b57-e104-4202-9d87-a99431ee4309', 20572, 20154, '2021-05-30 13:05:27.889', '2021-05-30 13:05:27.889', 'f', 20573, 'AAAAoAAB9AAvOVHcRnnhfsbZf2BeHef0g1eHfIftmSskynZG', 't', 'f', NULL, '', '', '', 0, 'ord7', 'test.ord.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 7!', '', 'Test', '', 'ORD 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('118a1dd6-050f-4f90-8f16-3657015097d1', 20578, 20154, '2021-05-30 13:05:28.368', '2021-05-30 13:05:28.368', 'f', 20579, 'AAAAoAAB9AA1UtBj8lHqOHEM0qeXtu6u6A4RMhI9cTZDxbKS', 't', 'f', NULL, '', '', '', 0, 'ord8', 'test.ord.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 8!', '', 'Test', '', 'ORD 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('4dcadb1b-6363-421d-8876-1ac8be493dd7', 20584, 20154, '2021-05-30 13:05:28.762', '2021-05-30 13:05:28.762', 'f', 20585, 'AAAAoAAB9ACSAMjzHGiH2bHJ0FyvW8Jds2hf9ItsvVpkO2kI', 't', 'f', NULL, '', '', '', 0, 'ord9', 'test.ord.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 9!', '', 'Test', '', 'ORD 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('911c313a-5046-4508-aadf-f3dcb4c2c6f0', 20590, 20154, '2021-05-30 13:05:29.234', '2021-05-30 13:05:29.234', 'f', 20591, 'AAAAoAAB9ACZsXZC64tU/FOG2D5LLwkbcCFvgDYOOCJp+8ra', 't', 'f', NULL, '', '', '', 0, 'ord10', 'test.ord.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test ORD 10!', '', 'Test', '', 'ORD 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('dd33aef5-1fb3-4340-aaf7-3fb5b8a88365', 20604, 20154, '2021-05-30 13:05:29.873', '2021-05-30 13:05:29.873', 'f', 20605, 'AAAAoAAB9ADpA2wiDWP1blDlIxXnF0LDmtjj0iYjFsCdvXud', 't', 'f', NULL, '', '', '', 0, 'dlc1', 'test.dlc.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 1!', '', 'Test', '', 'DLC 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('118cea33-e8e8-48aa-a4eb-d16f0bb71634', 20610, 20154, '2021-05-30 13:05:30.35', '2021-05-30 13:05:30.35', 'f', 20611, 'AAAAoAAB9AAidRIqorJ5ptydDfx/RC7ITKj4RZGNu3kh67gO', 't', 'f', NULL, '', '', '', 0, 'dlc2', 'test.dlc.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 2!', '', 'Test', '', 'DLC 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('47a633f1-bf65-43e8-acd7-a6692f312e3f', 20616, 20154, '2021-05-30 13:05:30.821', '2021-05-30 13:05:30.821', 'f', 20617, 'AAAAoAAB9ADNCW2bfRddfoafny0sbRjsgTgxKvgCW+ubK1JW', 't', 'f', NULL, '', '', '', 0, 'dlc3', 'test.dlc.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 3!', '', 'Test', '', 'DLC 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('fbf89828-804d-412d-9032-1933e96100a1', 20622, 20154, '2021-05-30 13:05:31.282', '2021-05-30 13:05:31.282', 'f', 20623, 'AAAAoAAB9AANfUMSQBXJILn1ayfDI0GrNlyHxhJcXgW8qlh6', 't', 'f', NULL, '', '', '', 0, 'dlc4', 'test.dlc.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 4!', '', 'Test', '', 'DLC 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('cf105adc-b0b4-488f-9df5-2c366ffe1b08', 20628, 20154, '2021-05-30 13:05:31.654', '2021-05-30 13:05:31.654', 'f', 20629, 'AAAAoAAB9ADo4jQeniKIeKx5Zy+EFSipZJXFiq79+O64pBDA', 't', 'f', NULL, '', '', '', 0, 'dlc5', 'test.dlc.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 5!', '', 'Test', '', 'DLC 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('c8aa4680-1d5e-4957-8b8b-221827c24220', 20634, 20154, '2021-05-30 13:05:32.046', '2021-05-30 13:05:32.046', 'f', 20635, 'AAAAoAAB9ACQvufPHd0WSJ4vXICIqyMU6NwwnHCzrMAYpZiO', 't', 'f', NULL, '', '', '', 0, 'dlc6', 'test.dlc.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 6!', '', 'Test', '', 'DLC 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('a9797cc1-66bf-4888-98e4-e163a2934036', 20640, 20154, '2021-05-30 13:05:32.448', '2021-05-30 13:05:32.448', 'f', 20641, 'AAAAoAAB9AB8zT4+eCQa0CwLye0XkBlmRKSVy51WicN3qrfF', 't', 'f', NULL, '', '', '', 0, 'dlc7', 'test.dlc.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 7!', '', 'Test', '', 'DLC 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('f9914996-c9c0-4132-ac58-3b19f61431b9', 20646, 20154, '2021-05-30 13:05:32.834', '2021-05-30 13:05:32.834', 'f', 20647, 'AAAAoAAB9ACjjFn47BVwg9yKNDXlFfH5HyfHC3YOiwo/+/XH', 't', 'f', NULL, '', '', '', 0, 'dlc8', 'test.dlc.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 8!', '', 'Test', '', 'DLC 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('c39bb9bb-9008-4462-b30f-b93e37b136e5', 20652, 20154, '2021-05-30 13:05:33.203', '2021-05-30 13:05:33.203', 'f', 20653, 'AAAAoAAB9ACo7+DBFj3VFXTkVl5TirFBwFFLNMbprbEmH7W4', 't', 'f', NULL, '', '', '', 0, 'dlc9', 'test.dlc.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 9!', '', 'Test', '', 'DLC 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('053489dc-9288-4f63-98a1-5be909aa63a7', 20658, 20154, '2021-05-30 13:05:33.609', '2021-05-30 13:05:33.609', 'f', 20659, 'AAAAoAAB9ABNuRuH/bQnXrwwrVWGNQuCluqgwHqqwxP3xxlB', 't', 'f', NULL, '', '', '', 0, 'dlc10', 'test.dlc.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test DLC 10!', '', 'Test', '', 'DLC 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('f2daa511-44a3-4970-855f-61d69fd8c0f4', 20672, 20154, '2021-05-30 13:05:34.099', '2021-05-30 13:05:34.099', 'f', 20673, 'AAAAoAAB9ADFl3xHoGDC3N7nWerf5toB7PgOQIsgO1JP+VlP', 't', 'f', NULL, '', '', '', 0, 'fra1', 'test.fra.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 1!', '', 'Test', '', 'FRA 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('2e2cbb90-fea9-49dc-813a-edd05a2b312a', 20678, 20154, '2021-05-30 13:05:34.519', '2021-05-30 13:05:34.519', 'f', 20679, 'AAAAoAAB9AC6h/hcVDwbHcQ6j+D+rV9uPxPKk3i4RGI2hHZE', 't', 'f', NULL, '', '', '', 0, 'fra2', 'test.fra.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 2!', '', 'Test', '', 'FRA 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('8edeb863-9981-4925-951f-b7b77acfda21', 20684, 20154, '2021-05-30 13:05:34.957', '2021-05-30 13:05:34.957', 'f', 20685, 'AAAAoAAB9ABWr8Qn/3oEOmWVfkX/hrmyeZgHVT/qGa/Cn57i', 't', 'f', NULL, '', '', '', 0, 'fra3', 'test.fra.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 3!', '', 'Test', '', 'FRA 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('5233e060-eb0c-414d-9ea8-7e4b3bac05dc', 20690, 20154, '2021-05-30 13:05:35.303', '2021-05-30 13:05:35.303', 'f', 20691, 'AAAAoAAB9ABKnQB+LYMkVXq89jDnD6JSF9rW21JB4kt+4fn9', 't', 'f', NULL, '', '', '', 0, 'fra4', 'test.fra.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 4!', '', 'Test', '', 'FRA 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('8732a943-a7ac-4f93-8c11-468e1a837cf0', 20824, 20154, '2021-05-30 13:05:43.563', '2021-05-30 13:05:43.563', 'f', 20825, 'AAAAoAAB9AAHDLT7yjIy1rB0aPRYesosLrz1CveDDARJY1ey', 't', 'f', NULL, '', '', '', 0, 'kul5', 'test.kul.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 5!', '', 'Test', '', 'KUL 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('ce4cbacd-7ba0-4517-8a84-c8365d447710', 20696, 20154, '2021-05-30 13:05:35.675', '2021-05-30 13:05:35.675', 'f', 20697, 'AAAAoAAB9ACidJWkftFOMPbcnZK97+kpFyltrPD4voGxlhqG', 't', 'f', NULL, '', '', '', 0, 'fra5', 'test.fra.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 5!', '', 'Test', '', 'FRA 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('02bd4aae-5eba-416d-8b6c-0db833774630', 20754, 20154, '2021-05-30 13:05:39.242', '2021-05-30 13:05:39.242', 'f', 20755, 'AAAAoAAB9ADStTFwPM1dBEUB1o+ua8rSmgmCp8vZIPNzxOe3', 't', 'f', NULL, '', '', '', 0, 'hkg4', 'test.hkg.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 4!', '', 'Test', '', 'HKG 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('5ca4a620-1286-4828-8380-e3dc175e702c', 20760, 20154, '2021-05-30 13:05:39.63', '2021-05-30 13:05:39.63', 'f', 20761, 'AAAAoAAB9AAZee0jnz1bZTdLlxyumB7BEaWgn2ro8CHd95Rw', 't', 'f', NULL, '', '', '', 0, 'hkg5', 'test.hkg.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 5!', '', 'Test', '', 'HKG 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('ac317944-f130-4c4a-acf9-ec2165121f95', 20830, 20154, '2021-05-30 13:05:44.023', '2021-05-30 13:05:44.023', 'f', 20831, 'AAAAoAAB9ABi/+l2hpdBPT5P8W88wcC2AqwjuSrNE/7Q5OlY', 't', 'f', NULL, '', '', '', 0, 'kul6', 'test.kul.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 6!', '', 'Test', '', 'KUL 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('e36f8c3e-3140-4d99-b2dc-f09c7350c2e5', 20766, 20154, '2021-05-30 13:05:39.989', '2021-05-30 13:05:39.989', 'f', 20767, 'AAAAoAAB9AAsCDj6+sTqGKBmvdHqFqRuMqlEz0UD/F6/YUiI', 't', 'f', NULL, '', '', '', 0, 'hkg6', 'test.hkg.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 6!', '', 'Test', '', 'HKG 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('23834c2d-2b97-400e-97d0-81116c54a60a', 20772, 20154, '2021-05-30 13:05:40.343', '2021-05-30 13:05:40.343', 'f', 20773, 'AAAAoAAB9ACeMRx8a3bKxgSROrz8AoNyANdcPckfbd7Vu2Vm', 't', 'f', NULL, '', '', '', 0, 'hkg7', 'test.hkg.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 7!', '', 'Test', '', 'HKG 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('829e15a9-e01e-427d-acdb-cca6d0ff3b75', 20778, 20154, '2021-05-30 13:05:40.694', '2021-05-30 13:05:40.694', 'f', 20779, 'AAAAoAAB9ADvfOQn4O+E6qhB/CE3GkMdiYKtAZVYxmapNg6i', 't', 'f', NULL, '', '', '', 0, 'hkg8', 'test.hkg.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 8!', '', 'Test', '', 'HKG 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('97a7eb3d-2c69-45e1-a030-a3f4281c2feb', 20842, 20154, '2021-05-30 13:05:44.887', '2021-05-30 13:05:44.887', 'f', 20843, 'AAAAoAAB9AAEIQjilfzEh0m+Ef+ytqbBLLTj5DUBiXEYgUNM', 't', 'f', NULL, '', '', '', 0, 'kul8', 'test.kul.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 8!', '', 'Test', '', 'KUL 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('24625f82-f7be-4834-8a36-44d422382c03', 20784, 20154, '2021-05-30 13:05:41.048', '2021-05-30 13:05:41.048', 'f', 20785, 'AAAAoAAB9ABurWFuj/7vT468jgWJSJUqPMwNSJxgMS1qk+sd', 't', 'f', NULL, '', '', '', 0, 'hkg9', 'test.hkg.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 9!', '', 'Test', '', 'HKG 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('375b451a-a4ca-42f6-aef1-e2f05dde5086', 20812, 20154, '2021-05-30 13:05:42.64', '2021-05-30 13:05:42.64', 'f', 20813, 'AAAAoAAB9ABFJw3FZoTTlnjUvMBOfFaW1uAWzQ1RhxMcPYdT', 't', 'f', NULL, '', '', '', 0, 'kul3', 'test.kul.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 3!', '', 'Test', '', 'KUL 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('30c48d62-a9a4-465d-85b7-05f59ec3137d', 20818, 20154, '2021-05-30 13:05:43.074', '2021-05-30 13:05:43.074', 'f', 20819, 'AAAAoAAB9ABJuCsT4iRlKUOVoQr60JlzDfZotNGZ7xoHYINF', 't', 'f', NULL, '', '', '', 0, 'kul4', 'test.kul.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 4!', '', 'Test', '', 'KUL 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('b6353999-3b3f-45fa-a126-0be6d86a49de', 20848, 20154, '2021-05-30 13:05:45.285', '2021-05-30 13:05:45.285', 'f', 20849, 'AAAAoAAB9AB24R33Eud7yvfceaRObC6Au9iY6XtG1a/GX4+l', 't', 'f', NULL, '', '', '', 0, 'kul9', 'test.kul.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 9!', '', 'Test', '', 'KUL 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('b70141e4-801a-4f72-80a5-f3b738341af9', 20854, 20154, '2021-05-30 13:05:45.644', '2021-05-30 13:05:45.644', 'f', 20855, 'AAAAoAAB9AD79TkuCF1EOQKXQkZTxM6nCTtl3ekIh9aMbCnF', 't', 'f', NULL, '', '', '', 0, 'kul10', 'test.kul.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 10!', '', 'Test', '', 'KUL 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('0010c0b8-4a31-476a-b908-88c1bccc0c09', 20864, 20154, '2021-05-30 13:05:46.066', '2021-05-30 13:05:46.066', 'f', 20865, 'AAAAoAAB9AAjzqR33DJ45gUZtDbj+BCq4A/uOIm3QOXocBWM', 't', 'f', NULL, '', '', '', 0, 'lax1', 'test.lax.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 1!', '', 'Test', '', 'LAX 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0);
INSERT INTO "public"."user_" ("uuid_", "userid", "companyid", "createdate", "modifieddate", "defaultuser", "contactid", "password_", "passwordencrypted", "passwordreset", "passwordmodifieddate", "digest", "reminderqueryquestion", "reminderqueryanswer", "gracelogincount", "screenname", "emailaddress", "facebookid", "ldapserverid", "openid", "portraitid", "languageid", "timezoneid", "greeting", "comments", "firstname", "middlename", "lastname", "jobtitle", "logindate", "loginip", "lastlogindate", "lastloginip", "lastfailedlogindate", "failedloginattempts", "lockout", "lockoutdate", "agreedtotermsofuse", "emailaddressverified", "status") VALUES
('c87a687a-ebef-4390-a049-500e7fe732b7', 20870, 20154, '2021-05-30 13:05:46.436', '2021-05-30 13:05:46.436', 'f', 20871, 'AAAAoAAB9AAs7KWym2sdEj7oM8hnaedJWvFyb/SbQak9/244', 't', 'f', NULL, '', '', '', 0, 'lax2', 'test.lax.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 2!', '', 'Test', '', 'LAX 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('8023aa89-a692-43db-aa02-141aa1bfa043', 20876, 20154, '2021-05-30 13:05:46.831', '2021-05-30 13:05:46.831', 'f', 20877, 'AAAAoAAB9AB/jrLXHdn0uCbjTlXuyCAQ1TCKW4ThtjPnJRDJ', 't', 'f', NULL, '', '', '', 0, 'lax3', 'test.lax.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 3!', '', 'Test', '', 'LAX 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('8e0c3441-ff8f-4013-a1be-6b7356027ebb', 20882, 20154, '2021-05-30 13:05:47.182', '2021-05-30 13:05:47.182', 'f', 20883, 'AAAAoAAB9AD+xuLO+YkL86zPdqdZ7ex7M+fuxGUBmp5L6AW2', 't', 'f', NULL, '', '', '', 0, 'lax4', 'test.lax.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 4!', '', 'Test', '', 'LAX 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('5e676ebb-8a30-40e1-b905-4c5c8e62f688', 20888, 20154, '2021-05-30 13:05:47.539', '2021-05-30 13:05:47.539', 'f', 20889, 'AAAAoAAB9AAgiCEDkSDtXsn5VX2jS8puDmPL9rWH2KszvLOg', 't', 'f', NULL, '', '', '', 0, 'lax5', 'test.lax.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 5!', '', 'Test', '', 'LAX 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('130215b5-e1c6-4922-9524-1d7df5c7f1f0', 20900, 20154, '2021-05-30 13:05:48.264', '2021-05-30 13:05:48.264', 'f', 20901, 'AAAAoAAB9AAcM2oZBU4PBdPWVOCArTpJJR+c5lvnFo5FoKNJ', 't', 'f', NULL, '', '', '', 0, 'lax7', 'test.lax.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 7!', '', 'Test', '', 'LAX 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('c475dd96-25b0-4040-9701-1b8a03ea4a75', 20940, 20154, '2021-05-30 13:05:50.663', '2021-05-30 13:05:50.663', 'f', 20941, 'AAAAoAAB9AAJXJDEcQzmHGO2T3U/zqFUJ4nEj/1Z7zWTOAEd', 't', 'f', NULL, '', '', '', 0, 'mad3', 'test.mad.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 3!', '', 'Test', '', 'MAD 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('5f010eba-9b0a-4b31-9b45-05b4799cbe45', 21072, 20154, '2021-05-30 13:05:57.6', '2021-05-30 13:05:57.6', 'f', 21073, 'AAAAoAAB9ACicHNAEBpTgW4ne4VHIaJbmco95kjsJvS3tXyn', 't', 'f', NULL, '', '', '', 0, 'gru3', 'test.gru.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 3!', '', 'Test', '', 'GRU 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('21a39890-050e-4c37-8d08-fa623cd9928b', 21078, 20154, '2021-05-30 13:05:58.03', '2021-05-30 13:05:58.03', 'f', 21079, 'AAAAoAAB9AArTIVtk6s+NrIdg7NBcYGpsz2URXpRoNNeop5b', 't', 'f', NULL, '', '', '', 0, 'gru4', 'test.gru.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 4!', '', 'Test', '', 'GRU 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('39cb56d1-b2d6-4b7e-8aed-709a26f364af', 20702, 20154, '2021-05-30 13:05:36.038', '2021-05-30 13:05:36.038', 'f', 20703, 'AAAAoAAB9AC1PQyxLoe0dyGk9liDE6cc0mNI++s1JmKooFRK', 't', 'f', NULL, '', '', '', 0, 'fra6', 'test.fra.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 6!', '', 'Test', '', 'FRA 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('6e728134-6094-4c5b-8058-3580d8af6c94', 20708, 20154, '2021-05-30 13:05:36.451', '2021-05-30 13:05:36.451', 'f', 20709, 'AAAAoAAB9ABhe7b90Sgphb9EePQto/btOayT87kBOCWvk3OF', 't', 'f', NULL, '', '', '', 0, 'fra7', 'test.fra.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 7!', '', 'Test', '', 'FRA 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('48eefdbd-28e3-4172-8d82-9b40143402b2', 20726, 20154, '2021-05-30 13:05:37.566', '2021-05-30 13:05:37.566', 'f', 20727, 'AAAAoAAB9AAjBGx3I6x0BRxBNoK1ZDN5NDGLGojjBCW7bpv1', 't', 'f', NULL, '', '', '', 0, 'fra10', 'test.fra.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 10!', '', 'Test', '', 'FRA 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('c4a833b8-67f2-4af2-823b-0097e0a91872', 20836, 20154, '2021-05-30 13:05:44.443', '2021-05-30 13:05:44.443', 'f', 20837, 'AAAAoAAB9ACsbF8TRhnSLkJP49hwEt8gYkDUaFtUJ8mGXxqD', 't', 'f', NULL, '', '', '', 0, 'kul7', 'test.kul.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 7!', '', 'Test', '', 'KUL 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('9eac71dc-051d-4f15-8eac-17bd2fe0feed', 20800, 20154, '2021-05-30 13:05:41.79', '2021-05-30 13:05:41.79', 'f', 20801, 'AAAAoAAB9AD0PC8jbBy8tIA0Is8afM6pedETLfQQWEEL13Xe', 't', 'f', NULL, '', '', '', 0, 'kul1', 'test.kul.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 1!', '', 'Test', '', 'KUL 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('29db2fbe-27bb-4989-bb99-ee3f8d3fcf8a', 20894, 20154, '2021-05-30 13:05:47.898', '2021-05-30 13:05:47.898', 'f', 20895, 'AAAAoAAB9ABmyDYRsMyiXNDSfDWIiPfsgTZMLBY2/rhjG9Io', 't', 'f', NULL, '', '', '', 0, 'lax6', 'test.lax.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 6!', '', 'Test', '', 'LAX 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('56780201-147f-47b5-b2cb-516eaf25ef50', 20906, 20154, '2021-05-30 13:05:48.688', '2021-05-30 13:05:48.688', 'f', 20907, 'AAAAoAAB9ABspvsPWT+NUSq8z80F8mJMC4zDDtgVWJe00XK5', 't', 'f', NULL, '', '', '', 0, 'lax8', 'test.lax.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 8!', '', 'Test', '', 'LAX 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('9d5c4818-bf45-40e7-9095-d041c134e2a9', 20912, 20154, '2021-05-30 13:05:49.069', '2021-05-30 13:05:49.069', 'f', 20913, 'AAAAoAAB9ABUR+YTM8nz7fFChXrYYxb9MKVzSE7yN1wm59ct', 't', 'f', NULL, '', '', '', 0, 'lax9', 'test.lax.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 9!', '', 'Test', '', 'LAX 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('eb843271-8d3c-4826-a76a-96581f2f1da9', 20918, 20154, '2021-05-30 13:05:49.489', '2021-05-30 13:05:49.489', 'f', 20919, 'AAAAoAAB9ADBguQLGHg2VbblNxYDALpPyC0zPJAm3N5f8LZS', 't', 'f', NULL, '', '', '', 0, 'lax10', 'test.lax.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test LAX 10!', '', 'Test', '', 'LAX 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('400bfc3f-ccf3-460d-992e-175bf4f6d1ca', 20928, 20154, '2021-05-30 13:05:49.928', '2021-05-30 13:05:49.928', 'f', 20929, 'AAAAoAAB9ADdRIEosD4r1L4la8Tnw7P2nB829MXoOYPTLl92', 't', 'f', NULL, '', '', '', 0, 'mad1', 'test.mad.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 1!', '', 'Test', '', 'MAD 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('aff83b7e-3da5-4af5-82e6-e8a95016fb04', 20934, 20154, '2021-05-30 13:05:50.32', '2021-05-30 13:05:50.32', 'f', 20935, 'AAAAoAAB9ACb04CKapWDCQmPaGoA9sO3bOyC76aR7kjEes2r', 't', 'f', NULL, '', '', '', 0, 'mad2', 'test.mad.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 2!', '', 'Test', '', 'MAD 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('352388aa-1014-4a19-820e-923c551b53cf', 21014, 20154, '2021-05-30 13:05:54.524', '2021-05-30 13:05:54.524', 'f', 21015, 'AAAAoAAB9ACtR+k/ZvMG1soSc8olwn98ltxTUQBJo/da+aH0', 't', 'f', NULL, '', '', '', 0, 'nyc4', 'test.nyc.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 4!', '', 'Test', '', 'NYC 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('f8bc0387-ea75-41d6-a1a2-5e67a780a05f', 21020, 20154, '2021-05-30 13:05:54.909', '2021-05-30 13:05:54.909', 'f', 21021, 'AAAAoAAB9ADZB29PkzjrF3wcb/ahZ+8K5s/tK5kKLFlszRMZ', 't', 'f', NULL, '', '', '', 0, 'nyc5', 'test.nyc.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 5!', '', 'Test', '', 'NYC 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('181699af-b3ce-479f-bc12-eece67ce92ce', 21026, 20154, '2021-05-30 13:05:55.266', '2021-05-30 13:05:55.266', 'f', 21027, 'AAAAoAAB9ACIaU2GlHSW/TJ6HoSu4lhlMmcerzztRxzTbXv9', 't', 'f', NULL, '', '', '', 0, 'nyc6', 'test.nyc.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 6!', '', 'Test', '', 'NYC 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('fd12c8ad-bdf5-422b-90d9-765cda94cdda', 21032, 20154, '2021-05-30 13:05:55.587', '2021-05-30 13:05:55.587', 'f', 21033, 'AAAAoAAB9ACC9w78ziua2aWVhdcYoT5NrqX397i3qDMc3ijL', 't', 'f', NULL, '', '', '', 0, 'nyc7', 'test.nyc.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 7!', '', 'Test', '', 'NYC 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('151ec2af-dbd0-4b8e-a054-07443c77c1c9', 21038, 20154, '2021-05-30 13:05:55.904', '2021-05-30 13:05:55.904', 'f', 21039, 'AAAAoAAB9ADC1mVETDM+dhiPrkf3lTjISapHj6NR3v12p343', 't', 'f', NULL, '', '', '', 0, 'nyc8', 'test.nyc.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 8!', '', 'Test', '', 'NYC 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('34a9e11a-0160-4b67-be8b-76f79511b14f', 21044, 20154, '2021-05-30 13:05:56.225', '2021-05-30 13:05:56.225', 'f', 21045, 'AAAAoAAB9AAKlNT304HWoalVuff8zj09xwUT2ral4YiPFxOM', 't', 'f', NULL, '', '', '', 0, 'nyc9', 'test.nyc.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 9!', '', 'Test', '', 'NYC 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('0f094d18-8a8f-4949-84b5-5c7536af1e20', 21050, 20154, '2021-05-30 13:05:56.55', '2021-05-30 13:05:56.55', 'f', 21051, 'AAAAoAAB9AC0vr/QPqmhmkwJ9d4qNdi3opsAbKe50KdchuPZ', 't', 'f', NULL, '', '', '', 0, 'nyc10', 'test.nyc.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 10!', '', 'Test', '', 'NYC 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('a1c79af5-350d-4ec4-9666-1d56c1669e66', 21060, 20154, '2021-05-30 13:05:56.905', '2021-05-30 13:05:56.905', 'f', 21061, 'AAAAoAAB9ACwlNDF4g5XvuTnwg0wD3RpGQjtvvtlLDFu8CS4', 't', 'f', NULL, '', '', '', 0, 'gru1', 'test.gru.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 1!', '', 'Test', '', 'GRU 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('a5b7ed5c-6f9d-4a91-a842-e7e4dfffd7c5', 21066, 20154, '2021-05-30 13:05:57.245', '2021-05-30 13:05:57.245', 'f', 21067, 'AAAAoAAB9ABSwn5jrNq4QRpi0JftJpABhUqclWM8TnW2sV2Q', 't', 'f', NULL, '', '', '', 0, 'gru2', 'test.gru.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 2!', '', 'Test', '', 'GRU 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('6accdd98-f4b1-411d-89bb-02a53036e34e', 21084, 20154, '2021-05-30 13:05:58.393', '2021-05-30 13:05:58.393', 'f', 21085, 'AAAAoAAB9AAIeSXncIixvCXcFZTv2IQ1NvwPhuEwKrtbyfsA', 't', 'f', NULL, '', '', '', 0, 'gru5', 'test.gru.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 5!', '', 'Test', '', 'GRU 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('923b8ebc-cdf3-4d39-bae3-ce6b00368cd3', 21090, 20154, '2021-05-30 13:05:58.734', '2021-05-30 13:05:58.734', 'f', 21091, 'AAAAoAAB9ABLP62dNKEnLDOXLaxYDCOwi5obPQqXtYJ6Izdh', 't', 'f', NULL, '', '', '', 0, 'gru6', 'test.gru.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 6!', '', 'Test', '', 'GRU 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('4808d1db-f957-4cfa-b668-1d19f0322a11', 21096, 20154, '2021-05-30 13:05:59.046', '2021-05-30 13:05:59.046', 'f', 21097, 'AAAAoAAB9ABHG9r9wwTObdTJtvba9Mi3cEdBaDCHc25EFh9t', 't', 'f', NULL, '', '', '', 0, 'gru7', 'test.gru.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 7!', '', 'Test', '', 'GRU 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('5b31a024-6b3d-46f7-af08-79ffb894475c', 21102, 20154, '2021-05-30 13:05:59.37', '2021-05-30 13:05:59.37', 'f', 21103, 'AAAAoAAB9ADNr2flW6r3FsspoNzcqFg1/60gDSH5h4LTM1qg', 't', 'f', NULL, '', '', '', 0, 'gru8', 'test.gru.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 8!', '', 'Test', '', 'GRU 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('e4d4d906-f1db-45de-af25-40e6b08d5467', 20714, 20154, '2021-05-30 13:05:36.857', '2021-05-30 13:05:36.857', 'f', 20715, 'AAAAoAAB9AAcjh3bG9qoaBUytCWTGy9iEhLtTLD0LhDpuY27', 't', 'f', NULL, '', '', '', 0, 'fra8', 'test.fra.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 8!', '', 'Test', '', 'FRA 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('9b50c915-ee41-4f38-aef1-6abbd05e7b03', 20720, 20154, '2021-05-30 13:05:37.199', '2021-05-30 13:05:37.199', 'f', 20721, 'AAAAoAAB9ABJQhbaemGPPvKCvWWjmPuAW7DKrgs+Hs4BiIWu', 't', 'f', NULL, '', '', '', 0, 'fra9', 'test.fra.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test FRA 9!', '', 'Test', '', 'FRA 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('bd18cfef-780f-4119-9d9c-074d025763b2', 20736, 20154, '2021-05-30 13:05:38.107', '2021-05-30 13:05:38.107', 'f', 20737, 'AAAAoAAB9ADy+k54FrwDBKaQtMtT77WRtvtRXxwwTVvNcTQy', 't', 'f', NULL, '', '', '', 0, 'hkg1', 'test.hkg.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 1!', '', 'Test', '', 'HKG 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('f2d23089-47ae-4db9-821a-7a0026d712dd', 20946, 20154, '2021-05-30 13:05:51.012', '2021-05-30 13:05:51.012', 'f', 20947, 'AAAAoAAB9ADFaegtprFCWR590I+syr7ZpgVwqqA0b+EHP63C', 't', 'f', NULL, '', '', '', 0, 'mad4', 'test.mad.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 4!', '', 'Test', '', 'MAD 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('af130543-4be8-49de-80bc-9ccd325d2ac6', 20742, 20154, '2021-05-30 13:05:38.474', '2021-05-30 13:05:38.474', 'f', 20743, 'AAAAoAAB9ABHCKC8Bq/3cJ6K+YC7YDQFx2WJLhgJKujEw/vA', 't', 'f', NULL, '', '', '', 0, 'hkg2', 'test.hkg.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 2!', '', 'Test', '', 'HKG 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('f73e9544-957f-49df-a4fe-77b0200ed674', 20748, 20154, '2021-05-30 13:05:38.854', '2021-05-30 13:05:38.854', 'f', 20749, 'AAAAoAAB9ADE5rgJLlbwuLEsl0E+x0tSyeV5VYcE4JsL5Hu1', 't', 'f', NULL, '', '', '', 0, 'hkg3', 'test.hkg.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 3!', '', 'Test', '', 'HKG 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('4c5d9a19-1f5a-401f-b1fb-af0f5affde08', 20790, 20154, '2021-05-30 13:05:41.395', '2021-05-30 13:05:41.395', 'f', 20791, 'AAAAoAAB9ACDdAVnpFJLJQ4tiz/lClkGrDPqsCTqByNrfZor', 't', 'f', NULL, '', '', '', 0, 'hkg10', 'test.hkg.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test HKG 10!', '', 'Test', '', 'HKG 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('96c95dd2-e019-44dc-b1cf-a89b84275791', 20952, 20154, '2021-05-30 13:05:51.35', '2021-05-30 13:05:51.35', 'f', 20953, 'AAAAoAAB9ADHopnOUqpL9OLOZkKNvMM+cz45US5OQRnk4fC7', 't', 'f', NULL, '', '', '', 0, 'mad5', 'test.mad.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 5!', '', 'Test', '', 'MAD 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('c5d71cfd-a62c-480e-b8b1-de698787acb7', 20806, 20154, '2021-05-30 13:05:42.221', '2021-05-30 13:05:42.221', 'f', 20807, 'AAAAoAAB9ADo+hb7P4oGeEDnYfn2nLHWO9yBqryF8tExkVHI', 't', 'f', NULL, '', '', '', 0, 'kul2', 'test.kul.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test KUL 2!', '', 'Test', '', 'KUL 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('e0de2bb0-0516-41f8-b7a5-7faec1ebfdc4', 20958, 20154, '2021-05-30 13:05:51.764', '2021-05-30 13:05:51.764', 'f', 20959, 'AAAAoAAB9ABQGYFd8I5R2uuDL0LXeHwRz9l0FW0ejue4EGa+', 't', 'f', NULL, '', '', '', 0, 'mad6', 'test.mad.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 6!', '', 'Test', '', 'MAD 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('545c3c34-149a-4e91-b6d8-7039031f29d8', 20964, 20154, '2021-05-30 13:05:52.1', '2021-05-30 13:05:52.1', 'f', 20965, 'AAAAoAAB9AAkqKfRoEaFGg/gN5EsJA7wEjNa4nNbluxGV5W2', 't', 'f', NULL, '', '', '', 0, 'mad7', 'test.mad.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 7!', '', 'Test', '', 'MAD 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('47b690b4-12b8-47bd-a0f2-a3765fe56c95', 20970, 20154, '2021-05-30 13:05:52.457', '2021-05-30 13:05:52.457', 'f', 20971, 'AAAAoAAB9ADFB8+hAii5L9eyg1Z4Drm91KbZGGN+XLUZNAE1', 't', 'f', NULL, '', '', '', 0, 'mad8', 'test.mad.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 8!', '', 'Test', '', 'MAD 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('baacfaa7-883f-4217-9f1c-923e6970bb35', 20976, 20154, '2021-05-30 13:05:52.777', '2021-05-30 13:05:52.777', 'f', 20977, 'AAAAoAAB9ADW7iL0VoNWUPT/xJGHAFjxjRdGyrjfujbnHMnz', 't', 'f', NULL, '', '', '', 0, 'mad9', 'test.mad.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 9!', '', 'Test', '', 'MAD 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('405d221f-0ab6-407d-b21b-b236f9446671', 20982, 20154, '2021-05-30 13:05:53.102', '2021-05-30 13:05:53.102', 'f', 20983, 'AAAAoAAB9ADc2r33rFJFra/z04zN0cx3LofuewDUHshI3L+Z', 't', 'f', NULL, '', '', '', 0, 'mad10', 'test.mad.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test MAD 10!', '', 'Test', '', 'MAD 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('907510fa-da76-4d22-a60d-3746fb5fb5db', 20996, 20154, '2021-05-30 13:05:53.516', '2021-05-30 13:05:53.516', 'f', 20997, 'AAAAoAAB9ABh1gcL9mD1kuRYAEW6j4FifWwbcItWvCYnbiik', 't', 'f', NULL, '', '', '', 0, 'nyc1', 'test.nyc.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 1!', '', 'Test', '', 'NYC 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('8ec5051a-e7c3-4e73-9f39-96443a721fbe', 21002, 20154, '2021-05-30 13:05:53.835', '2021-05-30 13:05:53.835', 'f', 21003, 'AAAAoAAB9AA4iJtRwLugA8kHTe8aOAijkn0WENy3SSIUKh/a', 't', 'f', NULL, '', '', '', 0, 'nyc2', 'test.nyc.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 2!', '', 'Test', '', 'NYC 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('c99e0355-1a13-4f49-b755-7ac97fd7123e', 21008, 20154, '2021-05-30 13:05:54.149', '2021-05-30 13:05:54.149', 'f', 21009, 'AAAAoAAB9AA8kgNOgFEktUZtJ06D9V3gkMdG9ZtZIdfRpBK/', 't', 'f', NULL, '', '', '', 0, 'nyc3', 'test.nyc.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test NYC 3!', '', 'Test', '', 'NYC 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('ee24b6c5-b69d-4598-91f8-1620cc685bec', 21108, 20154, '2021-05-30 13:05:59.7', '2021-05-30 13:05:59.7', 'f', 21109, 'AAAAoAAB9ACzjAZBXIKgiwb/JP0YnDuG5cLZZePrZptBhkSY', 't', 'f', NULL, '', '', '', 0, 'gru9', 'test.gru.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 9!', '', 'Test', '', 'GRU 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('4d2b31a6-85c4-470f-9e56-edfb2e784d17', 21114, 20154, '2021-05-30 13:06:00.018', '2021-05-30 13:06:00.018', 'f', 21115, 'AAAAoAAB9ABCbhLb+7NMCCI7+/HVErDokJU9MfR5BM1SW3XI', 't', 'f', NULL, '', '', '', 0, 'gru10', 'test.gru.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test GRU 10!', '', 'Test', '', 'GRU 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('83a20ef6-b866-432c-8954-8de96801eebd', 21128, 20154, '2021-05-30 13:06:00.452', '2021-05-30 13:06:00.452', 'f', 21129, 'AAAAoAAB9AAtYemYQPQTkOl1JVK2lLBiqq1oVmZaEYwPbcTe', 't', 'f', NULL, '', '', '', 0, 'sfo1', 'test.sfo.1@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 1!', '', 'Test', '', 'SFO 1', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('b36facbb-dcba-49bc-974b-5b4f7cc65f62', 21134, 20154, '2021-05-30 13:06:00.79', '2021-05-30 13:06:00.79', 'f', 21135, 'AAAAoAAB9AB+N7DyGU7NHLecYcPLYTkFxN/onNSdhMcuHmTA', 't', 'f', NULL, '', '', '', 0, 'sfo2', 'test.sfo.2@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 2!', '', 'Test', '', 'SFO 2', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('4fd31f5d-6c71-481c-aedd-5496f79573c8', 21140, 20154, '2021-05-30 13:06:01.11', '2021-05-30 13:06:01.11', 'f', 21141, 'AAAAoAAB9ABpDV/wcp6QCVY3iqMdSOUiGuIsnXn2dmA20fnW', 't', 'f', NULL, '', '', '', 0, 'sfo3', 'test.sfo.3@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 3!', '', 'Test', '', 'SFO 3', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('261aacf0-ce16-4615-a895-3f7299a2e78b', 21146, 20154, '2021-05-30 13:06:01.414', '2021-05-30 13:06:01.414', 'f', 21147, 'AAAAoAAB9AB6g562j8ybRcVt3hrVFpbgPa2ZUoEDp4X56m0v', 't', 'f', NULL, '', '', '', 0, 'sfo4', 'test.sfo.4@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 4!', '', 'Test', '', 'SFO 4', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('11017dc4-f5da-4aaf-af33-a481f8fabf37', 21152, 20154, '2021-05-30 13:06:01.709', '2021-05-30 13:06:01.709', 'f', 21153, 'AAAAoAAB9AB3isuWYYhupREh3QrTVlMABwZgknzcuc62k+Mp', 't', 'f', NULL, '', '', '', 0, 'sfo5', 'test.sfo.5@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 5!', '', 'Test', '', 'SFO 5', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('afedfc25-a108-4248-afd3-bc9aeafd2b6c', 21158, 20154, '2021-05-30 13:06:02.04', '2021-05-30 13:06:02.04', 'f', 21159, 'AAAAoAAB9AAOxik//n/9Z5v80I40QAPZYrsonx/SsVQI+iPH', 't', 'f', NULL, '', '', '', 0, 'sfo6', 'test.sfo.6@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 6!', '', 'Test', '', 'SFO 6', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('0d6840e8-7a5d-425c-a1a4-f0be59ac1989', 20198, 20154, '2021-05-30 13:04:23.819', '2021-05-30 13:04:36.533', 'f', 20200, 'AAAAoAAB9ABLRrL6byDBlxpC5iffMDYrfSCsKqzJ28DAwf4l', 't', 'f', NULL, 'e5d86c6f3672e52795891c3597f20de0,2807c2fb6170beadb14da631fdbd9814,143064261a368f38131b169fa505b121', 'what-is-your-father''s-middle-name', 'test', 0, 'joebloggs', 'test@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Joe Bloggs!', '', 'Joe', '', 'Bloggs', '', '2021-05-30 15:59:08.963', '127.0.0.1', '2021-05-30 15:55:35.499', '127.0.0.1', NULL, 0, 'f', NULL, 't', 't', 0),
('6057633f-56b8-4e35-a231-f473a9bd7e6b', 21182, 20154, '2021-05-30 13:06:03.286', '2021-05-30 13:06:03.286', 'f', 21183, 'AAAAoAAB9AASRC9gNbeuoDHCR65oRl4OrquSJ9coTJP+pDwt', 't', 'f', NULL, '', '', '', 0, 'sfo10', 'test.sfo.10@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 10!', '', 'Test', '', 'SFO 10', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('b412ae7d-0493-4469-b093-929c77888371', 21164, 20154, '2021-05-30 13:06:02.353', '2021-05-30 13:06:02.353', 'f', 21165, 'AAAAoAAB9AB/TFJdDlQ7JcoFIPGlKfqkD52EbfbbRR4rmsoT', 't', 'f', NULL, '', '', '', 0, 'sfo7', 'test.sfo.7@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 7!', '', 'Test', '', 'SFO 7', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('c0c1c77d-be51-4fc9-a85c-9037864d3072', 21170, 20154, '2021-05-30 13:06:02.663', '2021-05-30 13:06:02.663', 'f', 21171, 'AAAAoAAB9ACseQM1gZm9Ai5DtxrVDuwXURkI2Q7NiO3imayY', 't', 'f', NULL, '', '', '', 0, 'sfo8', 'test.sfo.8@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 8!', '', 'Test', '', 'SFO 8', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0),
('39ebbf29-7897-4c50-87f4-0e4efa799f31', 21176, 20154, '2021-05-30 13:06:02.972', '2021-05-30 13:06:02.972', 'f', 21177, 'AAAAoAAB9AAHwHE0rfgbwn81LQoMmEFo8yWGEYXhb+OaiNt/', 't', 'f', NULL, '', '', '', 0, 'sfo9', 'test.sfo.9@liferay.com', 0, -1, '', 0, 'en_US', 'UTC', 'Welcome Test SFO 9!', '', 'Test', '', 'SFO 9', '', NULL, '', NULL, '', NULL, 0, 'f', NULL, 't', 'f', 0);





INSERT INTO "public"."usergrouprole" ("userid", "groupid", "roleid") VALUES
(20158, 20517, 20167);
INSERT INTO "public"."usergrouprole" ("userid", "groupid", "roleid") VALUES
(20158, 20533, 20167);
INSERT INTO "public"."usergrouprole" ("userid", "groupid", "roleid") VALUES
(20158, 20597, 20167);
INSERT INTO "public"."usergrouprole" ("userid", "groupid", "roleid") VALUES
(20158, 20601, 20167),
(20158, 20665, 20167),
(20158, 20669, 20167),
(20158, 20733, 20167),
(20158, 20797, 20167),
(20158, 20861, 20167),
(20158, 20925, 20167),
(20158, 20989, 20167),
(20158, 20993, 20167),
(20158, 21057, 20167),
(20158, 21121, 20167),
(20158, 21125, 20167),
(20158, 21189, 20167);









INSERT INTO "public"."users_groups" ("groupid", "userid") VALUES
(20181, 20198);
INSERT INTO "public"."users_groups" ("groupid", "userid") VALUES
(20533, 20536);
INSERT INTO "public"."users_groups" ("groupid", "userid") VALUES
(20533, 20542);
INSERT INTO "public"."users_groups" ("groupid", "userid") VALUES
(20533, 20548),
(20533, 20554),
(20533, 20560),
(20533, 20566),
(20533, 20572),
(20533, 20578),
(20533, 20584),
(20533, 20590),
(20601, 20604),
(20601, 20610),
(20601, 20616),
(20601, 20622),
(20601, 20628),
(20601, 20634),
(20601, 20640),
(20601, 20646),
(20601, 20652),
(20601, 20658),
(20669, 20672),
(20669, 20678),
(20669, 20684),
(20669, 20690),
(20669, 20696),
(20669, 20702),
(20669, 20708),
(20669, 20714),
(20669, 20720),
(20669, 20726),
(20733, 20736),
(20733, 20742),
(20733, 20748),
(20733, 20754),
(20733, 20760),
(20733, 20766),
(20733, 20772),
(20733, 20778),
(20733, 20784),
(20733, 20790),
(20797, 20800),
(20797, 20806),
(20797, 20812),
(20797, 20818),
(20797, 20824),
(20797, 20830),
(20797, 20836),
(20797, 20842),
(20797, 20848),
(20797, 20854),
(20861, 20864),
(20861, 20870),
(20861, 20876),
(20861, 20882),
(20861, 20888),
(20861, 20894),
(20861, 20900),
(20861, 20906),
(20861, 20912),
(20861, 20918),
(20925, 20928),
(20925, 20934),
(20925, 20940),
(20925, 20946),
(20925, 20952),
(20925, 20958),
(20925, 20964),
(20925, 20970),
(20925, 20976),
(20925, 20982),
(20993, 20996),
(20993, 21002),
(20993, 21008),
(20993, 21014),
(20993, 21020),
(20993, 21026),
(20993, 21032),
(20993, 21038),
(20993, 21044),
(20993, 21050),
(21057, 21060),
(21057, 21066),
(21057, 21072),
(21057, 21078),
(21057, 21084),
(21057, 21090),
(21057, 21096),
(21057, 21102),
(21057, 21108),
(21057, 21114),
(21125, 21128),
(21125, 21134),
(21125, 21140),
(21125, 21146),
(21125, 21152),
(21125, 21158),
(21125, 21164),
(21125, 21170),
(21125, 21176),
(21125, 21182);

INSERT INTO "public"."users_orgs" ("organizationid", "userid") VALUES
(20516, 20198);
INSERT INTO "public"."users_orgs" ("organizationid", "userid") VALUES
(20516, 20536);
INSERT INTO "public"."users_orgs" ("organizationid", "userid") VALUES
(20532, 20536);
INSERT INTO "public"."users_orgs" ("organizationid", "userid") VALUES
(20516, 20542),
(20532, 20542),
(20516, 20548),
(20532, 20548),
(20516, 20554),
(20532, 20554),
(20516, 20560),
(20532, 20560),
(20516, 20566),
(20532, 20566),
(20516, 20572),
(20532, 20572),
(20516, 20578),
(20532, 20578),
(20516, 20584),
(20532, 20584),
(20516, 20590),
(20532, 20590),
(20516, 20604),
(20600, 20604),
(20516, 20610),
(20600, 20610),
(20516, 20616),
(20600, 20616),
(20516, 20622),
(20600, 20622),
(20516, 20628),
(20600, 20628),
(20516, 20634),
(20600, 20634),
(20516, 20640),
(20600, 20640),
(20516, 20646),
(20600, 20646),
(20516, 20652),
(20600, 20652),
(20516, 20658),
(20600, 20658),
(20516, 20672),
(20668, 20672),
(20516, 20678),
(20668, 20678),
(20516, 20684),
(20668, 20684),
(20516, 20690),
(20668, 20690),
(20516, 20696),
(20668, 20696),
(20516, 20702),
(20668, 20702),
(20516, 20708),
(20668, 20708),
(20516, 20714),
(20668, 20714),
(20516, 20720),
(20668, 20720),
(20516, 20726),
(20668, 20726),
(20516, 20736),
(20732, 20736),
(20516, 20742),
(20732, 20742),
(20516, 20748),
(20732, 20748),
(20516, 20754),
(20732, 20754),
(20516, 20760),
(20732, 20760),
(20516, 20766),
(20732, 20766),
(20516, 20772),
(20732, 20772),
(20516, 20778),
(20732, 20778),
(20516, 20784),
(20732, 20784),
(20516, 20790),
(20732, 20790),
(20516, 20800),
(20796, 20800),
(20516, 20806),
(20796, 20806),
(20516, 20812),
(20796, 20812),
(20516, 20818),
(20796, 20818),
(20516, 20824),
(20796, 20824),
(20516, 20830),
(20796, 20830),
(20516, 20836),
(20796, 20836),
(20516, 20842),
(20796, 20842),
(20516, 20848),
(20796, 20848),
(20516, 20854),
(20796, 20854),
(20516, 20864),
(20860, 20864),
(20516, 20870),
(20860, 20870),
(20516, 20876),
(20860, 20876),
(20516, 20882),
(20860, 20882),
(20516, 20888),
(20860, 20888),
(20516, 20894),
(20860, 20894),
(20516, 20900),
(20860, 20900),
(20516, 20906),
(20860, 20906),
(20516, 20912),
(20860, 20912),
(20516, 20918),
(20860, 20918),
(20516, 20928),
(20924, 20928),
(20516, 20934),
(20924, 20934),
(20516, 20940),
(20924, 20940),
(20516, 20946),
(20924, 20946),
(20516, 20952),
(20924, 20952),
(20516, 20958),
(20924, 20958),
(20516, 20964),
(20924, 20964),
(20516, 20970),
(20924, 20970),
(20516, 20976),
(20924, 20976),
(20516, 20982),
(20924, 20982),
(20516, 20996),
(20992, 20996),
(20516, 21002),
(20992, 21002),
(20516, 21008),
(20992, 21008),
(20516, 21014),
(20992, 21014),
(20516, 21020),
(20992, 21020),
(20516, 21026),
(20992, 21026),
(20516, 21032),
(20992, 21032),
(20516, 21038),
(20992, 21038),
(20516, 21044),
(20992, 21044),
(20516, 21050),
(20992, 21050),
(20516, 21060),
(21056, 21060),
(20516, 21066),
(21056, 21066),
(20516, 21072),
(21056, 21072),
(20516, 21078),
(21056, 21078),
(20516, 21084),
(21056, 21084),
(20516, 21090),
(21056, 21090),
(20516, 21096),
(21056, 21096),
(20516, 21102),
(21056, 21102),
(20516, 21108),
(21056, 21108);
INSERT INTO "public"."users_orgs" ("organizationid", "userid") VALUES
(20516, 21114),
(21056, 21114),
(20516, 21128),
(21124, 21128),
(20516, 21134),
(21124, 21134),
(20516, 21140),
(21124, 21140),
(20516, 21146),
(21124, 21146),
(20516, 21152),
(21124, 21152),
(20516, 21158),
(21124, 21158),
(20516, 21182),
(21124, 21182),
(20516, 21164),
(21124, 21164),
(20516, 21170),
(21124, 21170),
(20516, 21176),
(21124, 21176);

INSERT INTO "public"."users_roles" ("roleid", "userid") VALUES
(20162, 20158);
INSERT INTO "public"."users_roles" ("roleid", "userid") VALUES
(20164, 20198);
INSERT INTO "public"."users_roles" ("roleid", "userid") VALUES
(20161, 20198);
INSERT INTO "public"."users_roles" ("roleid", "userid") VALUES
(20165, 20198),
(20164, 20536),
(20165, 20536),
(20164, 20542),
(20165, 20542),
(20164, 20548),
(20165, 20548),
(20164, 20554),
(20165, 20554),
(20164, 20560),
(20165, 20560),
(20164, 20566),
(20165, 20566),
(20164, 20572),
(20165, 20572),
(20164, 20578),
(20165, 20578),
(20164, 20584),
(20165, 20584),
(20164, 20590),
(20165, 20590),
(20164, 20604),
(20165, 20604),
(20164, 20610),
(20165, 20610),
(20164, 20616),
(20165, 20616),
(20164, 20622),
(20165, 20622),
(20164, 20628),
(20165, 20628),
(20164, 20634),
(20165, 20634),
(20164, 20640),
(20165, 20640),
(20164, 20646),
(20165, 20646),
(20164, 20652),
(20165, 20652),
(20164, 20658),
(20165, 20658),
(20164, 20672),
(20165, 20672),
(20164, 20678),
(20165, 20678),
(20164, 20684),
(20165, 20684),
(20164, 20690),
(20165, 20690),
(20164, 20696),
(20165, 20696),
(20164, 20702),
(20165, 20702),
(20164, 20708),
(20165, 20708),
(20164, 20714),
(20165, 20714),
(20164, 20720),
(20165, 20720),
(20164, 20726),
(20165, 20726),
(20164, 20736),
(20165, 20736),
(20164, 20742),
(20165, 20742),
(20164, 20748),
(20165, 20748),
(20164, 20754),
(20165, 20754),
(20164, 20760),
(20165, 20760),
(20164, 20766),
(20165, 20766),
(20164, 20772),
(20165, 20772),
(20164, 20778),
(20165, 20778),
(20164, 20784),
(20165, 20784),
(20164, 20790),
(20165, 20790),
(20164, 20800),
(20165, 20800),
(20164, 20806),
(20165, 20806),
(20164, 20812),
(20165, 20812),
(20164, 20818),
(20165, 20818),
(20164, 20824),
(20165, 20824),
(20164, 20830),
(20165, 20830),
(20164, 20836),
(20165, 20836),
(20164, 20842),
(20165, 20842),
(20164, 20848),
(20165, 20848),
(20164, 20854),
(20165, 20854),
(20164, 20864),
(20165, 20864),
(20164, 20870),
(20165, 20870),
(20164, 20876),
(20165, 20876),
(20164, 20882),
(20165, 20882),
(20164, 20888),
(20165, 20888),
(20164, 20894),
(20165, 20894),
(20164, 20900),
(20165, 20900),
(20164, 20906),
(20165, 20906),
(20164, 20912),
(20165, 20912),
(20164, 20918),
(20165, 20918),
(20164, 20928),
(20165, 20928),
(20164, 20934),
(20165, 20934),
(20164, 20940),
(20165, 20940),
(20164, 20946),
(20165, 20946),
(20164, 20952),
(20165, 20952),
(20164, 20958),
(20165, 20958),
(20164, 20964),
(20165, 20964),
(20164, 20970),
(20165, 20970),
(20164, 20976),
(20165, 20976),
(20164, 20982),
(20165, 20982),
(20164, 20996),
(20165, 20996),
(20164, 21002),
(20165, 21002),
(20164, 21008),
(20165, 21008),
(20164, 21014),
(20165, 21014),
(20164, 21020),
(20165, 21020),
(20164, 21026),
(20165, 21026),
(20164, 21032),
(20165, 21032),
(20164, 21038),
(20165, 21038),
(20164, 21044),
(20165, 21044),
(20164, 21050),
(20165, 21050),
(20164, 21060),
(20165, 21060),
(20164, 21066),
(20165, 21066),
(20164, 21072),
(20165, 21072),
(20164, 21078),
(20165, 21078),
(20164, 21084),
(20165, 21084),
(20164, 21090),
(20165, 21090),
(20164, 21096),
(20165, 21096),
(20164, 21102),
(20165, 21102),
(20164, 21108),
(20165, 21108),
(20164, 21114),
(20165, 21114),
(20164, 21128),
(20165, 21128),
(20164, 21134),
(20165, 21134);
INSERT INTO "public"."users_roles" ("roleid", "userid") VALUES
(20164, 21140),
(20165, 21140),
(20164, 21146),
(20165, 21146),
(20164, 21152),
(20165, 21152),
(20164, 21158),
(20165, 21158),
(20164, 21182),
(20165, 21182),
(20164, 21164),
(20165, 21164),
(20164, 21170),
(20165, 21170),
(20164, 21176),
(20165, 21176);









INSERT INTO "public"."virtualhost" ("virtualhostid", "companyid", "layoutsetid", "hostname") VALUES
(20157, 20154, 0, 'localhost');















