--частина №1

INSERT INTO faculty (facpk, name, building, fund)
    VALUES (1, 'ФККПІ', '6', 500000.00);
INSERT INTO faculty (facpk, name, building, fund)
    VALUES (2, 'economy', '3', 400000.00);
    
ALTER TABLE department
    MODIFY name VARCHAR2(50 CHAR);
    
ALTER TABLE LECTURE
    MODIFY DAY CHAR(3 CHAR);

INSERT ALL
    INTO department (deppk, facfk, name, building, fund)
        VALUES (1, 1, 'Інженерія програмного забезпечення', '6', 30000.00)
    INTO department (deppk, facfk, name, building, fund)
        VALUES (2, 1, 'Комп''ютерні науки', '4', 80000.00)
    INTO department (deppk, facfk, name, building, fund)
        VALUES (3, 1, 'Кібербезпека', '10', 50000.00)
SELECT 1 FROM dual;

INSERT INTO teacher
    VALUES (1, 1, 'Волкогон', 'професор', '0000001', TO_DATE ('19.07.1995', 'DD.MM.YYYY'), 
        2000.00, 500.00, NULL);
INSERT INTO teacher
    VALUES (2, 1, 'Марченко', 'доцент', '0000002', TO_DATE ('18.04.1999', 'DD.MM.YYYY'), 
        2000.00, 500.00, 1);
INSERT INTO teacher
    VALUES (3, 1,'Шутко', 'викладач', '0000003', TO_DATE ('07.12.1998', 'DD.MM.YYYY'), 
        2000.00, 500.00, 1);
INSERT INTO teacher
    VALUES (4, 1,'Талалаєв', 'асистент', '0000004', TO_DATE ('03.02.1999', 'DD.MM.YYYY'), 
        1001.00, 60.00, 1);
INSERT INTO teacher
    VALUES (5, 1,'Васильєва', 'викладач', '0000005', TO_DATE ('24.11.1998', 'DD.MM.YYYY'), 
        2000.00, 500.00, 1);
INSERT INTO teacher
    VALUES (6, 2, 'Bob', 'асистент', '0000006', TO_DATE ('18.05.1998', 'DD.MM.YYYY'), 
        2000.00, 500.00, null);
INSERT INTO teacher
    VALUES (7, 2,'Frank', 'професор', '0000007', TO_DATE ('27.07.1996', 'DD.MM.YYYY'), 
        2000.00, 500.00, 6);

        
UPDATE faculty
    SET deanfk = 1
    WHERE name = 'ФККПІ';
UPDATE faculty
    SET NAME = 'ФЕБА'
    WHERE FACPK = 2;
    
UPDATE department
    SET headfk = 2;
    
INSERT INTO sgroup (grppk, course, curator, depfk, quantity, rating, num)
    VALUES (1, 3, 5, 1, 30, 100, 321);

INSERT ALL
    INTO subject VALUES (1, 'Аналіз даних')
    INTO subject VALUES (2, 'Бази даних')
    INTO subject VALUES (3, 'ПЗІС')
    INTO subject VALUES (4, 'Інтернет')
    INTO subject VALUES (5, 'Основи штучного інтелекту')
    INTO subject VALUES (6, 'СМП')
SELECT 1 FROM dual;

INSERT ALL
    INTO room VALUES (1, 311, 100, 3, '10')
    INTO room VALUES (2, 411, 100, 4, '10')
    INTO room VALUES (3, 104, 100, 4, '6')
    INTO room VALUES (4, 311, 100, 3, '6')
SELECT 1 FROM DUAL;

INSERT INTO lecture 
    VALUES (1, 1, 1, 1, 'ЛЕКЦІЯ', 'ПОН', 1, 3);
INSERT INTO lecture 
    VALUES (2, 1, 2, 1, 'ЛАБАРАТОРНА', 'ЧЕТ', 1, 3);
INSERT INTO lecture 
    VALUES (3, 1, 6, 3, 'ПРАКТИКА', 'СР', 1, 3);
    
    
--частина №2

UPDATE faculty
    SET deanfk = 6, fund = 346700.00
    WHERE name = 'economy';
    
UPDATE department
    SET headfk = 7, building = '3'
    WHERE deppk = 3;
    
UPDATE teacher
    SET commission = salary / 4
    WHERE post = 'асистент';
    
UPDATE sgroup
    SET rating = 0
    WHERE course = 1;
    
UPDATE subject
    SET name = 'Осн. програм. в інтрнеті'
    WHERE name = 'Інтернет';

UPDATE SUBJECT
SET NAME = 'Прог. заб. інформ. систем'
WHERE NAME = 'ПЗІС';