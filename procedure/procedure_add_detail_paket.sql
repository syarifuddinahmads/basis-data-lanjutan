create or replace PROCEDURE procedure_add_detail_paket (
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