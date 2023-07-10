
  CREATE TABLE "DIET" 
   (	"IDX" NUMBER(*,0) NOT NULL , 
	"DIETMEMO" VARCHAR2(2000 BYTE) NOT NULL , 
	"DIETPICTURE" VARCHAR2(1000 BYTE) DEFAULT 'no picture', 
	"DIETWRITEDATE" VARCHAR2(20 BYTE) DEFAULT sysdate NOT NULL , 
	"DIETWRITETIME" VARCHAR2(20 BYTE) DEFAULT sysdate NOT NULL , 
	 CONSTRAINT "DIET_PK" PRIMARY KEY ("IDX")
) ;

delete from DIET;
drop sequence DIET_idx_seq;
create sequence DIET_idx_seq;

  CREATE TABLE "FOOD" 
   (	"IDX" NUMBER(*,0) NOT NULL , 
	"FOODNAME" VARCHAR2(500 BYTE) NOT NULL , 
	"KCAL" NUMBER(*,0) NOT NULL , 
	"CARBS" NUMBER(*,0) NOT NULL , 
	"PROTEIN" NUMBER(*,0) NOT NULL , 
	"FAT" NUMBER(*,0) NOT NULL ENABLE, 
	 CONSTRAINT "FOOD_PK" PRIMARY KEY ("IDX")
) ;

delete from food;
drop sequence food_idx_seq;
create sequence food_idx_seq;

CREATE TABLE "FREEBOARD" 
   (   "IDX" NUMBER(*,0) NOT NULL , 
   "SUBJECT" VARCHAR2(200 BYTE) NOT NULL , 
   "CONTENT" VARCHAR2(3000 BYTE) NOT NULL , 
   "WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
   "HIT" NUMBER(*,0) DEFAULT 0, 
   "NOTICE" CHAR(3 BYTE) DEFAULT 'NO', 
   "PICTURE" CHAR(15 BYTE), 
   "COMMENTCOUNT" NUMBER(*,0) DEFAULT 0, 
   "NAME" VARCHAR2(20 BYTE) NOT NULL , 
   "ID" VARCHAR2(100 BYTE) NOT NULL , 
   "REALFILEPATH" VARCHAR2(2000 BYTE), 
    CONSTRAINT "FREEBOARD_PK" PRIMARY KEY ("IDX")
    ) ;

delete from FREEBOARD;
drop sequence FREEBOARD_idx_seq;
create sequence FREEBOARD_idx_seq;


 CREATE TABLE "FREEBOARDCOMMENT" 
   (   "IDX" NUMBER(*,0) NOT NULL , 
   "GUP" NUMBER(*,0), 
   "NAME" CHAR(20 BYTE) NOT NULL , 
   "CONTENT" VARCHAR2(2000 BYTE) NOT NULL , 
   "WRITEDATE" TIMESTAMP (6) DEFAULT sysdate, 
   "ID" VARCHAR2(100 BYTE) NOT NULL , 
    CONSTRAINT "FREEBOARDCOMMENT_PK" PRIMARY KEY ("IDX")
    ) ;

delete from FREEBOARDCOMMENT;
drop sequence FREEBOARDCOMMENT_idx_seq;
create sequence FREEBOARDCOMMENT_idx_seq;


CREATE TABLE "USERFOOD" 
   (   "IDX" NUMBER(*,0) NOT NULL , 
   "USERFOODNAME" VARCHAR2(2000 BYTE) NOT NULL , 
   "USERKCAL" FLOAT(126) NOT NULL , 
   "USERCARBS" FLOAT(126) NOT NULL , 
   "USERPROTEIN" FLOAT(126) NOT NULL , 
   "USERFAT" FLOAT(126) NOT NULL ENABLE, 
   "USERFOODTIME" VARCHAR2(500 BYTE) NOT NULL , 
   "USERFOODDATE" VARCHAR2(500 BYTE) NOT NULL , 
    CONSTRAINT "userFOOD_PK" PRIMARY KEY ("IDX")
   );

delete from USERFOOD;
drop sequence USERFOOD_idx_seq;
create sequence USERFOOD_idx_seq;


  CREATE TABLE "USERREGISTER" 
   (	"IDX" NUMBER(*,0) NOT NULL , 
	"USERNAME" VARCHAR2(20 BYTE) NOT NULL , 
	"ID" VARCHAR2(100 BYTE) NOT NULL , 
	"PASSWORD" VARCHAR2(20 BYTE) NOT NULL , 
	"EMAIL" VARCHAR2(20 BYTE) NOT NULL , 
	"GENDER" VARCHAR2(6 BYTE) NOT NULL , 
	"HEIGHT" NUMBER(*,0) NOT NULL , 
	"AGE" NUMBER(*,0) NOT NULL , 
	"CURRENTWEIGHT" NUMBER(*,0) NOT NULL , 
	"GOALWEIGHT" NUMBER(*,0) NOT NULL , 
	"ACTIVE" VARCHAR2(100 BYTE) NOT NULL , 
	"STATE" VARCHAR2(100 BYTE) NOT NULL , 
	 CONSTRAINT "USERINFO_PK" PRIMARY KEY ("IDX")
) ;

delete from USERREGISTER;
drop sequence USERREGISTER_idx_seq;
create sequence USERREGISTER_idx_seq;

