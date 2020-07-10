create or replace PROCEDURE procedure_update_customer (
    c_id_customer     customer.id_customer%TYPE,
    c_nama_customer   customer.nama_customer%TYPE,
    c_no_hp           customer.no_hp%TYPE,
    c_alamat          customer.alamat%TYPE
) AS
BEGIN
    UPDATE wo.customer
    SET
        nama_customer = c_nama_customer,
        no_hp = c_no_hp,
        alamat = c_alamat
    WHERE
        id_customer = c_id_customer;

END procedure_update_customer;