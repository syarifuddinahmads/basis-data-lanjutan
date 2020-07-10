create or replace PROCEDURE procedure_select_pemesanan (
    p OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN p FOR SELECT
                   *
               FROM
                   wo.pemesanan
                   JOIN paket_wo ON paket_wo.id_paket = wo.pemesanan.id_paket
                   JOIN customer ON customer.id_customer = wo.pemesanan.id_customer;

END procedure_select_pemesanan;