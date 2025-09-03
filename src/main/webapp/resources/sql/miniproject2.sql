--------------------------------------------------------
--  ������ ������ - ������-9��-03-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 163 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MEMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 8 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ORDER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 17 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOARDTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BOARDTBL" 
   (	"BNUM" NUMBER, 
	"BTITLE" VARCHAR2(200 BYTE), 
	"BCONTENT" VARCHAR2(200 BYTE), 
	"BWRITER" VARCHAR2(20 BYTE), 
	"BHIT" NUMBER, 
	"BDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBERTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."MEMBERTBL" 
   (	"MEMBERNUM" NUMBER, 
	"MEMBERID" VARCHAR2(20 BYTE), 
	"MEMBERPW" VARCHAR2(20 BYTE), 
	"MEMBERNAME" VARCHAR2(20 BYTE), 
	"MEMBERDATE" DATE DEFAULT sysdate
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDERTBL
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ORDERTBL" 
   (	"ORDERID" NUMBER, 
	"ORDERNAME" VARCHAR2(200 BYTE), 
	"USERID" VARCHAR2(20 BYTE), 
	"ORDERDATE" DATE DEFAULT sysdate, 
	"ORDERPRICE" NUMBER, 
	"ORDERQUANTITY" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.BOARDTBL
SET DEFINE OFF;
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (9,'���� ���� �� ���� �Դϴ�.1�� ��','���� ���� �� ���� �Դϴ�.1�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (7,'�Խñ� ����11','���� ����11','tiger',3,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (10,'���� ���� �� ���� �Դϴ�.2�� ��','���� ���� �� ���� �Դϴ�.2�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (11,'���� ���� �� ���� �Դϴ�.3�� ��','���� ���� �� ���� �Դϴ�.3�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (12,'���� ���� �� ���� �Դϴ�.4�� ��','���� ���� �� ���� �Դϴ�.4�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (13,'���� ���� �� ���� �Դϴ�.5�� ��','���� ���� �� ���� �Դϴ�.5�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (14,'���� ���� �� ���� �Դϴ�.6�� ��','���� ���� �� ���� �Դϴ�.6�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (15,'���� ���� �� ���� �Դϴ�.7�� ��','���� ���� �� ���� �Դϴ�.7�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (16,'���� ���� �� ���� �Դϴ�.8�� ��','���� ���� �� ���� �Դϴ�.8�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (17,'���� ���� �� ���� �Դϴ�.9�� ��','���� ���� �� ���� �Դϴ�.9�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (18,'���� ���� �� ���� �Դϴ�.10�� ��','���� ���� �� ���� �Դϴ�.10�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (19,'���� ���� �� ���� �Դϴ�.11�� ��','���� ���� �� ���� �Դϴ�.11�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (20,'���� ���� �� ���� �Դϴ�.12�� ��','���� ���� �� ���� �Դϴ�.12�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (21,'���� ���� �� ���� �Դϴ�.13�� ��','���� ���� �� ���� �Դϴ�.13�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (22,'���� ���� �� ���� �Դϴ�.14�� ��','���� ���� �� ���� �Դϴ�.14�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (23,'���� ���� �� ���� �Դϴ�.15�� ��','���� ���� �� ���� �Դϴ�.15�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (24,'���� ���� �� ���� �Դϴ�.16�� ��','���� ���� �� ���� �Դϴ�.16�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (25,'���� ���� �� ���� �Դϴ�.17�� ��','���� ���� �� ���� �Դϴ�.17�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (26,'���� ���� �� ���� �Դϴ�.18�� ��','���� ���� �� ���� �Դϴ�.18�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (27,'���� ���� �� ���� �Դϴ�.19�� ��','���� ���� �� ���� �Դϴ�.19�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (28,'���� ���� �� ���� �Դϴ�.20�� ��','���� ���� �� ���� �Դϴ�.20�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (29,'���� ���� �� ���� �Դϴ�.21�� ��','���� ���� �� ���� �Դϴ�.21�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (30,'���� ���� �� ���� �Դϴ�.22�� ��','���� ���� �� ���� �Դϴ�.22�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (31,'���� ���� �� ���� �Դϴ�.23�� ��','���� ���� �� ���� �Դϴ�.23�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (32,'���� ���� �� ���� �Դϴ�.24�� ��','���� ���� �� ���� �Դϴ�.24�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (33,'���� ���� �� ���� �Դϴ�.25�� ��','���� ���� �� ���� �Դϴ�.25�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (34,'���� ���� �� ���� �Դϴ�.26�� ��','���� ���� �� ���� �Դϴ�.26�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (35,'���� ���� �� ���� �Դϴ�.27�� ��','���� ���� �� ���� �Դϴ�.27�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (36,'���� ���� �� ���� �Դϴ�.28�� ��','���� ���� �� ���� �Դϴ�.28�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (37,'���� ���� �� ���� �Դϴ�.29�� ��','���� ���� �� ���� �Դϴ�.29�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (38,'���� ���� �� ���� �Դϴ�.30�� ��','���� ���� �� ���� �Դϴ�.30�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (39,'���� ���� �� ���� �Դϴ�.31�� ��','���� ���� �� ���� �Դϴ�.31�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (40,'���� ���� �� ���� �Դϴ�.32�� ��','���� ���� �� ���� �Դϴ�.32�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (41,'���� ���� �� ���� �Դϴ�.33�� ��','���� ���� �� ���� �Դϴ�.33�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (42,'���� ���� �� ���� �Դϴ�.34�� ��','���� ���� �� ���� �Դϴ�.34�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (43,'���� ���� �� ���� �Դϴ�.35�� ��','���� ���� �� ���� �Դϴ�.35�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (44,'���� ���� �� ���� �Դϴ�.36�� ��','���� ���� �� ���� �Դϴ�.36�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (45,'���� ���� �� ���� �Դϴ�.37�� ��','���� ���� �� ���� �Դϴ�.37�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (46,'���� ���� �� ���� �Դϴ�.38�� ��','���� ���� �� ���� �Դϴ�.38�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (47,'���� ���� �� ���� �Դϴ�.39�� ��','���� ���� �� ���� �Դϴ�.39�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (48,'���� ���� �� ���� �Դϴ�.40�� ��','���� ���� �� ���� �Դϴ�.40�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (49,'���� ���� �� ���� �Դϴ�.41�� ��','���� ���� �� ���� �Դϴ�.41�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (50,'���� ���� �� ���� �Դϴ�.42�� ��','���� ���� �� ���� �Դϴ�.42�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (51,'���� ���� �� ���� �Դϴ�.43�� ��','���� ���� �� ���� �Դϴ�.43�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (52,'���� ���� �� ���� �Դϴ�.44�� ��','���� ���� �� ���� �Դϴ�.44�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (53,'���� ���� �� ���� �Դϴ�.45�� ��','���� ���� �� ���� �Դϴ�.45�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (54,'���� ���� �� ���� �Դϴ�.46�� ��','���� ���� �� ���� �Դϴ�.46�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (55,'���� ���� �� ���� �Դϴ�.47�� ��','���� ���� �� ���� �Դϴ�.47�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (56,'���� ���� �� ���� �Դϴ�.48�� ��','���� ���� �� ���� �Դϴ�.48�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (57,'���� ���� �� ���� �Դϴ�.49�� ��','���� ���� �� ���� �Դϴ�.49�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (58,'���� ���� �� ���� �Դϴ�.50�� ��','���� ���� �� ���� �Դϴ�.50�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (59,'���� ���� �� ���� �Դϴ�.51�� ��','���� ���� �� ���� �Դϴ�.51�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (60,'���� ���� �� ���� �Դϴ�.52�� ��','���� ���� �� ���� �Դϴ�.52�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (61,'���� ���� �� ���� �Դϴ�.53�� ��','���� ���� �� ���� �Դϴ�.53�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (62,'���� ���� �� ���� �Դϴ�.54�� ��','���� ���� �� ���� �Դϴ�.54�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (63,'���� ���� �� ���� �Դϴ�.55�� ��','���� ���� �� ���� �Դϴ�.55�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (64,'���� ���� �� ���� �Դϴ�.56�� ��','���� ���� �� ���� �Դϴ�.56�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (65,'���� ���� �� ���� �Դϴ�.57�� ��','���� ���� �� ���� �Դϴ�.57�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (66,'���� ���� �� ���� �Դϴ�.58�� ��','���� ���� �� ���� �Դϴ�.58�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (67,'���� ���� �� ���� �Դϴ�.59�� ��','���� ���� �� ���� �Դϴ�.59�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (68,'���� ���� �� ���� �Դϴ�.60�� ��','���� ���� �� ���� �Դϴ�.60�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (69,'���� ���� �� ���� �Դϴ�.61�� ��','���� ���� �� ���� �Դϴ�.61�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (70,'���� ���� �� ���� �Դϴ�.62�� ��','���� ���� �� ���� �Դϴ�.62�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (71,'���� ���� �� ���� �Դϴ�.63�� ��','���� ���� �� ���� �Դϴ�.63�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (72,'���� ���� �� ���� �Դϴ�.64�� ��','���� ���� �� ���� �Դϴ�.64�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (73,'���� ���� �� ���� �Դϴ�.65�� ��','���� ���� �� ���� �Դϴ�.65�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (74,'���� ���� �� ���� �Դϴ�.66�� ��','���� ���� �� ���� �Դϴ�.66�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (75,'���� ���� �� ���� �Դϴ�.67�� ��','���� ���� �� ���� �Դϴ�.67�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (76,'���� ���� �� ���� �Դϴ�.68�� ��','���� ���� �� ���� �Դϴ�.68�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (77,'���� ���� �� ���� �Դϴ�.69�� ��','���� ���� �� ���� �Դϴ�.69�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (78,'���� ���� �� ���� �Դϴ�.70�� ��','���� ���� �� ���� �Դϴ�.70�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (79,'���� ���� �� ���� �Դϴ�.71�� ��','���� ���� �� ���� �Դϴ�.71�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (80,'���� ���� �� ���� �Դϴ�.72�� ��','���� ���� �� ���� �Դϴ�.72�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (81,'���� ���� �� ���� �Դϴ�.73�� ��','���� ���� �� ���� �Դϴ�.73�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (82,'���� ���� �� ���� �Դϴ�.74�� ��','���� ���� �� ���� �Դϴ�.74�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (83,'���� ���� �� ���� �Դϴ�.75�� ��','���� ���� �� ���� �Դϴ�.75�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (84,'���� ���� �� ���� �Դϴ�.76�� ��','���� ���� �� ���� �Դϴ�.76�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (85,'���� ���� �� ���� �Դϴ�.77�� ��','���� ���� �� ���� �Դϴ�.77�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (86,'���� ���� �� ���� �Դϴ�.78�� ��','���� ���� �� ���� �Դϴ�.78�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (87,'���� ���� �� ���� �Դϴ�.79�� ��','���� ���� �� ���� �Դϴ�.79�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (88,'���� ���� �� ���� �Դϴ�.80�� ��','���� ���� �� ���� �Դϴ�.80�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (89,'���� ���� �� ���� �Դϴ�.81�� ��','���� ���� �� ���� �Դϴ�.81�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (90,'���� ���� �� ���� �Դϴ�.82�� ��','���� ���� �� ���� �Դϴ�.82�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (91,'���� ���� �� ���� �Դϴ�.83�� ��','���� ���� �� ���� �Դϴ�.83�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (92,'���� ���� �� ���� �Դϴ�.84�� ��','���� ���� �� ���� �Դϴ�.84�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (93,'���� ���� �� ���� �Դϴ�.85�� ��','���� ���� �� ���� �Դϴ�.85�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (94,'���� ���� �� ���� �Դϴ�.86�� ��','���� ���� �� ���� �Դϴ�.86�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (95,'���� ���� �� ���� �Դϴ�.87�� ��','���� ���� �� ���� �Դϴ�.87�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (96,'���� ���� �� ���� �Դϴ�.88�� ��','���� ���� �� ���� �Դϴ�.88�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (97,'���� ���� �� ���� �Դϴ�.89�� ��','���� ���� �� ���� �Դϴ�.89�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (98,'���� ���� �� ���� �Դϴ�.90�� ��','���� ���� �� ���� �Դϴ�.90�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (99,'���� ���� �� ���� �Դϴ�.91�� ��','���� ���� �� ���� �Դϴ�.91�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (100,'���� ���� �� ���� �Դϴ�.92�� ��','���� ���� �� ���� �Դϴ�.92�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (101,'���� ���� �� ���� �Դϴ�.93�� ��','���� ���� �� ���� �Դϴ�.93�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (102,'���� ���� �� ���� �Դϴ�.94�� ��','���� ���� �� ���� �Դϴ�.94�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (103,'���� ���� �� ���� �Դϴ�.95�� ��','���� ���� �� ���� �Դϴ�.95�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (104,'���� ���� �� ���� �Դϴ�.96�� ��','���� ���� �� ���� �Դϴ�.96�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (105,'���� ���� �� ���� �Դϴ�.97�� ��','���� ���� �� ���� �Դϴ�.97�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (106,'���� ���� �� ���� �Դϴ�.98�� ��','���� ���� �� ���� �Դϴ�.98�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (107,'���� ���� �� ���� �Դϴ�.99�� ��','���� ���� �� ���� �Դϴ�.99�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (108,'���� ���� �� ���� �Դϴ�.100�� ��','���� ���� �� ���� �Դϴ�.100�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (109,'���� ���� �� ���� �Դϴ�.101�� ��','���� ���� �� ���� �Դϴ�.101�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (110,'���� ���� �� ���� �Դϴ�.102�� ��','���� ���� �� ���� �Դϴ�.102�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (111,'���� ���� �� ���� �Դϴ�.103�� ��','���� ���� �� ���� �Դϴ�.103�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (112,'���� ���� �� ���� �Դϴ�.104�� ��','���� ���� �� ���� �Դϴ�.104�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (113,'���� ���� �� ���� �Դϴ�.105�� ��','���� ���� �� ���� �Դϴ�.105�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (114,'���� ���� �� ���� �Դϴ�.106�� ��','���� ���� �� ���� �Դϴ�.106�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (115,'���� ���� �� ���� �Դϴ�.107�� ��','���� ���� �� ���� �Դϴ�.107�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (116,'���� ���� �� ���� �Դϴ�.108�� ��','���� ���� �� ���� �Դϴ�.108�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (117,'���� ���� �� ���� �Դϴ�.109�� ��','���� ���� �� ���� �Դϴ�.109�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (118,'���� ���� �� ���� �Դϴ�.110�� ��','���� ���� �� ���� �Դϴ�.110�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (119,'���� ���� �� ���� �Դϴ�.111�� ��','���� ���� �� ���� �Դϴ�.111�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (120,'���� ���� �� ���� �Դϴ�.112�� ��','���� ���� �� ���� �Դϴ�.112�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (121,'���� ���� �� ���� �Դϴ�.113�� ��','���� ���� �� ���� �Դϴ�.113�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (122,'���� ���� �� ���� �Դϴ�.114�� ��','���� ���� �� ���� �Դϴ�.114�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (123,'���� ���� �� ���� �Դϴ�.115�� ��','���� ���� �� ���� �Դϴ�.115�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (124,'���� ���� �� ���� �Դϴ�.116�� ��','���� ���� �� ���� �Դϴ�.116�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (125,'���� ���� �� ���� �Դϴ�.117�� ��','���� ���� �� ���� �Դϴ�.117�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (126,'���� ���� �� ���� �Դϴ�.118�� ��','���� ���� �� ���� �Դϴ�.118�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (127,'���� ���� �� ���� �Դϴ�.119�� ��','���� ���� �� ���� �Դϴ�.119�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (128,'���� ���� �� ���� �Դϴ�.120�� ��','���� ���� �� ���� �Դϴ�.120�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (129,'���� ���� �� ���� �Դϴ�.121�� ��','���� ���� �� ���� �Դϴ�.121�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (130,'���� ���� �� ���� �Դϴ�.122�� ��','���� ���� �� ���� �Դϴ�.122�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (131,'���� ���� �� ���� �Դϴ�.123�� ��','���� ���� �� ���� �Դϴ�.123�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (132,'���� ���� �� ���� �Դϴ�.124�� ��','���� ���� �� ���� �Դϴ�.124�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (133,'���� ���� �� ���� �Դϴ�.125�� ��','���� ���� �� ���� �Դϴ�.125�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (134,'���� ���� �� ���� �Դϴ�.126�� ��','���� ���� �� ���� �Դϴ�.126�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (135,'���� ���� �� ���� �Դϴ�.127�� ��','���� ���� �� ���� �Դϴ�.127�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (136,'���� ���� �� ���� �Դϴ�.128�� ��','���� ���� �� ���� �Դϴ�.128�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (137,'���� ���� �� ���� �Դϴ�.129�� ��','���� ���� �� ���� �Դϴ�.129�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (138,'���� ���� �� ���� �Դϴ�.130�� ��','���� ���� �� ���� �Դϴ�.130�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (139,'���� ���� �� ���� �Դϴ�.131�� ��','���� ���� �� ���� �Դϴ�.131�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (140,'���� ���� �� ���� �Դϴ�.132�� ��','���� ���� �� ���� �Դϴ�.132�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (141,'���� ���� �� ���� �Դϴ�.133�� ��','���� ���� �� ���� �Դϴ�.133�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (142,'���� ���� �� ���� �Դϴ�.134�� ��','���� ���� �� ���� �Դϴ�.134�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (143,'���� ���� �� ���� �Դϴ�.135�� ��','���� ���� �� ���� �Դϴ�.135�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (144,'���� ���� �� ���� �Դϴ�.136�� ��','���� ���� �� ���� �Դϴ�.136�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (145,'���� ���� �� ���� �Դϴ�.137�� ��','���� ���� �� ���� �Դϴ�.137�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (146,'���� ���� �� ���� �Դϴ�.138�� ��','���� ���� �� ���� �Դϴ�.138�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (147,'���� ���� �� ���� �Դϴ�.139�� ��','���� ���� �� ���� �Դϴ�.139�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (148,'���� ���� �� ���� �Դϴ�.140�� ��','���� ���� �� ���� �Դϴ�.140�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (149,'���� ���� �� ���� �Դϴ�.141�� ��','���� ���� �� ���� �Դϴ�.141�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (150,'���� ���� �� ���� �Դϴ�.150�� ��','���� ���� �� ���� �Դϴ�.150�� �� �����Դϴ�.111','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (151,'���� ���� �� ���� �Դϴ�.143�� ��','���� ���� �� ���� �Դϴ�.143�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (152,'���� ���� �� ���� �Դϴ�.144�� ��','���� ���� �� ���� �Դϴ�.144�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (153,'���� ���� �� ���� �Դϴ�.145�� ��','���� ���� �� ���� �Դϴ�.145�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (154,'���� ���� �� ���� �Դϴ�.146�� ��','���� ���� �� ���� �Դϴ�.146�� �� �����Դϴ�.','tiger',0,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (155,'���� ���� �� ���� �Դϴ�.147�� ��','���� ���� �� ���� �Դϴ�.147�� �� �����Դϴ�.','tiger',5,to_date('25/09/02','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (160,'�׽�Ʈ�Խ�����','�׽�Ʈ�Խó���','ȣ������',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (159,'asdasd','asdasd','tiger',2,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (161,'�׽�Ʈ�Խ�����','����','����',0,to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.BOARDTBL (BNUM,BTITLE,BCONTENT,BWRITER,BHIT,BDATE) values (162,'����','����','lion',5,to_date('25/09/03','RR/MM/DD'));
REM INSERTING into SYSTEM.MEMBERTBL
SET DEFINE OFF;
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (1,'tiger','123123','Ÿ�̰�',to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (2,'tiger2','12345','�̼���',to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (4,'tiger3','12345','������',to_date('25/09/01','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (6,'lion','123123','���̾�',to_date('25/09/03','RR/MM/DD'));
Insert into SYSTEM.MEMBERTBL (MEMBERNUM,MEMBERID,MEMBERPW,MEMBERNAME,MEMBERDATE) values (7,'ȫ�������','123456','ȫ����',to_date('25/09/03','RR/MM/DD'));
REM INSERTING into SYSTEM.ORDERTBL
SET DEFINE OFF;
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (1,'TV','tiger',to_date('25/09/03','RR/MM/DD'),1000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (2,'TV','lion',to_date('25/09/03','RR/MM/DD'),1000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (3,'phone','tiger',to_date('25/09/03','RR/MM/DD'),1000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (4,'print','lion',to_date('25/09/03','RR/MM/DD'),1000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (5,'phone','lion',to_date('25/09/03','RR/MM/DD'),1000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (6,'print','tiger',to_date('25/09/03','RR/MM/DD'),1000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (7,'TV','lion',to_date('25/09/03','RR/MM/DD'),2222,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (8,'TV','lion',to_date('25/09/03','RR/MM/DD'),2222,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (9,'TV','lion',to_date('25/09/03','RR/MM/DD'),2222,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (10,'TV','lion',to_date('25/09/03','RR/MM/DD'),2222,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (11,'TV','lion',to_date('25/09/03','RR/MM/DD'),2000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (12,'TV','lion',to_date('25/09/03','RR/MM/DD'),20000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (13,'TV','lion',to_date('25/09/03','RR/MM/DD'),20000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (14,'TV','lion',to_date('25/09/03','RR/MM/DD'),20000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (15,'PRINT','tiger',to_date('25/09/03','RR/MM/DD'),10000,1);
Insert into SYSTEM.ORDERTBL (ORDERID,ORDERNAME,USERID,ORDERDATE,ORDERPRICE,ORDERQUANTITY) values (16,'PRINT','tiger',to_date('25/09/03','RR/MM/DD'),10000,1);
