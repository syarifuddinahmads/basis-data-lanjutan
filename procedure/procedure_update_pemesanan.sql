CREATE OR REPLACE PROCEDURE procedure_update_pemesanan (
    p_id_pemesanan        pemesanan.id_pemesanan%TYPE,
    p_id_customer         pemesanan.id_customer%TYPE,
    p_id_paket            pemesanan.id_paket%TYPE,
    p_tipe_pembayaran     pemesanan.tipe_pembayaran%TYPE,
    p_status_pembayaran   pemesanan.status_pembayaran%TYPE,
    p_total_pembayaran    pemesanan.total_pembayaran%TYPE,
    p_dp_pembayaran       pemesanan.dp_pembayaran%TYPE
) AS
BEGIN
    UPDATE wo.pemesanan
    SET
        tanggal_pemesanan = current_timestamp,
        id_customer = p_id_customer,
        id_paket = p_id_paket,
        tipe_pembayaran = p_tipe_pembayaran,
        status_pembayaran = p_status_pembayaran,
        total_pembayaran = p_total_pembayaran,
        dp_pembayaran = p_dp_pembayaran
    WHERE
        id_pemesanan = p_id_pemesanan;

END procedure_update_pemesanan;