CREATE OR REPLACE TYPE type_detail_paket AS OBJECT (
    id_detail_paket     INT,
    id_paket            INT,
    nama_item_paket     VARCHAR(150),
    jumlah_item_paket   INT,
    paket_wo            type_paket_wo
)