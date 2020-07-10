**<h1>Project Title</h1>**

## “Wedding Organizer”

## **Table Of Project**

***Table:: Customer***

    CREATE TABLE "WO"."CUSTOMER"
       ( "ID_CUSTOMER" NUMBER(*,0) NOT NULL ENABLE,
        "NAMA_CUSTOMER" VARCHAR2(150),
        "NO_HP" NUMBER(16,0),
        "ALAMAT" VARCHAR2(200),
        CONSTRAINT "PK_CUSTOMER" PRIMARY KEY ("ID_CUSTOMER")
    );

  
***Table:: Paket WO***

    CREATE TABLE "WO"."PAKET_WO"
        ( "ID_PAKET" NUMBER(*,0) NOT NULL ENABLE,
        "NAMA_PAKET" VARCHAR2(200),
        "HARGA_PAKET" NUMBER(11,2),
        CONSTRAINT "PK_PAKET_WO" PRIMARY KEY ("ID_PAKET")
      );

  

***Table:: Detail Paket***

    CREATE TABLE "WO"."DETAIL_PAKET"
        ( "ID_DETAIL_PAKET" NUMBER(*,0) NOT NULL ENABLE,
        "ID_PAKET" NUMBER(*,0),
        "NAMA_ITEM_PAKET" VARCHAR2(150),
        "JUMLAH_ITEM_PAKET" NUMBER(*,0),
        CONSTRAINT "PK_DETAIL_PAKET" PRIMARY KEY ("ID_DETAIL_PAKET")
     );

  

***Table:: Pemesanan***

    CREATE  TABLE  "WO"."PEMESANAN"  
	    (  "ID_PEMESANAN"  NUMBER(*,0) NOT  NULL  ENABLE,  
	    "TANGGAL_PEMESANAN"  DATE,  
	    "ID_CUSTOMER"  NUMBER(*,0),  
	    "ID_PAKET"  NUMBER(*,0),  
	    "TIPE_PEMBAYARAN" VARCHAR2(100),  
	    "STATUS_PEMBAYARAN" VARCHAR2(100),  
	    "TOTAL_PEMBAYARAN"  NUMBER(11,2),  
	    "DP_PEMBAYARAN"  NUMBER(11,2),  
	    CONSTRAINT  "PK_PEMESANAN" PRIMARY KEY ("ID_PEMESANAN")  
    );

## **Sequence Of Table**

***Sequence:: Customer***

    CREATE SEQUENCE "WO"."ID_CUSTOMER"
	    MINVALUE 1 
	    MAXVALUE 9999999999999999999999999999 
	    INCREMENT BY 1 
	    START WITH 1 
	    CACHE 20 
    NOORDER NOCYCLE ;

  

***Sequence:: Paket WO***

    CREATE SEQUENCE "WO"."ID_PAKET_WO" 
	    MINVALUE 1 
	    MAXVALUE 9999999999999999999999999999 
	    INCREMENT BY 1 
	    START WITH 1 
	    CACHE 20 
	NOORDER NOCYCLE ;

  

***Sequence:: Detail Paket***

    CREATE SEQUENCE "WO"."ID_DETAIL_PAKET"
		MINVALUE 1
		MAXVALUE 9999999999999999999999999999 
	    INCREMENT BY 1 
	    START WITH 1 
	    CACHE 20 
    NOORDER NOCYCLE ;

  

***Sequence:: Pemesanan***

    CREATE SEQUENCE "WO"."ID_PEMESANAN" 
	    MINVALUE 1 
	    MAXVALUE 9999999999999999999999999999 
	    INCREMENT BY 1
	    START WITH 1 
	    CACHE 20 
	NOORDER NOCYCLE ;

  

## **Object Type Of Project**

***Object Type:: Type Customer***

    create or replace TYPE TYPE_CUSTOMER AS OBJECT (
        id_customer INT,
        nama_customer varchar(150),
        no_hp number(16),
        alamat varchar(200)
    );

  

***Object Type:: Type Paket WO***

    CREATE OR REPLACE TYPE TYPE_PAKET_WO AS OBJECT (
        id_paket int,
        nama_paket varchar(200),
        harga_paket decimal(11,2)
    );

  

***Object Type:: Type Detail Paket***

    CREATE OR REPLACE TYPE TYPE_DETAIL_PAKET AS OBJECT (
        id_detail_paket int,
        id_paket int,
        nama_item_paket varchar(150),
        jumlah_item_paket int,
        paket_wo type_paket_wo
     );

  

***Object Type:: Type Pemesanan***

    CREATE OR REPLACE TYPE TYPE_PEMESANAN AS OBJECT(
        id_pemesanan int,
        tanggal_pemesanan date,
        id_customer int,
        id_paket int,
        tipe_pembayaran varchar(100),
        status_pembayaran varchar(100),
        total_pembayaran decimal(11,2),
        dp_pembayaran decimal(11,2),
        customer type_customer,
        paket_wo type_paket_wo
    );

  
  
  

## **Package Of Project**

***Package:: Package Tambah Data***

    CREATE OR REPLACE PACKAGE package_tambah_data AS
    
        PROCEDURE procedure_add_customer (
	        c_nama_customer customer.nama_customer%TYPE,
	        c_no_hp customer.no_hp%TYPE,
	        c_alamat customer.alamat%TYPE
        );
        
		PROCEDURE procedure_add_paket_wo (
	        p_nama_paket paket_wo.nama_paket%TYPE,
	        p_harga_paket paket_wo.harga_paket%TYPE
        );
       
       PROCEDURE procedure_add_detail_paket (
	        d_id_paket detail_paket.id_paket%TYPE,
	        d_jumlah_item_paket detail_paket.jumlah_item_paket%TYPE,
		    d_nama_item_paket detail_paket.nama_item_paket%TYPE
	    );
    
         PROCEDURE procedure_add_pemesanan (
	        p_id_customer pemesanan.id_customer%TYPE,
	        p_id_paket pemesanan.id_paket%TYPE,
	        p_tipe_pembayaran pemesanan.tipe_pembayaran%TYPE,
	        p_status_pembayaran pemesanan.status_pembayaran%TYPE,
	        p_total_pembayaran pemesanan.total_pembayaran%TYPE,
	        p_dp_pembayaran pemesanan.dp_pembayaran%TYPE
        );
      
    END package_tambah_data;

  
  
  

***Package:: Package Select Data***

    CREATE OR REPLACE PACKAGE package_select_data AS
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

  
  
  

***Package:: Package Update Data***

    CREATE OR REPLACE PACKAGE package_update_data AS
        PROCEDURE procedure_update_customer (
	        c_id_customer customer.id_customer%TYPE,
	        c_nama_customer customer.nama_customer%TYPE,
	        c_no_hp customer.no_hp%TYPE,
	        c_alamat customer.alamat%TYPE
	    );
    
	    PROCEDURE procedure_update_paket_wo (
	        p_id_paket paket_wo.id_paket%TYPE,
	        p_nama_paket paket_wo.nama_paket%TYPE,
	        p_harga_paket paket_wo.harga_paket%TYPE
	    );  

		PROCEDURE procedure_update_detail_paket (
	        d_id_detail_paket detail_paket.id_detail_paket%TYPE,
	        d_id_paket detail_paket.id_paket%TYPE,
	        d_jumlah_item_paket detail_paket.jumlah_item_paket%TYPE,
	        d_nama_item_paket detail_paket.nama_item_paket%TYPE
	    );

		PROCEDURE procedure_update_pemesanan (
	        p_id_pemesanan pemesanan.id_pemesanan%TYPE,
	        p_id_customer pemesanan.id_customer%TYPE,
	        p_id_paket pemesanan.id_paket%TYPE,
		    p_tipe_pembayaran pemesanan.tipe_pembayaran%TYPE,
		    p_status_pembayaran pemesanan.status_pembayaran%TYPE,
	        p_total_pembayaran pemesanan.total_pembayaran%TYPE,
	        p_dp_pembayaran pemesanan.dp_pembayaran%TYPE
	    );    
      
      END package_update_data;

  
  
  

***Package:: Package Delete Data***

    create or replace PACKAGE package_delete_data AS
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

  
  
  

## **Procedure Of Project**

## *Procedure:: Procedure Customer*

***Procedure:: Tambah Customer***

    CREATE OR REPLACE PROCEDURE procedure_add_customer (
	        c_nama_customer customer.nama_customer%TYPE,
	        c_no_hp customer.no_hp%TYPE,
	        c_alamat customer.alamat%TYPE
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

  

***Procedure:: Select Customer***

    CREATE OR REPLACE PROCEDURE procedure_select_customer (
        c OUT SYS_REFCURSOR
        ) AS
        BEGIN
	        OPEN c FOR SELECT   *
        FROM
        customer;
    
    END procedure_select_customer;

  

***Procedure:: Update Customer***

    CREATE OR REPLACE PROCEDURE procedure_update_customer (
	        c_id_customer customer.id_customer%TYPE,
	        c_nama_customer customer.nama_customer%TYPE,
	        c_no_hp customer.no_hp%TYPE,
	        c_alamat customer.alamat%TYPE
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

  

***Procedure:: Delete Customer***

    CREATE OR REPLACE PROCEDURE procedure_delete_customer (
	        c_id_customer customer.id_customer%TYPE
        ) AS
        BEGIN
	        DELETE FROM wo.customer
	        WHERE
	        id_customer = c_id_customer;
         
    END procedure_delete_customer;

  

## *Procedure:: Procedure Paket WO*

***Procedure:: Tambah Paket WO***

    CREATE OR REPLACE PROCEDURE procedure_add_paket_wo (
	        p_nama_paket paket_wo.nama_paket%TYPE,
	        p_harga_paket paket_wo.harga_paket%TYPE
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

  

***Procedure:: Select Paket WO***

    CREATE OR REPLACE PROCEDURE procedure_select_paket_wo (
	        pw OUT SYS_REFCURSOR
        ) AS
        BEGIN
	        OPEN pw FOR SELECT
	        *
	        FROM
    		    wo.paket_wo
	        JOIN detail_paket ON detail_paket.id_paket = wo.paket_wo.id_paket;
        
    END procedure_select_paket_wo;

***Procedure:: Update Paket WO***

    CREATE OR REPLACE PROCEDURE procedure_update_paket_wo (
	    p_id_paket paket_wo.id_paket%TYPE,
        p_nama_paket paket_wo.nama_paket%TYPE,
        p_harga_paket paket_wo.harga_paket%TYPE
    
    ) AS
        BEGIN
	        UPDATE wo.paket_wo
	        SET
		        nama_paket = p_nama_paket,
		        harga_paket = p_harga_paket
	        WHERE
        id_paket = p_id_paket;
 
    END procedure_update_paket_wo;

  

***Procedure:: Delete Paket WO***

    CREATE OR REPLACE PROCEDURE procedure_delete_paket_wo (
	        p_id_paket paket_wo.id_paket%TYPE
        ) AS
        BEGIN
		        DELETE FROM wo.paket_wo
	        WHERE
		        id_paket = p_id_paket;
    END procedure_delete_paket_wo;

  

## *Procedure:: Procedure Detail Paket*

***Procedure:: Tambah Detail Paket***

    CREATE OR REPLACE PROCEDURE procedure_add_detail_paket (
	        d_id_paket detail_paket.id_paket%TYPE,
	        d_jumlah_item_paket detail_paket.jumlah_item_paket%TYPE,
	        d_nama_item_paket detail_paket.nama_item_paket%TYPE
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

  

***Procedure:: Select Detail Paket***

    CREATE OR REPLACE PROCEDURE procedure_select_detail_paket (
	        dp OUT SYS_REFCURSOR
        ) AS
        BEGIN
	        OPEN dp FOR SELECT
	        *
	        FROM
		        wo.detail_paket
	        JOIN paket_wo ON paket_wo.id_paket = detail_paket.id_paket;
    
    END procedure_select_detail_paket;

  

***Procedure:: Update Detail Paket***

    CREATE OR REPLACE PROCEDURE procedure_update_detail_paket (
	        d_id_detail_paket detail_paket.id_detail_paket%TYPE,
	        d_id_paket detail_paket.id_paket%TYPE,
	        d_jumlah_item_paket detail_paket.jumlah_item_paket%TYPE,
	        d_nama_item_paket detail_paket.nama_item_paket%TYPE
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

  

***Procedure:: Delete Detail Paket***

    CREATE OR REPLACE PROCEDURE procedure_delete_detail_paket (
		        d_id_detail_paket detail_paket.id_detail_paket%TYPE
	        ) AS
	        BEGIN
	        DELETE FROM wo.detail_paket
        WHERE
	        id_detail_paket = d_id_detail_paket;
    
    END procedure_delete_detail_paket;

  

## *Procedure:: Procedure Pemesanan*

***Procedure:: Tambah Pemesanan***

    CREATE OR REPLACE PROCEDURE procedure_add_pemesanan (
	        p_id_customer pemesanan.id_customer%TYPE,
	        p_id_paket pemesanan.id_paket%TYPE,
	        p_tipe_pembayaran pemesanan.tipe_pembayaran%TYPE,
	        p_status_pembayaran pemesanan.status_pembayaran%TYPE,
	        p_total_pembayaran pemesanan.total_pembayaran%TYPE,
	        p_dp_pembayaran pemesanan.dp_pembayaran%TYPE
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

  

***Procedure:: Select Pemesanan***

    CREATE OR REPLACE PROCEDURE procedure_select_pemesanan (
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

  

***Procedure:: Update Pemesanan***

    CREATE OR REPLACE PROCEDURE procedure_update_pemesanan (
	        p_id_pemesanan pemesanan.id_pemesanan%TYPE,
	        p_id_customer pemesanan.id_customer%TYPE,
	        p_id_paket pemesanan.id_paket%TYPE,
	        p_tipe_pembayaran pemesanan.tipe_pembayaran%TYPE,
	        p_status_pembayaran pemesanan.status_pembayaran%TYPE,
	        p_total_pembayaran pemesanan.total_pembayaran%TYPE,
	        p_dp_pembayaran pemesanan.dp_pembayaran%TYPE
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

  

***Procedure:: Delete Pemesanan***

    CREATE OR REPLACE PROCEDURE procedure_delete_pemesanan (
	        p_id_pemesanan pemesanan.id_pemesanan%TYPE
        ) AS
        BEGIN
	        DELETE FROM wo.pemesanan
	        WHERE
	        id_pemesanan = p_id_pemesanan;
    
    END procedure_delete_pemesanan;
