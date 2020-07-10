create or replace PACKAGE package_update_data AS
    PROCEDURE procedure_update_customer (
        c_id_customer     customer.id_customer%TYPE,
        c_nama_customer   customer.nama_customer%TYPE,
        c_no_hp           customer.no_hp%TYPE,
        c_alamat          customer.alamat%TYPE
    );

    PROCEDURE procedure_update_paket_wo (
        p_id_paket      paket_wo.id_paket%TYPE,
        p_nama_paket    paket_wo.nama_paket%TYPE,
        p_harga_paket   paket_wo.harga_paket%TYPE
    );

    PROCEDURE procedure_update_detail_paket (
        d_id_detail_paket     detail_paket.id_detail_paket%TYPE,
        d_id_paket            detail_paket.id_paket%TYPE,
        d_jumlah_item_paket   detail_paket.jumlah_item_paket%TYPE,
        d_nama_item_paket     detail_paket.nama_item_paket%TYPE
    );

    PROCEDURE procedure_update_pemesanan (
        p_id_pemesanan        pemesanan.id_pemesanan%TYPE,
        p_id_customer         pemesanan.id_customer%TYPE,
        p_id_paket            pemesanan.id_paket%TYPE,
        p_tipe_pembayaran     pemesanan.tipe_pembayaran%TYPE,
        p_status_pembayaran   pemesanan.status_pembayaran%TYPE,
        p_total_pembayaran    pemesanan.total_pembayaran%TYPE,
        p_dp_pembayaran       pemesanan.dp_pembayaran%TYPE
    );

END package_update_data;