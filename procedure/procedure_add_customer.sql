create or replace PROCEDURE procedure_add_customer (
    c_nama_customer   customer.nama_customer%TYPE,
    c_no_hp           customer.no_hp%TYPE,
    c_alamat          customer.alamat%TYPE
) AS
BEGIN
    INSERT INTO wo.customer (
        id_customer,
        nama_customer,
        no_hp,
        alamat
    ) VALUES (
        id_customer.NEXTVAL,
        c_nama_customer,
        c_no_hp,
        c_alamat
    );

END procedure_add_customer;