create or replace PROCEDURE procedure_delete_pemesanan (
    p_id_pemesanan pemesanan.id_pemesanan%TYPE
) AS
BEGIN
    DELETE FROM wo.pemesanan
    WHERE
        id_pemesanan = p_id_pemesanan;

END procedure_delete_pemesanan;