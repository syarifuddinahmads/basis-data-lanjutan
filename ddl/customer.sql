CREATE TABLE "WO"."CUSTOMER"
( "ID_CUSTOMER" NUMBER(*,0) NOT NULL ENABLE,
"NAMA_CUSTOMER" VARCHAR2(150),
"NO_HP" NUMBER(16,0),
"ALAMAT" VARCHAR2(200),
CONSTRAINT "PK_CUSTOMER" PRIMARY KEY ("ID_CUSTOMER")
);