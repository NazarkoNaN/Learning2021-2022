--Foreign Key Constraint

ALTER TABLE HUMAN
ADD CONSTRAINT UnitFK_HUMAN
FOREIGN KEY (UnitFK)
REFERENCES UNIT (UNITPK)
ON DELETE CASCADE;

ALTER TABLE HUMAN
ADD CONSTRAINT ProfFK_HUMAN
FOREIGN KEY (ProfFK)
REFERENCES PROFESSION (ProfPK)
ON DELETE CASCADE;

ALTER TABLE CERTIFICATION
ADD CONSTRAINT Certific_typeFK_CERTIFICATION
FOREIGN KEY (Certific_typeFK)
REFERENCES CERTIFICATION_TYPE (Certific_typePK)
ON DELETE CASCADE;

ALTER TABLE CERTIFICATION
ADD CONSTRAINT HumanFK_CERTIFICATION
FOREIGN KEY (HumanFK)
REFERENCES HUMAN (HumanPK)
ON DELETE CASCADE;

ALTER TABLE DOCUMENTS
ADD CONSTRAINT HumanFK_DOCUMENTS
FOREIGN KEY (HumanFK)
REFERENCES HUMAN (HumanPK)
ON DELETE CASCADE;

ALTER TABLE UNIT
ADD CONSTRAINT DepFK_UNIT
FOREIGN KEY (DepFK)
REFERENCES DEPARTMENT_HUMAN (DepPK)
ON DELETE CASCADE;

ALTER TABLE UNIT
ADD CONSTRAINT LEADER_UNIT
FOREIGN KEY (LEADER)
REFERENCES HUMAN (HumanPK)
ON DELETE CASCADE;

ALTER TABLE DEPARTMENT_HUMAN
ADD CONSTRAINT LEADER_DEPARTMENT_HUMAN
FOREIGN KEY (LEADER)
REFERENCES HUMAN (HumanPK)
ON DELETE CASCADE;

--Unique constraint

ALTER TABLE PROFESSION
ADD CONSTRAINT Name_PROFESSION_UNIQUE
UNIQUE(NAME);

ALTER TABLE CERTIFICATION_TYPE
ADD CONSTRAINT Name_CERTIFICATION_TYPE_UNIQUE
UNIQUE(NAME);

ALTER TABLE CERTIFICATION
ADD CONSTRAINT CERTIFICATION_UNIQUE
UNIQUE(HumanFK,Certific_typeFK,Exam_date);

ALTER TABLE DOCUMENTS
ADD CONSTRAINT Pasporid_DOCUMENTS_UNIQUE
UNIQUE(Pasporid);

ALTER TABLE DOCUMENTS
ADD CONSTRAINT Identification_code_DOCUMENTS_UNIQUE
UNIQUE(Identification_code);

ALTER TABLE DOCUMENTS
ADD CONSTRAINT Work_book_DOCUMENTS_UNIQUE
UNIQUE(Work_book);

ALTER TABLE DOCUMENTS
ADD CONSTRAINT HumanFK_DOCUMENTS_UNIQUE
UNIQUE(HumanFK);

ALTER TABLE UNIT
ADD CONSTRAINT LEADER_UNIT_UNIQUE
UNIQUE(LEADER);

ALTER TABLE DEPARTMENT_HUMAN
ADD CONSTRAINT LEADER_DEPARTMENT_HUMAN_UNIQUE
UNIQUE(LEADER);