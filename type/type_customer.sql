CREATE OR REPLACE TYPE type_customer AS OBJECT (
    id_customer     INT,
    nama_customer   VARCHAR(150),
    no_hp           NUMBER(16),
    alamat          VARCHAR(200)
);