 INSERT INTO PERSON
  VALUES ('Абдулаєв Контсянтин Тамірович');
INSERT INTO PERSON
  VALUES ('Бенжар Валерій Ігорович');
INSERT INTO PERSON
  VALUES ('Гайдак Владислав Сергійович');
INSERT INTO PERSON
  VALUES ('Година Богдан Юрійович');
INSERT INTO PERSON
  VALUES ('Горбачов Данило Віталійович');
INSERT INTO PERSON
  VALUES ('Іванюк Назар Олександрович');
INSERT INTO PERSON
  VALUES ('Іскра Артем Віталійович');
INSERT INTO PERSON
  VALUES ('Кірінова Іванна Андріївна');
INSERT INTO PERSON
  VALUES ('Ковальов Микита Андрійович');
INSERT INTO PERSON
  VALUES ('Козаченко Марина Василівна');
INSERT INTO PERSON
  VALUES ('Колесник Юрій Валерійович');
INSERT INTO PERSON
  VALUES ('Коршак Роман Іванович');
INSERT INTO PERSON
  VALUES ('Кривошей Владислав Олексндрович');
INSERT INTO PERSON
  VALUES ('Лозанюк Катерина Сергіївна');
INSERT INTO PERSON
  VALUES ('Ломачинський Віталій Сергійович');
INSERT INTO PERSON
  VALUES ('Матвієнко Олексій Олександрович');
INSERT INTO PERSON
  VALUES ('Насон Олександр Володимирович');
INSERT INTO PERSON
  VALUES ('Панасюк Олександр Сергійович');
INSERT INTO PERSON
  VALUES ('Погорілий Євгеній Олекснадрович');
INSERT INTO PERSON
  VALUES ('Рибак Данило Олександрович');
INSERT INTO PERSON
  VALUES ('Рибак Людмила Миколаївна');
INSERT INTO PERSON
  VALUES ('Самойлов Максим Едуардович');
INSERT INTO PERSON
  VALUES ('Сергієнко Максим Володимирович');
INSERT INTO PERSON
  VALUES ('Соколова Єлизавета Романівна');
INSERT INTO PERSON
  VALUES ('Сотник Дмитро Сергійович');
INSERT INTO PERSON
  VALUES ('Срібна Владіміра Дмитрівна');
INSERT INTO PERSON
  VALUES ('Усатюк Владислав Сергійович');
INSERT INTO PERSON
  VALUES ('Цибульський Владислав станіславович');
INSERT INTO PERSON
  VALUES ('Шиян Артем Дмитрович');
INSERT INTO PERSON
  VALUES ('Шум Ігор Сергійович');

SELECT*FROM PERSON;

INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000000, 'Воєнний білет' , TO_DATE('21.10.2021','DD.MM.YYYY'),'Сапанів','Іванюк Назар Олександрович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000001, 'Воєнний білет' , TO_DATE('31.10.2021','DD.MM.YYYY'),'Сапанів','Абдулаєв Контсянтин Тамірович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000002, 'Воєнний білет' , TO_DATE('05.12.2021','DD.MM.YYYY'),'Сапанів','Бенжар Валерій Ігорович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000003, 'Воєнний білет' , TO_DATE('31.10.2021','DD.MM.YYYY'),'Сапанів','Гайдак Владислав Сергійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000004, 'Воєнний білет' , TO_DATE('21.10.2021','DD.MM.YYYY'),'Кременець','Година Богдан Юрійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000005, 'Воєнний білет' , TO_DATE('31.10.2021','DD.MM.YYYY'),'Львів','Горбачов Данило Віталійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000006, 'Воєнний білет' , TO_DATE('05.12.2021','DD.MM.YYYY'),'Київ','Іскра Артем Віталійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000007, 'Воєнний білет' , TO_DATE('31.10.2021','DD.MM.YYYY'),'Харків','Ковальов Микита Андрійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000008, 'Воєнний білет' , TO_DATE('31.10.2021','DD.MM.YYYY'),'Київ','Колесник Юрій Валерійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000009, 'Воєнний білет' , TO_DATE('05.12.2021','DD.MM.YYYY'),'Київ','Коршак Роман Іванович',' ');
  
SELECT*FROM CERTIFICATE
WHERE LOCATION = 'Київ';

INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000010, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Київ','Соколова Єлизавета Романівна',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000011, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Київ','Рибак Людмила Миколаївна',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000012, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Київ','Рибак Данило Олександрович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000013, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Київ','Абдулаєв Контсянтин Тамірович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000014, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Харків','Ломачинський Віталій Сергійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000015, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Харків','Кірінова Іванна Андріївна',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000016, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Харків','Іскра Артем Віталійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000017, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Харків','Срібна Владіміра Дмитрівна',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000018, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Львів','Усатюк Владислав Сергійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000019, 'РМП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Львів','Насон Олександр Володимирович',' ');
  
SELECT*FROM CERTIFICATE
WHERE NAME = 'РМП';


INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000020, 'ДПЗП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Київ','Соколова Єлизавета Романівна',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000021, 'ДПЗП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Київ','Рибак Людмила Миколаївна',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000022, 'ДПЗП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Київ','Рибак Данило Олександрович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000023, 'ДПЗП' , TO_DATE('01.09.2020','DD.MM.YYYY'),'Київ','Абдулаєв Контсянтин Тамірович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000024, 'ДПЗП' , TO_DATE('01.09.2019','DD.MM.YYYY'),'Харків','Ломачинський Віталій Сергійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000025, 'ДПЗП' , TO_DATE('01.09.2019','DD.MM.YYYY'),'Харків','Кірінова Іванна Андріївна',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000026, 'ДПЗП' , TO_DATE('01.09.2019','DD.MM.YYYY'),'Харків','Іскра Артем Віталійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000027, 'ДПЗП' , TO_DATE('01.09.2019','DD.MM.YYYY'),'Харків','Срібна Владіміра Дмитрівна',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000028, 'ДПЗП' , TO_DATE('01.09.2019','DD.MM.YYYY'),'Львів','Усатюк Владислав Сергійович',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000029, 'ДПЗП' , TO_DATE('01.09.2019','DD.MM.YYYY'),'Львів','Насон Олександр Володимирович',' ');
  
SELECT*FROM CERTIFICATE
WHERE SNF = 'Соколова Єлизавета Романівна';

INSERT INTO SPESIAL_FORM
  VALUES(1000000000,'Іванюк Назар Олександрович','0966056042',TO_DATE('21.10.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000029,'Насон Олександр Володимирович','0000000001',TO_DATE('01.09.2019','DD.MM.YYYY'));  
INSERT INTO SPESIAL_FORM
  VALUES(1000000019,'Насон Олександр Володимирович','0000000001',TO_DATE('01.09.2020','DD.MM.YYYY'));
  
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000018,'Усатюк Владислав Сергійович','0000000002',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000028,'Усатюк Владислав Сергійович','0000000002',TO_DATE('01.09.2019','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000017,'Срібна Владіміра Дмитрівна','0000000003',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000027,'Срібна Владіміра Дмитрівна','0000000003',TO_DATE('01.09.2019','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000016,'Іскра Артем Віталійович','0000000004',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000026,'Іскра Артем Віталійович','0000000004',TO_DATE('01.09.2019','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000006,'Іскра Артем Віталійович','0000000004',TO_DATE('15.12.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000015,'Кірінова Іванна Андріївна','0000000005',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000025,'Кірінова Іванна Андріївна','0000000005',TO_DATE('01.09.2019','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000014,'Ломачинський Віталій Сергійович','0000000006',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000024,'Ломачинський Віталій Сергійович','0000000006',TO_DATE('01.09.2019','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000013,'Абдулаєв Контсянтин Тамірович','0000000007',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000023,'Абдулаєв Контсянтин Тамірович','0000000007',TO_DATE('01.09.2019','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000001,'Абдулаєв Контсянтин Тамірович','0000000007',TO_DATE('31.10.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000012,'Рибак Данило Олександрович','0000000008',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000022,'Рибак Данило Олександрович','0000000008',TO_DATE('01.09.2020','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000011,'Рибак Людмила Миколаївна','0000000009',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000021,'Рибак Людмила Миколаївна','0000000009',TO_DATE('01.09.2020','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000010,'Соколова Єлизавета Романівна','0000000010',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000020,'Соколова Єлизавета Романівна','0000000010',TO_DATE('01.09.2020','DD.MM.YYYY'));

SELECT*FROM CERTIFICATE
WHERE NUM <1000000010;

INSERT INTO SPESIAL_FORM
  VALUES(1000000002,'Бенжар Валерій Ігорович','0000000011',TO_DATE('05.12.2021','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000003,'Гайдак Владислав Сергійович','0000000012',TO_DATE('31.10.2021','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000004,'Година Богдан Юрійович','0000000013',TO_DATE('21.10.2021','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000005,'Горбачов Данило Віталійович','0000000014',TO_DATE('31.10.2021','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000007,'Ковальов Микита Андрійович','0000000015',TO_DATE('31.10.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000008,'Колесник Юрій Валерійович','0000000016',TO_DATE('31.10.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000009,'Коршак Роман Іванович','0000000017',TO_DATE('05.12.2021','DD.MM.YYYY'));