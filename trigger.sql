CREATE OR REPLACE TRIGGER game_year_const
    BEFORE UPDATE
    OF year ON GAME
    FOR EACH ROW
    BEGIN
        :NEW.year := :OLD.year;
    END;