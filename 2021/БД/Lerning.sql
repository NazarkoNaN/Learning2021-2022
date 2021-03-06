ALTER TABLE FACULTY
ADD CONSTRAINT Fac_PK 
PRIMARY KEY (FacPK);

ALTER TABLE FACULTY
ADD CONSTRAINT Name_UNIQUE
UNIQUE (Name);

ALTER TABLE FACULTY
MODIFY Name VARCHAR2(50) 
NOT NULL;

ALTER TABLE TEACHER
ADD CONSTRAINT Tch_PK
PRIMARY KEY (TchPK);

ALTER TABLE FACULTY
ADD CONSTRAINT Dean_FK
FOREIGN KEY (DeanFK)
REFERENCES TEACHER (TchPK)
ON DELETE SET NULL;

ALTER TABLE FACULTY
ADD CONSTRAINT Building_CHECK
CHECK (BUILDING IN ('1','2','3','4','5','6','7','8','9','10'));

ALTER TABLE FACULTY
ADD CONSTRAINT Fund_CHECK
CHECK (Fund > 100000.00);

ALTER TABLE DEPARTMENT
ADD CONSTRAINT Dep_PK
PRIMARY KEY (DepPK);

ALTER TABLE DEPARTMENT
ADD CONSTRAINT Fac_FK
FOREIGN KEY (FacFK)
REFERENCES FACULTY (FacPK)
ON DELETE CASCADE;

ALTER TABLE DEPARTMENT
MODIFY Name VARCHAR2(50) NOT NULL;

ALTER TABLE DEPARTMENT
ADD CONSTRAINT Head_FK
FOREIGN KEY (HeadFK)
REFERENCES TEACHER (TchPK)
ON DELETE SET NULL;----------------------------------?????????

ALTER TABLE DEPARTMENT
ADD CONSTRAINT Building_CHECK_DEPARTMENT
CHECK (BUILDING IN ('1','2','3','4','5','6','7','8','9','10'));

ALTER TABLE DEPARTMENT
ADD CONSTRAINT Fund_CHECK_DEPARTMENT
CHECK (Fund BETWEEN 20000.00 AND 100000.00);

ALTER TABLE DEPARTMENT
ADD CONSTRAINT Fac_UNIQUE
UNIQUE (FacFK,Name);

ALTER TABLE TEACHER
ADD CONSTRAINT Dep_FK
FOREIGN KEY (DepFK)
REFERENCES DEPARTMENT (DepPK)
ON DELETE SET NULL;

ALTER TABLE TEACHER
MODIFY Name VARCHAR2(50) NOT NULL;

ALTER TABLE TEACHER
ADD CONSTRAINT Post_CHECK
CHECK (Post IN ('????????','????????','??????','????????'));

ALTER TABLE TEACHER
ADD CONSTRAINT Tel_CHECK
CHECK (REGEXP_LIKE (Tel, '[0-9]{7}$'));

ALTER TABLE TEACHER
ADD CONSTRAINT Hiredate_CHECK_NOTNULL
CHECK (Hiredate > To_DATE('01.01.1950','DD.MM.YYYY') AND Hiredate IS NOT NULL);------------------------????????

ALTER TABLE TEACHER
ADD CONSTRAINT Salary_CHECK_NOTNULL
CHECK (Salary > 1000 AND Salary IS NOT NULL);

ALTER TABLE TEACHER
ADD CONSTRAINT Commission_CHECK
CHECK (Commission >=0 AND Commission < Salary/2);

ALTER TABLE TEACHER
MODIFY (Commission DEFAULT 0);

ALTER TABLE TEACHER
ADD CONSTRAINT Chief_FK
FOREIGN KEY (ChiefFK)
REFERENCES TEACHER (TchPK)
ON DELETE SET NULL;

ALTER TABLE TEACHER
ADD CONSTRAINT Cheif_CHECK
CHECK (ChiefFK != TchPK);

ALTER TABLE TEACHER
ADD CONSTRAINT S_PLUS_C
CHECK( SALARY + COMMISSION BETWEEN 1000 AND 3000);

ALTER TABLE SGROUP
ADD CONSTRAINT Grp_PK
PRIMARY KEY (GrpPK);

ALTER TABLE SGROUP
ADD CONSTRAINT Dep_FK_SGROUP
FOREIGN KEY (DepFK)
REFERENCES DEPARTMENT (DepPK)
ON DELETE SET NULL;

ALTER TABLE SGROUP
ADD CONSTRAINT Course_CHECK
CHECK (Course IN ('1','2','3','4','5','6'));

ALTER TABLE SGROUP
ADD CONSTRAINT Num_CHECK
CHECK (Num BETWEEN 0 AND 700);

ALTER TABLE SGROUP
ADD CONSTRAINT Quantity_CHECK
CHECK (Quantity BETWEEN 1 AND 50);

ALTER TABLE SGROUP
ADD CONSTRAINT Curator_FK
FOREIGN KEY (Curator)
REFERENCES TEACHER (TchPK)
ON DELETE SET NULL;

ALTER TABLE SGROUP
ADD CONSTRAINT Rating_CHECK
CHECK (Rating BETWEEN 0 AND 100);

ALTER TABLE SGROUP
MODIFY(Rating DEFAULT 0);

ALTER TABLE SGROUP
ADD CONSTRAINT DepFK_Num_UNIQ
UNIQUE(DepFK, Num);

ALTER TABLE SGROUP
ADD CONSTRAINT DepFK_Curator_UNIQ
UNIQUE(DepFK, Curator);

ALTER TABLE SUBJECT
ADD CONSTRAINT Sbj_PK
PRIMARY KEY (SbjPK);

ALTER TABLE SUBJECT
ADD CONSTRAINT Name_UNIQUE_SUBJECT
UNIQUE (Name);

ALTER TABLE SUBJECT
MODIFY Name VARCHAR2(50) NOT NULL;

ALTER TABLE ROOM
ADD CONSTRAINT Rom_PK
PRIMARY KEY (RomPK);

ALTER TABLE ROOM
MODIFY Num NUMBER(4) NOT NULL;

ALTER TABLE ROOM
ADD CONSTRAINT Seats_CHECK
CHECK (Seats BETWEEN 1 AND 300);

ALTER TABLE ROOM
ADD CONSTRAINT Floor_CHECK
CHECK (Floor BETWEEN 1 AND 16);

ALTER TABLE ROOM
ADD CONSTRAINT Building_CHECK_ROOM
CHECK (Floor IN ('1','2','3','4','5','6','7','8','9','10'));

ALTER TABLE ROOM
ADD CONSTRAINT Num_Building_UNIQUE
UNIQUE (Num, Building);

ALTER TABLE LECTURE
ADD CONSTRAINT Tch_FK
FOREIGN KEY (TchFK)
REFERENCES TEACHER (TchPK)
ON DELETE SET NULL;

ALTER TABLE LECTURE 
ADD CONSTRAINT Grp_FK
FOREIGN KEY (GrpFK)
REFERENCES SGROUP (GrpPK)
ON DELETE SET NULL;

ALTER TABLE LECTURE
ADD CONSTRAINT SBJ_FK
FOREIGN KEY(SBJFK)
REFERENCES SUBJECT(SBJPK)
ON DELETE CASCADE;

ALTER TABLE LECTURE
ADD CONSTRAINT ROM_FK
FOREIGN KEY(ROMFK)
REFERENCES ROOM(ROMPK)
ON DELETE SET NULL;

ALTER TABLE LECTURE
ADD CONSTRAINT TYPE_LES
CHECK(TYPE IN('???ֲ?','???????????', '??̲???','????????'));

ALTER TABLE LECTURE
ADD CONSTRAINT DAY_LES
CHECK(DAY IN('???','???', '??','???', '??', '???', '???'));

ALTER TABLE LECTURE
ADD CONSTRAINT WEEK_CH
CHECK (WEEK BETWEEN 1 AND 2);

ALTER TABLE LECTURE
ADD CONSTRAINT LESSON_CH
CHECK (WEEK BETWEEN 1 AND 8);

ALTER TABLE LECTURE
ADD CONSTRAINT GRP_D_W_L_U
UNIQUE(GRPFK,DAY,WEEK,LESSON);

ALTER TABLE LECTURE
ADD CONSTRAINT GRP_T_D_W_L_U
UNIQUE(TCHFK,DAY,WEEK,LESSON);