BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_notificacion_push" (
    "id" bigserial PRIMARY KEY,
    "idCliente" text NOT NULL,
    "mensaje" text NOT NULL,
    "idDispositivo" text NOT NULL,
    "enviadoEl" timestamp without time zone NOT NULL,
    "leidoEl" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_token_dispositivo" (
    "id" bigserial PRIMARY KEY,
    "token" text NOT NULL,
    "idCliente" text NOT NULL
);


--
-- MIGRATION VERSION FOR notify_pod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('notify_pod', '20241220185054158', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20241220185054158', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
