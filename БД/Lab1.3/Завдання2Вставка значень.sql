 INSERT INTO PERSON
  VALUES ('������� ���������� ��������');
INSERT INTO PERSON
  VALUES ('������ ������ ��������');
INSERT INTO PERSON
  VALUES ('������ ��������� ���������');
INSERT INTO PERSON
  VALUES ('������ ������ �������');
INSERT INTO PERSON
  VALUES ('�������� ������ ³��������');
INSERT INTO PERSON
  VALUES ('������ ����� �������������');
INSERT INTO PERSON
  VALUES ('����� ����� ³��������');
INSERT INTO PERSON
  VALUES ('ʳ����� ������ �������');
INSERT INTO PERSON
  VALUES ('�������� ������ ���������');
INSERT INTO PERSON
  VALUES ('��������� ������ ��������');
INSERT INTO PERSON
  VALUES ('�������� ��� ����������');
INSERT INTO PERSON
  VALUES ('������ ����� ��������');
INSERT INTO PERSON
  VALUES ('�������� ��������� ������������');
INSERT INTO PERSON
  VALUES ('������� �������� ���㳿���');
INSERT INTO PERSON
  VALUES ('������������ ³���� ���������');
INSERT INTO PERSON
  VALUES ('���⳺��� ������ �������������');
INSERT INTO PERSON
  VALUES ('����� ��������� �������������');
INSERT INTO PERSON
  VALUES ('������� ��������� ���������');
INSERT INTO PERSON
  VALUES ('�������� ������� �������������');
INSERT INTO PERSON
  VALUES ('����� ������ �������������');
INSERT INTO PERSON
  VALUES ('����� ������� ���������');
INSERT INTO PERSON
  VALUES ('�������� ������ ����������');
INSERT INTO PERSON
  VALUES ('���㳺��� ������ �������������');
INSERT INTO PERSON
  VALUES ('�������� ��������� ���������');
INSERT INTO PERSON
  VALUES ('������ ������ ���������');
INSERT INTO PERSON
  VALUES ('����� ������� ��������');
INSERT INTO PERSON
  VALUES ('������ ��������� ���������');
INSERT INTO PERSON
  VALUES ('����������� ��������� �������������');
INSERT INTO PERSON
  VALUES ('���� ����� ���������');
INSERT INTO PERSON
  VALUES ('��� ���� ���������');

SELECT*FROM PERSON;

INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000000, '������ ����' , TO_DATE('21.10.2021','DD.MM.YYYY'),'�������','������ ����� �������������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000001, '������ ����' , TO_DATE('31.10.2021','DD.MM.YYYY'),'�������','������� ���������� ��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000002, '������ ����' , TO_DATE('05.12.2021','DD.MM.YYYY'),'�������','������ ������ ��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000003, '������ ����' , TO_DATE('31.10.2021','DD.MM.YYYY'),'�������','������ ��������� ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000004, '������ ����' , TO_DATE('21.10.2021','DD.MM.YYYY'),'���������','������ ������ �������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000005, '������ ����' , TO_DATE('31.10.2021','DD.MM.YYYY'),'����','�������� ������ ³��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000006, '������ ����' , TO_DATE('05.12.2021','DD.MM.YYYY'),'���','����� ����� ³��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000007, '������ ����' , TO_DATE('31.10.2021','DD.MM.YYYY'),'�����','�������� ������ ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000008, '������ ����' , TO_DATE('31.10.2021','DD.MM.YYYY'),'���','�������� ��� ����������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000009, '������ ����' , TO_DATE('05.12.2021','DD.MM.YYYY'),'���','������ ����� ��������',' ');
  
SELECT*FROM CERTIFICATE
WHERE LOCATION = '���';

INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000010, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'���','�������� ��������� ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000011, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'���','����� ������� ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000012, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'���','����� ������ �������������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000013, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'���','������� ���������� ��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000014, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'�����','������������ ³���� ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000015, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'�����','ʳ����� ������ �������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000016, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'�����','����� ����� ³��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000017, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'�����','����� ������� ��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000018, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'����','������ ��������� ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000019, '���' , TO_DATE('01.09.2020','DD.MM.YYYY'),'����','����� ��������� �������������',' ');
  
SELECT*FROM CERTIFICATE
WHERE NAME = '���';


INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000020, '����' , TO_DATE('01.09.2020','DD.MM.YYYY'),'���','�������� ��������� ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000021, '����' , TO_DATE('01.09.2020','DD.MM.YYYY'),'���','����� ������� ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000022, '����' , TO_DATE('01.09.2020','DD.MM.YYYY'),'���','����� ������ �������������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000023, '����' , TO_DATE('01.09.2020','DD.MM.YYYY'),'���','������� ���������� ��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000024, '����' , TO_DATE('01.09.2019','DD.MM.YYYY'),'�����','������������ ³���� ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000025, '����' , TO_DATE('01.09.2019','DD.MM.YYYY'),'�����','ʳ����� ������ �������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000026, '����' , TO_DATE('01.09.2019','DD.MM.YYYY'),'�����','����� ����� ³��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000027, '����' , TO_DATE('01.09.2019','DD.MM.YYYY'),'�����','����� ������� ��������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000028, '����' , TO_DATE('01.09.2019','DD.MM.YYYY'),'����','������ ��������� ���������',' ');
INSERT INTO CERTIFICATE (NUM, NAME, ISSUE_DATE, LOCATION, SNF, TEXT)
  VALUES(1000000029, '����' , TO_DATE('01.09.2019','DD.MM.YYYY'),'����','����� ��������� �������������',' ');
  
SELECT*FROM CERTIFICATE
WHERE SNF = '�������� ��������� ���������';

INSERT INTO SPESIAL_FORM
  VALUES(1000000000,'������ ����� �������������','0966056042',TO_DATE('21.10.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000029,'����� ��������� �������������','0000000001',TO_DATE('01.09.2019','DD.MM.YYYY'));  
INSERT INTO SPESIAL_FORM
  VALUES(1000000019,'����� ��������� �������������','0000000001',TO_DATE('01.09.2020','DD.MM.YYYY'));
  
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000018,'������ ��������� ���������','0000000002',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000028,'������ ��������� ���������','0000000002',TO_DATE('01.09.2019','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000017,'����� ������� ��������','0000000003',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000027,'����� ������� ��������','0000000003',TO_DATE('01.09.2019','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000016,'����� ����� ³��������','0000000004',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000026,'����� ����� ³��������','0000000004',TO_DATE('01.09.2019','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000006,'����� ����� ³��������','0000000004',TO_DATE('15.12.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000015,'ʳ����� ������ �������','0000000005',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000025,'ʳ����� ������ �������','0000000005',TO_DATE('01.09.2019','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000014,'������������ ³���� ���������','0000000006',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000024,'������������ ³���� ���������','0000000006',TO_DATE('01.09.2019','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000013,'������� ���������� ��������','0000000007',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000023,'������� ���������� ��������','0000000007',TO_DATE('01.09.2019','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000001,'������� ���������� ��������','0000000007',TO_DATE('31.10.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000012,'����� ������ �������������','0000000008',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000022,'����� ������ �������������','0000000008',TO_DATE('01.09.2020','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000011,'����� ������� ���������','0000000009',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000021,'����� ������� ���������','0000000009',TO_DATE('01.09.2020','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000010,'�������� ��������� ���������','0000000010',TO_DATE('01.09.2020','DD.MM.YYYY'));
INSERT INTO SPESIAL_FORM
  VALUES(1000000020,'�������� ��������� ���������','0000000010',TO_DATE('01.09.2020','DD.MM.YYYY'));

SELECT*FROM CERTIFICATE
WHERE NUM <1000000010;

INSERT INTO SPESIAL_FORM
  VALUES(1000000002,'������ ������ ��������','0000000011',TO_DATE('05.12.2021','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000003,'������ ��������� ���������','0000000012',TO_DATE('31.10.2021','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000004,'������ ������ �������','0000000013',TO_DATE('21.10.2021','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000005,'�������� ������ ³��������','0000000014',TO_DATE('31.10.2021','DD.MM.YYYY'));

INSERT INTO SPESIAL_FORM
  VALUES(1000000007,'�������� ������ ���������','0000000015',TO_DATE('31.10.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000008,'�������� ��� ����������','0000000016',TO_DATE('31.10.2021','DD.MM.YYYY'));
  
INSERT INTO SPESIAL_FORM
  VALUES(1000000009,'������ ����� ��������','0000000017',TO_DATE('05.12.2021','DD.MM.YYYY'));