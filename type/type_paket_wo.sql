CREATE OR REPLACE TYPE type_paket_wo AS OBJECT (
    id_paket      INT,
    nama_paket    VARCHAR(200),
    harga_paket   DECIMAL(11, 2)
);