create or replace PROCEDURE procedure_select_detail_paket (
    dp OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN dp FOR SELECT
                    *
                FROM
                    wo.detail_paket
                    JOIN paket_wo ON paket_wo.id_paket = detail_paket.id_paket;

END procedure_select_detail_paket;