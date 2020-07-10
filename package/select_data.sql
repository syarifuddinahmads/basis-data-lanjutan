CREATE OR REPLACE PACKAGE package_select_data AS
    PROCEDURE procedure_select_customer (
        c OUT SYS_REFCURSOR
    );

    PROCEDURE procedure_select_paket_wo (
        pw OUT SYS_REFCURSOR
    );

    PROCEDURE procedure_select_detail_paket (
        dp OUT SYS_REFCURSOR
    );

    PROCEDURE procedure_select_pemesanan (
        p OUT SYS_REFCURSOR
    );

END package_select_data;