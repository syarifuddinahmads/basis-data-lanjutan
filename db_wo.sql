--------------------------------------------------------
--  File created - Friday-July-10-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type TYPE_CUSTOMER
--------------------------------------------------------

  CREATE OR REPLACE TYPE "WO"."TYPE_CUSTOMER" AS OBJECT (
    id_customer INT,
    nama_customer varchar(150),
    no_hp number(16),
    alamat varchar(200)
);

/
--------------------------------------------------------
--  DDL for Type TYPE_DETAIL_PAKET
--------------------------------------------------------

  CREATE OR REPLACE TYPE "WO"."TYPE_DETAIL_PAKET" AS OBJECT (
    id_detail_paket     INT,
    id_paket            INT,
    nama_item_paket     VARCHAR(150),
    jumlah_item_paket   INT,
    paket_wo            type_paket_wo
)

/
--------------------------------------------------------
--  DDL for Type TYPE_PAKET_WO
--------------------------------------------------------

  CREATE OR REPLACE TYPE "WO"."TYPE_PAKET_WO" AS OBJECT 
(
    id_paket int,
    nama_paket  varchar(200),
    harga_paket decimal(11,2)
    

);

/
--------------------------------------------------------
--  DDL for Type TYPE_PEMESANAN
--------------------------------------------------------

  CREATE OR REPLACE TYPE "WO"."TYPE_PEMESANAN" AS OBJECT (
    id_pemesanan        NUMBER,
    tanggal_pemesanan   DATE,
    id_customer         NUMBER,
    id_paket            NUMBER,
    tipe_pembayaran     VARCHAR2(100),
    status_pembayaran   VARCHAR2(100),
    total_pembayaran    NUMBER(11, 2),
    dp_pembayaran       NUMBER(11, 2),
    customer            type_customer,
    paket_wo            type_paket_wo
)

/
--------------------------------------------------------
--  DDL for Sequence ID_CUSTOMER
--------------------------------------------------------

   CREATE SEQUENCE  "WO"."ID_CUSTOMER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_DETAIL_PAKET
--------------------------------------------------------

   CREATE SEQUENCE  "WO"."ID_DETAIL_PAKET"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_PAKET_WO
--------------------------------------------------------

   CREATE SEQUENCE  "WO"."ID_PAKET_WO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_PEMESANAN
--------------------------------------------------------

   CREATE SEQUENCE  "WO"."ID_PEMESANAN"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "WO"."CUSTOMER" 
   (	"ID_CUSTOMER" NUMBER(*,0), 
	"NAMA_CUSTOMER" VARCHAR2(150 BYTE), 
	"NO_HP" NUMBER(16,0), 
	"ALAMAT" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DETAIL_PAKET
--------------------------------------------------------

  CREATE TABLE "WO"."DETAIL_PAKET" 
   (	"ID_DETAIL_PAKET" NUMBER(*,0), 
	"ID_PAKET" NUMBER(*,0), 
	"NAMA_ITEM_PAKET" VARCHAR2(150 BYTE), 
	"JUMLAH_ITEM_PAKET" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PAKET_WO
--------------------------------------------------------

  CREATE TABLE "WO"."PAKET_WO" 
   (	"ID_PAKET" NUMBER(*,0), 
	"NAMA_PAKET" VARCHAR2(200 BYTE), 
	"HARGA_PAKET" NUMBER(11,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PEMESANAN
--------------------------------------------------------

  CREATE TABLE "WO"."PEMESANAN" 
   (	"ID_PEMESANAN" NUMBER(*,0), 
	"TANGGAL_PEMESANAN" DATE, 
	"ID_CUSTOMER" NUMBER(*,0), 
	"ID_PAKET" NUMBER(*,0), 
	"TIPE_PEMBAYARAN" VARCHAR2(100 BYTE), 
	"STATUS_PEMBAYARAN" VARCHAR2(100 BYTE), 
	"TOTAL_PEMBAYARAN" NUMBER(11,2), 
	"DP_PEMBAYARAN" NUMBER(11,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into WO.CUSTOMER
SET DEFINE OFF;
REM INSERTING into WO.DETAIL_PAKET
SET DEFINE OFF;
REM INSERTING into WO.PAKET_WO
SET DEFINE OFF;
REM INSERTING into WO.PEMESANAN
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_PAKET_WO
--------------------------------------------------------

  CREATE UNIQUE INDEX "WO"."PK_PAKET_WO" ON "WO"."PAKET_WO" ("ID_PAKET") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CUSTOMER
--------------------------------------------------------

  CREATE UNIQUE INDEX "WO"."PK_CUSTOMER" ON "WO"."CUSTOMER" ("ID_CUSTOMER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DETAIL_PAKET
--------------------------------------------------------

  CREATE UNIQUE INDEX "WO"."PK_DETAIL_PAKET" ON "WO"."DETAIL_PAKET" ("ID_DETAIL_PAKET") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PEMESANAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "WO"."PK_PEMESANAN" ON "WO"."PEMESANAN" ("ID_PEMESANAN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_ADD_CUSTOMER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_ADD_CUSTOMER" (
    c_nama_customer   customer.nama_customer%TYPE,
    c_no_hp           customer.no_hp%TYPE,
    c_alamat          customer.alamat%TYPE
) AS
BEGIN
    INSERT INTO wo.customer (
        id_customer,
        nama_customer,
        no_hp,
        alamat
    ) VALUES (
        id_customer.NEXTVAL,
        c_nama_customer,
        c_no_hp,
        c_alamat
    );

END procedure_add_customer;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_ADD_DETAIL_PAKET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_ADD_DETAIL_PAKET" (
    d_id_paket            detail_paket.id_paket%TYPE,
    d_jumlah_item_paket   detail_paket.jumlah_item_paket%TYPE,
    d_nama_item_paket     detail_paket.nama_item_paket%TYPE
) AS
BEGIN
    INSERT INTO wo.detail_paket (
        id_detail_paket,
        id_paket,
        nama_item_paket,
        jumlah_item_paket
    ) VALUES (
        id_detail_paket.NEXTVAL,
        d_id_paket,
        d_nama_item_paket,
        d_jumlah_item_paket
    );

END procedure_add_detail_paket;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_ADD_PAKET_WO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_ADD_PAKET_WO" (
    p_nama_paket    paket_wo.nama_paket%TYPE,
    p_harga_paket   paket_wo.harga_paket%TYPE
) AS
BEGIN
    INSERT INTO wo.paket_wo (
        id_paket,
        nama_paket,
        harga_paket
    ) VALUES (
        id_paket_wo.NEXTVAL,
        p_nama_paket,
        p_harga_paket
    );

END procedure_add_paket_wo;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_ADD_PEMESANAN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_ADD_PEMESANAN" (
    p_id_customer         pemesanan.id_customer%TYPE,
    p_id_paket            pemesanan.id_paket%TYPE,
    p_tipe_pembayaran     pemesanan.tipe_pembayaran%TYPE,
    p_status_pembayaran   pemesanan.status_pembayaran%TYPE,
    p_total_pembayaran    pemesanan.total_pembayaran%TYPE,
    p_dp_pembayaran       pemesanan.dp_pembayaran%TYPE
) AS
BEGIN
    INSERT INTO wo.pemesanan (
        id_pemesanan,
        tanggal_pemesanan,
        id_customer,
        id_paket,
        tipe_pembayaran,
        status_pembayaran,
        total_pembayaran,
        dp_pembayaran
    ) VALUES (
        id_pemesanan.NEXTVAL,
        current_timestamp,
        p_id_customer,
        p_id_paket,
        p_tipe_pembayaran,
        p_status_pembayaran,
        p_total_pembayaran,
        p_dp_pembayaran
    );

END procedure_add_pemesanan;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_DELETE_CUSTOMER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_DELETE_CUSTOMER" (
    c_id_customer customer.id_customer%TYPE
) AS
BEGIN
    DELETE FROM wo.customer
    WHERE
        id_customer = c_id_customer;

END procedure_delete_customer;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_DELETE_DETAIL_PAKET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_DELETE_DETAIL_PAKET" (
    d_id_detail_paket detail_paket.id_detail_paket%TYPE
) AS
BEGIN
    DELETE FROM wo.detail_paket
    WHERE
        id_detail_paket = d_id_detail_paket;

END procedure_delete_detail_paket;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_DELETE_PAKET_WO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_DELETE_PAKET_WO" (
    p_id_paket paket_wo.id_paket%TYPE
) AS
BEGIN
    DELETE FROM wo.paket_wo
    WHERE
        id_paket = p_id_paket;

END procedure_delete_paket_wo;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_DELETE_PEMESANAN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_DELETE_PEMESANAN" (
    p_id_pemesanan pemesanan.id_pemesanan%TYPE
) AS
BEGIN
    DELETE FROM wo.pemesanan
    WHERE
        id_pemesanan = p_id_pemesanan;

END procedure_delete_pemesanan;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_SELECT_CUSTOMER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_SELECT_CUSTOMER" (
    c OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN c FOR SELECT
                   *
               FROM
                   customer;

END procedure_select_customer;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_SELECT_DETAIL_PAKET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_SELECT_DETAIL_PAKET" (
    dp OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN dp FOR SELECT
                    *
                FROM
                    wo.detail_paket
                    JOIN paket_wo ON paket_wo.id_paket = detail_paket.id_paket;

END procedure_select_detail_paket;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_SELECT_PAKET_WO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_SELECT_PAKET_WO" (
    pw OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pw FOR SELECT
                    *
                FROM
                    wo.paket_wo
                    JOIN detail_paket ON detail_paket.id_paket = wo.paket_wo.id_paket;

END procedure_select_paket_wo;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_SELECT_PEMESANAN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_SELECT_PEMESANAN" (
    p OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN p FOR SELECT
                   *
               FROM
                   wo.pemesanan
                   JOIN paket_wo ON paket_wo.id_paket = wo.pemesanan.id_paket
                   JOIN customer ON customer.id_customer = wo.pemesanan.id_customer;

END procedure_select_pemesanan;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_UPDATE_CUSTOMER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_UPDATE_CUSTOMER" (
    c_id_customer     customer.id_customer%TYPE,
    c_nama_customer   customer.nama_customer%TYPE,
    c_no_hp           customer.no_hp%TYPE,
    c_alamat          customer.alamat%TYPE
) AS
BEGIN
    UPDATE wo.customer
    SET
        nama_customer = c_nama_customer,
        no_hp = c_no_hp,
        alamat = c_alamat
    WHERE
        id_customer = c_id_customer;

END procedure_update_customer;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_UPDATE_DETAIL_PAKET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_UPDATE_DETAIL_PAKET" (
    d_id_detail_paket     detail_paket.id_detail_paket%TYPE,
    d_id_paket            detail_paket.id_paket%TYPE,
    d_jumlah_item_paket   detail_paket.jumlah_item_paket%TYPE,
    d_nama_item_paket     detail_paket.nama_item_paket%TYPE
) AS
BEGIN
    UPDATE wo.detail_paket
    SET
        id_paket = d_id_paket,
        nama_item_paket = d_nama_item_paket,
        jumlah_item_paket = d_jumlah_item_paket
    WHERE
        id_detail_paket = d_id_detail_paket;

END procedure_update_detail_paket;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_UPDATE_PAKET_WO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_UPDATE_PAKET_WO" (
    p_id_paket      paket_wo.id_paket%TYPE,
    p_nama_paket    paket_wo.nama_paket%TYPE,
    p_harga_paket   paket_wo.harga_paket%TYPE
) AS
BEGIN
    UPDATE wo.paket_wo
    SET
        nama_paket = p_nama_paket,
        harga_paket = p_harga_paket
    WHERE
        id_paket = p_id_paket;

END procedure_update_paket_wo;

/
--------------------------------------------------------
--  DDL for Procedure PROCEDURE_UPDATE_PEMESANAN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "WO"."PROCEDURE_UPDATE_PEMESANAN" (
    p_id_pemesanan        pemesanan.id_pemesanan%TYPE,
    p_id_customer         pemesanan.id_customer%TYPE,
    p_id_paket            pemesanan.id_paket%TYPE,
    p_tipe_pembayaran     pemesanan.tipe_pembayaran%TYPE,
    p_status_pembayaran   pemesanan.status_pembayaran%TYPE,
    p_total_pembayaran    pemesanan.total_pembayaran%TYPE,
    p_dp_pembayaran       pemesanan.dp_pembayaran%TYPE
) AS
BEGIN
    UPDATE wo.pemesanan
    SET
        tanggal_pemesanan = current_timestamp,
        id_customer = p_id_customer,
        id_paket = p_id_paket,
        tipe_pembayaran = p_tipe_pembayaran,
        status_pembayaran = p_status_pembayaran,
        total_pembayaran = p_total_pembayaran,
        dp_pembayaran = p_dp_pembayaran
    WHERE
        id_pemesanan = p_id_pemesanan;

END procedure_update_pemesanan;

/
--------------------------------------------------------
--  DDL for Package PACKAGE_DELETE_DATA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "WO"."PACKAGE_DELETE_DATA" AS
    PROCEDURE procedure_delete_customer (
        c_id_customer customer.id_customer%TYPE
    );

    PROCEDURE procedure_delete_paket_wo (
        p_id_paket paket_wo.id_paket%TYPE
    );

    PROCEDURE procedure_delete_detail_paket (
        d_id_detail_paket detail_paket.id_detail_paket%TYPE
    );

    PROCEDURE procedure_delete_pemesanan (
        p_id_pemesanan pemesanan.id_pemesanan%TYPE
    );

END package_delete_data;

/
--------------------------------------------------------
--  DDL for Package PACKAGE_SELECT_DATA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "WO"."PACKAGE_SELECT_DATA" AS
    PROCEDURE procedure_select_customer (
        c OUT SYS_REFCURSOR
    );

    PROCEDURE procedure_select_paket_wo (
        pw OUT SYS_REFCURSOR
    );

    PROCEDURE procedure_select_detail_paket (
        dp OUT SYS_REFCURSOR
    );

    PROCEDURE procedure_select_pemesanan (
        p OUT SYS_REFCURSOR
    );

END package_select_data;

/
--------------------------------------------------------
--  DDL for Package PACKAGE_TAMBAH_DATA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "WO"."PACKAGE_TAMBAH_DATA" AS
    PROCEDURE procedure_add_customer (
        c_nama_customer   customer.nama_customer%TYPE,
        c_no_hp           customer.no_hp%TYPE,
        c_alamat          customer.alamat%TYPE
    );

    PROCEDURE procedure_add_paket_wo (
        p_nama_paket    paket_wo.nama_paket%TYPE,
        p_harga_paket   paket_wo.harga_paket%TYPE
    );

    PROCEDURE procedure_add_detail_paket (
        d_id_paket            detail_paket.id_paket%TYPE,
        d_jumlah_item_paket   detail_paket.jumlah_item_paket%TYPE,
        d_nama_item_paket     detail_paket.nama_item_paket%TYPE
    );

    PROCEDURE procedure_add_pemesanan (
        p_id_customer         pemesanan.id_customer%TYPE,
        p_id_paket            pemesanan.id_paket%TYPE,
        p_tipe_pembayaran     pemesanan.tipe_pembayaran%TYPE,
        p_status_pembayaran   pemesanan.status_pembayaran%TYPE,
        p_total_pembayaran    pemesanan.total_pembayaran%TYPE,
        p_dp_pembayaran       pemesanan.dp_pembayaran%TYPE
    );

END package_tambah_data;

/
--------------------------------------------------------
--  DDL for Package PACKAGE_UPDATE_DATA
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "WO"."PACKAGE_UPDATE_DATA" AS
    PROCEDURE procedure_update_customer (
        c_id_customer     customer.id_customer%TYPE,
        c_nama_customer   customer.nama_customer%TYPE,
        c_no_hp           customer.no_hp%TYPE,
        c_alamat          customer.alamat%TYPE
    );

    PROCEDURE procedure_update_paket_wo (
        p_id_paket      paket_wo.id_paket%TYPE,
        p_nama_paket    paket_wo.nama_paket%TYPE,
        p_harga_paket   paket_wo.harga_paket%TYPE
    );

    PROCEDURE procedure_update_detail_paket (
        d_id_detail_paket     detail_paket.id_detail_paket%TYPE,
        d_id_paket            detail_paket.id_paket%TYPE,
        d_jumlah_item_paket   detail_paket.jumlah_item_paket%TYPE,
        d_nama_item_paket     detail_paket.nama_item_paket%TYPE
    );

    PROCEDURE procedure_update_pemesanan (
        p_id_pemesanan        pemesanan.id_pemesanan%TYPE,
        p_id_customer         pemesanan.id_customer%TYPE,
        p_id_paket            pemesanan.id_paket%TYPE,
        p_tipe_pembayaran     pemesanan.tipe_pembayaran%TYPE,
        p_status_pembayaran   pemesanan.status_pembayaran%TYPE,
        p_total_pembayaran    pemesanan.total_pembayaran%TYPE,
        p_dp_pembayaran       pemesanan.dp_pembayaran%TYPE
    );

END package_update_data;

/
--------------------------------------------------------
--  Constraints for Table PAKET_WO
--------------------------------------------------------

  ALTER TABLE "WO"."PAKET_WO" ADD CONSTRAINT "PK_PAKET_WO" PRIMARY KEY ("ID_PAKET")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "WO"."PAKET_WO" MODIFY ("ID_PAKET" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PEMESANAN
--------------------------------------------------------

  ALTER TABLE "WO"."PEMESANAN" ADD CONSTRAINT "PK_PEMESANAN" PRIMARY KEY ("ID_PEMESANAN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "WO"."PEMESANAN" MODIFY ("ID_PEMESANAN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "WO"."CUSTOMER" ADD CONSTRAINT "PK_CUSTOMER" PRIMARY KEY ("ID_CUSTOMER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "WO"."CUSTOMER" MODIFY ("ID_CUSTOMER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DETAIL_PAKET
--------------------------------------------------------

  ALTER TABLE "WO"."DETAIL_PAKET" ADD CONSTRAINT "PK_DETAIL_PAKET" PRIMARY KEY ("ID_DETAIL_PAKET")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "WO"."DETAIL_PAKET" MODIFY ("ID_DETAIL_PAKET" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DETAIL_PAKET
--------------------------------------------------------

  ALTER TABLE "WO"."DETAIL_PAKET" ADD CONSTRAINT "FK_ID_PAKET" FOREIGN KEY ("ID_PAKET")
	  REFERENCES "WO"."PAKET_WO" ("ID_PAKET") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PEMESANAN
--------------------------------------------------------

  ALTER TABLE "WO"."PEMESANAN" ADD CONSTRAINT "FK_CUSTOMER" FOREIGN KEY ("ID_CUSTOMER")
	  REFERENCES "WO"."CUSTOMER" ("ID_CUSTOMER") ENABLE;
  ALTER TABLE "WO"."PEMESANAN" ADD CONSTRAINT "FK_PAKET" FOREIGN KEY ("ID_PAKET")
	  REFERENCES "WO"."PAKET_WO" ("ID_PAKET") ENABLE;
