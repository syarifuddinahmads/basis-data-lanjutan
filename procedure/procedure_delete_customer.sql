create or replace PROCEDURE procedure_delete_customer (
    c_id_customer customer.id_customer%TYPE
) AS
BEGIN
    DELETE FROM wo.customer
    WHERE
        id_customer = c_id_customer;

END procedure_delete_customer;