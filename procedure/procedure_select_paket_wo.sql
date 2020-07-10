create or replace PROCEDURE procedure_select_paket_wo (
    pw OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pw FOR SELECT
                    *
                FROM
                    wo.paket_wo
                    JOIN detail_paket ON detail_paket.id_paket = wo.paket_wo.id_paket;

END procedure_select_paket_wo;