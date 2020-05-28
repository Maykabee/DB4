CREATE OR REPLACE PACKAGE GAME_FOR_PS4 IS

    TYPE sales_customer_row IS RECORD (
    id_customer          sales_customer.id_customer%TYPE,
    game_name            sales_customer.game_name%TYPE,
    year                 sales_customer.year%TYPE
    );
    
    TYPE sales_customer_table IS TABLE OF sales_customer_row;
    
    PROCEDURE buying_a_game (
    id_customer_p        sales_customer.id_customer%TYPE,
    customer_name_p      sales_customer.customer_name%TYPE,
    game_name_p          sales_customer.game_name%TYPE,
    year_p               sales_customer.year%TYPE,
    price_p              sales_customer.price%TYPE,
    discount_p           sales_customer.discount%TYPE,
    discounted_price_p   sales_customer.discounted_price%TYPE
);
        
   
        
END GAME_FOR_PS4;
/   

CREATE OR REPLACE PACKAGE BODY GAME_FOR_PS4 IS
PROCEDURE buying_a_game (
    id_customer_p        sales_customer.id_customer%TYPE,
    customer_name_p      sales_customer.customer_name%TYPE,
    game_name_p          sales_customer.game_name%TYPE,
    year_p               sales_customer.year%TYPE,
    price_p              sales_customer.price%TYPE,
    discount_p           sales_customer.discount%TYPE,
    discounted_price_p   sales_customer.discounted_price%TYPE
) AS

    id_customer_cur        sales_customer.id_customer%TYPE;
    customer_name_cur      sales_customer.customer_name%TYPE;
    game_name_cur          sales_customer.game_name%TYPE;
    year_cur               sales_customer.year%TYPE;
    price_cur              sales_customer.price%TYPE;
    discount_cur           sales_customer.discount%TYPE;
    discounted_price_cur   sales_customer.discounted_price%TYPE;
BEGIN
    SELECT
        customer.id_customer,
        customer.customer_name
    INTO
        id_customer_cur,
        customer_name_cur
    FROM
        customer
    WHERE
        customer.id_customer = id_customer_p;

    SELECT
        game_name,
        year
    INTO
        game_name_cur,
        year_cur
    FROM
        game
    WHERE
        ( game_name = game_name_p
          AND year = year_p );

    INSERT INTO sales_customer (
        id_customer,
        customer_name,
        game_name,
        year,
        price,
        discount,
        discounted_price
    ) VALUES (
        id_customer_p,
        customer_name_p,
        game_name_p,
        year_p,
        price_p,
        discount_p,
        discounted_price_p
    );

    DBMS_OUTPUT.put_line('Фух! Інформація додана');
    
EXCEPTION
    WHEN no_data_found THEN
        DBMS_OUTPUT.put_line('Покупця або гру  не знайдено.');
END;
END GAME_FOR_PS4;