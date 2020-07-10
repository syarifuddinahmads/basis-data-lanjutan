create or replace PROCEDURE procedure_update_detail_paket (
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