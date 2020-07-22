--------------------------------------------------------
--  파일이 생성됨 - 수요일-7월-22-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence GRADE_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "SYS_UPI"."GRADE_NUM"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INDICATORS_LOG_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "SYS_UPI"."INDICATORS_LOG_NUM"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INDICATORS_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "SYS_UPI"."INDICATORS_NUM"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table GRADE_TB
--------------------------------------------------------
DROP TABLE "REPORT_LOG_TB" CASCADE CONSTRAINTS;
DROP TABLE "INDICATORS_LOG_TB" CASCADE CONSTRAINTS;
DROP TABLE "GRADE_TB" CASCADE CONSTRAINTS;
DROP TABLE "LOG_TB" CASCADE CONSTRAINTS;
DROP TABLE "INDICATORS_TB" CASCADE CONSTRAINTS;
DROP TABLE "REPORT_TB" CASCADE CONSTRAINTS;
DROP TABLE "RECORD_TB" CASCADE CONSTRAINTS;
DROP TABLE "USER_TB" CASCADE CONSTRAINTS;

  CREATE TABLE "SYS_UPI"."GRADE_TB" 
   (	"GRADE_NUM" NUMBER(10,0), 
	"A_GRADE" NUMBER(3,0), 
	"B_GRADE" NUMBER(3,0), 
	"D_GRADE" NUMBER(3,0), 
	"A_MEASURE" VARCHAR2(50 BYTE), 
	"B_MEASURE" VARCHAR2(20 BYTE), 
	"D_MEASURE" VARCHAR2(20 BYTE), 
	"USER_ID" VARCHAR2(10 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"ACTION_CODE" NUMBER(1,0), 
	"RECORD_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."GRADE_NUM" IS '등급번호PK';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."A_GRADE" IS 'A등급';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."B_GRADE" IS 'B등급';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."D_GRADE" IS 'D등급';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."A_MEASURE" IS '
A등급 조치';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."B_MEASURE" IS 'B등급 조치';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."D_MEASURE" IS 'D등급 조치';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."USER_ID" IS '유저아이디';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."USER_NAME" IS '유저이름';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."ACTION_CODE" IS '행위코드';
   COMMENT ON COLUMN "SYS_UPI"."GRADE_TB"."RECORD_DATE" IS '기록날짜';
--------------------------------------------------------
--  DDL for Table INDICATORS_TB
--------------------------------------------------------

  CREATE TABLE "SYS_UPI"."INDICATORS_TB" 
   (	"CONTROL_NUM" NUMBER(10,0), 
	"INDICATORS_NUM" NUMBER(10,0), 
	"INDICATORS_NAME" VARCHAR2(100 BYTE), 
	"IS_BEST" NUMBER(1,0), 
	"IS_AGENCY" NUMBER(1,0), 
	"IS_AHA" NUMBER(1,0), 
	"IS_LINC" NUMBER(1,0), 
	"IS_TYPE3" NUMBER(1,0), 
	"ELEMENTS" VARCHAR2(100 BYTE), 
	"COL_METHOD" VARCHAR2(50 BYTE), 
	"EVAL_METHOD" VARCHAR2(8 BYTE), 
	"EVAL_STANDARD" VARCHAR2(50 BYTE), 
	"DIVISION_NAME" VARCHAR2(50 BYTE), 
	"TARGET_VAL" NUMBER(6,0), 
	"FORMULA" VARCHAR2(200 BYTE), 
	"IS_CORE" NUMBER(1,0), 
	"IS_USE" NUMBER(1,0) DEFAULT 0, 
	"USER_ID" VARCHAR2(10 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"ACTION_CODE" NUMBER(1,0), 
	"RECORD_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."CONTROL_NUM" IS '지표번호';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."INDICATORS_NUM" IS '관리번호 	PK';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."INDICATORS_NAME" IS '성과지표명';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."IS_BEST" IS '대학중장기발전계획 BEST지표';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."IS_AGENCY" IS '기간평가 인증';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."IS_AHA" IS '혁신지원 AHA';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."IS_LINC" IS '사회맞춤형 LINC+	';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."IS_TYPE3" IS '3유형';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."ELEMENTS" IS '요소이름 구분자 사용 ex) 취업자,취업대상자';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."COL_METHOD" IS '수집방법';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."EVAL_METHOD" IS '평가방법';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."EVAL_STANDARD" IS '평가기준 ';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."DIVISION_NAME" IS '관리부서 명';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."TARGET_VAL" IS '목표값';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."FORMULA" IS '산출 식';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."IS_CORE" IS '핵심 여부 (1-True, 0-False)';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."IS_USE" IS '사용여부(0-사용, 1-미사용)';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."USER_ID" IS '유저 아이디';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."USER_NAME" IS '유저 이름';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."ACTION_CODE" IS '행위 코드';
   COMMENT ON COLUMN "SYS_UPI"."INDICATORS_TB"."RECORD_DATE" IS '기록 날짜';
--------------------------------------------------------
--  DDL for Table RECORD_TB
--------------------------------------------------------

  CREATE TABLE "SYS_UPI"."RECORD_TB" 
   (	"RECORD_NUM" NUMBER(10,0), 
	"INDICATORS_NUM" NUMBER(10,0), 
	"INDICATORS_NAME" VARCHAR2(100 BYTE), 
	"IS_BEST" NUMBER(1,0), 
	"IS_AGENCY" NUMBER(1,0), 
	"IS_AHA" NUMBER(1,0), 
	"IS_LINC" NUMBER(1,0), 
	"IS_TYPE3" NUMBER(1,0), 
	"TARGET_VAL" VARCHAR2(20 BYTE), 
	"ELEMENT_VAL" VARCHAR2(100 BYTE), 
	"PRESENT_VAL" VARCHAR2(20 BYTE), 
	"GRADE" VARCHAR2(3 BYTE), 
	"ACHIEVE_VAL" NUMBER(6,0), 
	"USER_ID" VARCHAR2(10 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"ACTION_CODE" NUMBER(1,0), 
	"RECORD_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."RECORD_NUM" IS '기록 번호';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."INDICATORS_NUM" IS '관리번호(지표번호)';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."INDICATORS_NAME" IS '성과지표명 		';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."IS_BEST" IS '대학중장기발전계획 BEST지표';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."IS_AGENCY" IS '기간평가 인증
';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."IS_AHA" IS '현식지원 AHA
';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."IS_LINC" IS '사회맞춤형 LINC+';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."IS_TYPE3" IS '3유형';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."TARGET_VAL" IS '목표 값';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."ELEMENT_VAL" IS '요소 값';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."PRESENT_VAL" IS '현재 값';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."GRADE" IS '등급';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."ACHIEVE_VAL" IS '달성도';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."USER_ID" IS '유저아이디';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."USER_NAME" IS '유저이름';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."ACTION_CODE" IS '행위코드';
   COMMENT ON COLUMN "SYS_UPI"."RECORD_TB"."RECORD_DATE" IS '기준일';
--------------------------------------------------------
--  DDL for Table USER_TB
--------------------------------------------------------

  CREATE TABLE "SYS_UPI"."USER_TB" 
   (	"USER_ID" VARCHAR2(30 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"USER_PW" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYS_UPI"."USER_TB"."USER_ID" IS '유저 아이디';
   COMMENT ON COLUMN "SYS_UPI"."USER_TB"."USER_NAME" IS '유저 이름';
   COMMENT ON COLUMN "SYS_UPI"."USER_TB"."USER_PW" IS '유저 비밀번호';
REM INSERTING into SYS_UPI.GRADE_TB
SET DEFINE OFF;
REM INSERTING into SYS_UPI.INDICATORS_TB
SET DEFINE OFF;
REM INSERTING into SYS_UPI.RECORD_TB
SET DEFINE OFF;
REM INSERTING into SYS_UPI.USER_TB
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index GRADE_TB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_UPI"."GRADE_TB_PK" ON "SYS_UPI"."GRADE_TB" ("GRADE_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index INDICATORS_TB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_UPI"."INDICATORS_TB_PK" ON "SYS_UPI"."INDICATORS_TB" ("CONTROL_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RECORD_TB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_UPI"."RECORD_TB_PK" ON "SYS_UPI"."RECORD_TB" ("RECORD_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Function GET_GRADE_NUM
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SYS_UPI"."GET_GRADE_NUM" 
 RETURN NUMBER AS num NUMBER; 
BEGIN
  SELECT GRADE_NUM.NEXTVAL INTO NUM
    FROM DUAL;  
  RETURN NUM;
END GET_GRADE_NUM;









/
--------------------------------------------------------
--  DDL for Function GET_IND_LOG_NUM
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SYS_UPI"."GET_IND_LOG_NUM" 
 RETURN NUMBER AS num NUMBER; 
BEGIN
  SELECT INDICATORS_LOG_NUM.NEXTVAL INTO NUM
    FROM DUAL;  
  RETURN NUM;
END GET_IND_LOG_NUM;









/
--------------------------------------------------------
--  DDL for Function GET_IND_NOW_NUM
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SYS_UPI"."GET_IND_NOW_NUM" RETURN NUMBER AS num NUMBER;
BEGIN
  SELECT INDICATORS_NUM.CURRVAL INTO NUM
    FROM DUAL;  
  RETURN NUM;
END GET_IND_NOW_NUM;









/
--------------------------------------------------------
--  DDL for Function GET_IND_NUM
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SYS_UPI"."GET_IND_NUM" 
 RETURN NUMBER AS num NUMBER; 
BEGIN
  SELECT INDICATORS_NUM.NEXTVAL INTO NUM
    FROM DUAL;  
  RETURN NUM;
END GET_IND_NUM;









/
--------------------------------------------------------
--  Constraints for Table GRADE_TB
--------------------------------------------------------

  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("RECORD_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("ACTION_CODE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("B_MEASURE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("D_MEASURE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("GRADE_NUM" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("A_MEASURE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("A_GRADE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("B_GRADE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" MODIFY ("D_GRADE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."GRADE_TB" ADD CONSTRAINT "GRADE_TB_PK" PRIMARY KEY ("GRADE_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INDICATORS_TB
--------------------------------------------------------

  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("RECORD_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("ACTION_CODE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" ADD CONSTRAINT "INDICATORS_TB_PK" PRIMARY KEY ("CONTROL_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("CONTROL_NUM" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("IS_USE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("IS_CORE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("TARGET_VAL" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("DIVISION_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("EVAL_STANDARD" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("EVAL_METHOD" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("COL_METHOD" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("ELEMENTS" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("IS_TYPE3" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("IS_LINC" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("IS_AHA" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("IS_AGENCY" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("IS_BEST" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("INDICATORS_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."INDICATORS_TB" MODIFY ("INDICATORS_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RECORD_TB
--------------------------------------------------------

  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("ACTION_CODE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" ADD CONSTRAINT "RECORD_TB_PK" PRIMARY KEY ("RECORD_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("INDICATORS_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("INDICATORS_NUM" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("RECORD_NUM" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("RECORD_DATE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("ACHIEVE_VAL" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("GRADE" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("PRESENT_VAL" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("TARGET_VAL" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("IS_TYPE3" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("IS_LINC" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("IS_AHA" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("IS_AGENCY" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."RECORD_TB" MODIFY ("IS_BEST" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_TB
--------------------------------------------------------

  ALTER TABLE "SYS_UPI"."USER_TB" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."USER_TB" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SYS_UPI"."USER_TB" MODIFY ("USER_PW" NOT NULL ENABLE);
