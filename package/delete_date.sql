CREATE OR REPLACE PACKAGE package_delete_data AS
    PROCEDURE procedure_delete_customer (
        c_id_customer customer.id_customer%TYPE
    );

    PROCEDURE procedure_delete_paket_wo (
        p_id_paket paket_wo.id_paket%TYPE
    );

    PROCEDURE procedure_delete_detail_paket (
        d_id_detail_paket detail_paket.id_detail_paket%TYPE
    );

    PROCEDURE procedure_delete_pemesanan (
        p_id_pemesanan pemesanan.id_pemesanan%TYPE
    );

END package_delete_data;