BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_notifications_by_topic_logs" (
    "id" bigserial PRIMARY KEY,
    "notificationId" bigint NOT NULL,
    "status" bigint NOT NULL,
    "error" text,
    "topic" text,
    "attemptAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "idx_logs_topic_notificationId" ON "serverpod_notifications_by_topic_logs" USING btree ("notificationId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_push_notificacion_by_topic" (
    "id" bigserial PRIMARY KEY,
    "title" text NOT NULL,
    "message" text NOT NULL,
    "topic" text NOT NULL,
    "sendAt" timestamp without time zone NOT NULL,
    "status" bigint NOT NULL,
    "readAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "idx_notifications_topic" ON "serverpod_push_notificacion_by_topic" USING btree ("topic");
CREATE INDEX "idx_notifications_topic_status" ON "serverpod_push_notificacion_by_topic" USING btree ("status");


--
-- MIGRATION VERSION FOR notify_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('notify_pod', '20241226031926049', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241226031926049', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
