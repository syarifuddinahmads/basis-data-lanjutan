CREATE TABLE "WO"."PAKET_WO"
( "ID_PAKET" NUMBER(*,0) NOT NULL ENABLE,
"NAMA_PAKET" VARCHAR2(200),
"HARGA_PAKET" NUMBER(11,2),
CONSTRAINT "PK_PAKET_WO" PRIMARY KEY ("ID_PAKET")
);