create or replace PROCEDURE procedure_delete_paket_wo (
    p_id_paket paket_wo.id_paket%TYPE
) AS
BEGIN
    DELETE FROM wo.paket_wo
    WHERE
        id_paket = p_id_paket;

END procedure_delete_paket_wo;