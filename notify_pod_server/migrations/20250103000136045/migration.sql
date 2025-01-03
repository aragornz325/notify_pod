BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "serverpod_devices_notify_pod" ALTER COLUMN "type" DROP NOT NULL;

--
-- MIGRATION VERSION FOR notify_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('notify_pod', '20250103000136045', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250103000136045', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
