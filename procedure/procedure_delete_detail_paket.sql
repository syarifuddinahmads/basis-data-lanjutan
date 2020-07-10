create or replace PROCEDURE procedure_delete_detail_paket (
    d_id_detail_paket detail_paket.id_detail_paket%TYPE
) AS
BEGIN
    DELETE FROM wo.detail_paket
    WHERE
        id_detail_paket = d_id_detail_paket;

END procedure_delete_detail_paket;