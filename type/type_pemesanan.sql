CREATE OR REPLACE TYPE type_pemesanan AS OBJECT (
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