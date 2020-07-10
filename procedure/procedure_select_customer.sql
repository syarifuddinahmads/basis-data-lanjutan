create or replace PROCEDURE procedure_select_customer (
    c OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN c FOR SELECT
                   *
               FROM
                   customer;

END procedure_select_customer;