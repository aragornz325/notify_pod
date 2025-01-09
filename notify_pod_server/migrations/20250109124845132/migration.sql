BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_notifications_emails" (
    "id" bigserial PRIMARY KEY,
    "email" text NOT NULL,
    "subject" text NOT NULL,
    "body" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "emailStatus" bigint NOT NULL,
    "logoUuid" text NOT NULL,
    "sentAt" timestamp without time zone,
    "followUpAt" timestamp without time zone,
    "readOn" timestamp without time zone
);


--
-- MIGRATION VERSION FOR notify_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('notify_pod', '20250109124845132', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250109124845132', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
