create or replace PROCEDURE procedure_update_paket_wo (
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