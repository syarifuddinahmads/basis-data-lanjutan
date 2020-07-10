create or replace PROCEDURE procedure_add_paket_wo (
    p_nama_paket    paket_wo.nama_paket%TYPE,
    p_harga_paket   paket_wo.harga_paket%TYPE
) AS
BEGIN
    INSERT INTO wo.paket_wo (
        id_paket,
        nama_paket,
        harga_paket
    ) VALUES (
        id_paket_wo.NEXTVAL,
        p_nama_paket,
        p_harga_paket
    );

END procedure_add_paket_wo;