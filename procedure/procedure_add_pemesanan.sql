create or replace PROCEDURE procedure_add_pemesanan (
    p_id_customer         pemesanan.id_customer%TYPE,
    p_id_paket            pemesanan.id_paket%TYPE,
    p_tipe_pembayaran     pemesanan.tipe_pembayaran%TYPE,
    p_status_pembayaran   pemesanan.status_pembayaran%TYPE,
    p_total_pembayaran    pemesanan.total_pembayaran%TYPE,
    p_dp_pembayaran       pemesanan.dp_pembayaran%TYPE
) AS
BEGIN
    INSERT INTO wo.pemesanan (
        id_pemesanan,
        tanggal_pemesanan,
        id_customer,
        id_paket,
        tipe_pembayaran,
        status_pembayaran,
        total_pembayaran,
        dp_pembayaran
    ) VALUES (
        id_pemesanan.NEXTVAL,
        current_timestamp,
        p_id_customer,
        p_id_paket,
        p_tipe_pembayaran,
        p_status_pembayaran,
        p_total_pembayaran,
        p_dp_pembayaran
    );

END procedure_add_pemesanan;