
--멤버
--DROP TABLE MEMBER CASCADE CONSTRAINTS;
CREATE TABLE MEMBER (
	u_no	NUMBER	NOT NULL,
	u_id	VARCHAR2(100)	NULL,
	u_pw	VARCHAR2(100)	NULL,
	u_role	VARCHAR2(20)	DEFAULT '일반회원',
	u_img	VARCHAR2(3000)   DEFAULT('https://postfiles.pstatic.net/MjAyMTExMDJfMzkg/MDAxNjM1ODM5MTU5NzU1.oMVLFoPwr8RmjeqbrQe_-g7H7eH9rpdRkm04c48n6tYg.0_spO6loiCTNuZ9asDQJQ3ne6P3vwcgLbTPRxVM4xLUg.JPEG.yomyi00/20211102%EF%BC%BF164516.jpg?type=w966'),
	u_name	VARCHAR2(50)	NULL,
	u_nickname	VARCHAR2(50)	NULL,
	u_phone	VARCHAR2(50)	NULL,
	u_addr	VARCHAR2(100)	NULL,
	u_birth	NUMBER	NULL,
	u_status	VARCHAR2(1)	DEFAULT 'Y'
);


INSERT INTO MEMBER(u_no,u_id,u_pw,u_role,u_img	,u_name,u_nickname,u_phone,u_addr,u_birth,u_status) VALUES( 2, 'twoswim98@naver.com' , '1234', '관리자', DEFAULT,
'이수영', '수영', '01025271948', '서울특별시 성북구 지봉로', '19971219', 'Y');


CREATE SEQUENCE SEQ_UNO start with 3;

SELECT * FROM MEMBER;

--약(일반)
--DROP TABLE MEDICINE CASCADE CONSTRAINTS;
CREATE TABLE  MEDICINE  (
	 itemSeq 	            NUMBER	        NULL,
	 itemName 	            VARCHAR2(200)	NULL,
	 entpName 	            VARCHAR2(200)	NULL,
	 itemImage          	VARCHAR2(3000)	NULL,
	 efcyQesitm 	        VARCHAR2(3000)	NULL,
	 useMethodQesitm 	    VARCHAR2(3000)	NULL,
	 depositMethodQesitm 	VARCHAR2(3000)	NULL,
	 intrcQesitm 	        VARCHAR2(3000)	NULL,
	 atpnWarnQesitm 	    VARCHAR2(3000)	NULL,
	 atpnQesitm 	        VARCHAR2(3000)	NULL,
	 seQesitm 	            VARCHAR2(3000)	NULL,
	 openDe 	            VARCHAR2(3000)	NULL,
	 updateDe 	            VARCHAR2(3000)	NULL
);

select * FROM MEDICINE;
select count(*) FROM MEDICINE;

--약(낱알)
--DROP TABLE MEDICINE2 CASCADE CONSTRAINTS;
CREATE TABLE  MEDICINE2  (
	 ITEM_SEQ 	    NUMBER	        NULL,
	 ITEM_NAME 	    VARCHAR2(200)	NULL,
	 ENTP_NAME 	    VARCHAR2(200)	NULL,
	 ITEM_IMAGE 	VARCHAR2(3000)	NULL,
	 DRUG_SHAPE 	VARCHAR2(3000)	NULL,
	 ITEM_PRINT 	VARCHAR2(3000)	NULL,
	 ITEM_COLOR 	VARCHAR2(3000)	NULL,
	 ITEM_LINE  	VARCHAR2(3000)	NULL,
	 MARK_IMG 	    VARCHAR2(3000)	NULL
);

select * FROM MEDICINE2;
select count(*) FROM MEDICINE2;

-- 좋아요(약)
--DROP TABLE MLIKES CASCADE CONSTRAINTS;
CREATE TABLE MLIKES (
    u_no        NUMBER    NOT NULL,
    itemSeq     NUMBER    NOT NULL
);

select * FROM MLIKES;
select count(*) FROM MLIKES;

--장바구니
--DROP TABLE BASKET CASCADE CONSTRAINTS;
--DROP SEQUENCE SEQ_B_num;
CREATE TABLE  BASKET  ( 
    B_num	            NUMBER		NOT NULL,
    u_no	            NUMBER		NOT NULL,
	PRDLST_REPORT_NO	NUMBER		NOT NULL,
	B_ea	            NUMBER		NULL,
	B_date	            DATE   		DEFAULT SYSDATE NOT NULL,
	B_update	        DATE   		DEFAULT SYSDATE NOT NULL,
	B_state	            VARCHAR(1)	DEFAULT 'Y'
);  
CREATE SEQUENCE SEQ_B_num;

select * FROM BASKET;
select count(*) FROM BASKET;

--주문 완료 정보
--DROP TABLE ORDER_INFO CASCADE CONSTRAINTS;
--DROP SEQUENCE SEQ_or_no;
CREATE TABLE  ORDER_INFO  ( 
    or_no                   NUMBER          NOT NULL,
    u_no	                NUMBER		    NOT NULL,
    recipient               VARCHAR(10)     NOT NULL,
    r_phone                 NUMBER          NOT NULL,
	addr_postal	    		NUMBER          NOT NULL,
	addr_road	            VARCHAR(100)    NOT NULL,
	addr_land	            VARCHAR(100)  	NOT NULL,
	addr_detail	            VARCHAR(100)	NULL,
    addr_detail_add	        VARCHAR(100)	NULL,
    r_memo                  VARCHAR(500)    NULL,
    or_date                 DATE            DEFAULT SYSDATE NOT NULL,
    or_price                NUMBER          NOT NULL
);
CREATE SEQUENCE SEQ_or_no;

select * FROM ORDER_INFO;
select count(*) FROM ORDER_INFO;

--DROP TABLE BOARD CASCADE CONSTRAINTS;  
--DROP TABLE REPLY CASCADE CONSTRAINTS; 

-- 게시판
--DROP TABLE BOARD CASCADE CONSTRAINTS;      
CREATE TABLE BOARD (
	BNUM			NUMBER		NOT NULL,
	u_no			NUMBER		NOT NULL,
	u_nickname		VARCHAR2(50)	NULL,
	Title			VARCHAR2(50)	NULL,
	Content			VARCHAR2(3000)   NULL,
	CID			VARCHAR2(100)	NULL,
	Attachment		VARCHAR2(500)	NULL,
	Modified_Attachment	VARCHAR2(500)	NULL,
	READACCOUNT		NUMBER		DEFAULT 0  NOT NULL,
	STATUS			VARCHAR2(1)	DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')) NOT NULL,
	BDATE			DATE		DEFAULT SYSDATE NOT NULL,
	Modified_BDATE		DATE		DEFAULT SYSDATE NOT NULL,
	CONSTRAINT PK_BNUM PRIMARY KEY(BNUM)
);

--DROP SEQUENCE SEQ_BNUM;
CREATE SEQUENCE SEQ_BNUM start with 1; 

SET DEFINE OFF;

INSERT INTO BOARD VALUES(SEQ_BNUM.NEXTVAL, 1, '탱', '테스트', '테스트내용', '자유', DEFAULT, DEFAULT, DEFAULT, 'Y', SYSDATE, SYSDATE);
INSERT INTO BOARD VALUES(SEQ_BNUM.NEXTVAL, 1, '탱', '탱입니다', '환영합니다', '후기', DEFAULT, DEFAULT, DEFAULT, 'Y', SYSDATE, SYSDATE);
INSERT INTO BOARD VALUES(SEQ_BNUM.NEXTVAL, 2, '수영', '처음처음처음', '내용707000입니다.', '공지', DEFAULT, DEFAULT, DEFAULT, 'Y', SYSDATE, SYSDATE);
INSERT INTO BOARD VALUES(SEQ_BNUM.NEXTVAL, 2, '수영', '안녕하세요', '내용1입니다.', '공지', DEFAULT, DEFAULT, DEFAULT, 'Y', SYSDATE, SYSDATE);

select * FROM BOARD;
select count(*) FROM BOARD;
COMMIT;


-- 댓글 
--DROP TABLE REPLY CASCADE CONSTRAINTS;
CREATE TABLE REPLY (
	CNum		NUMBER		NOT NULL,
	BNUM		NUMBER		NOT NULL,
	u_no		NUMBER		NOT NULL,
	u_id		VARCHAR2(100)	NULL,
	u_nickname	VARCHAR2(50)	NULL,
	content		VARCHAR2(500)	NULL,
	STATUS		VARCHAR2(1)	DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')) NULL,
	CDATE		DATE		DEFAULT SYSDATE NULL,
	Modified_CDATE	DATE		DEFAULT SYSDATE NULL,
	CONSTRAINT PK_CNum PRIMARY KEY(CNum)
);

--DROP SEQUENCE SEQ_REPLY_CNum;
CREATE SEQUENCE SEQ_REPLY_CNum start with 1;

INSERT INTO REPLY VALUES(SEQ_REPLY_CNum.NEXTVAL, 1, 1, 'whorr0326@naver.com', '탱', '댓글 내용', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO REPLY VALUES(SEQ_REPLY_CNum.NEXTVAL, 1, 2, 'twoswim98@naver.com', '수영', '댓글 인사', DEFAULT, DEFAULT, DEFAULT);

select * FROM REPLY;
select count(*) FROM REPLY; 


--뉴스
--DROP TABLE NEWS CASCADE CONSTRAINTS;
CREATE TABLE  NEWS  (
    st_seqNo        NUMBER            NOT NULL,
    st_title        VARCHAR2(1000)    NULL,
    st_subTitle     VARCHAR2(1000)    NULL,
    st_thumbNail    VARCHAR2(1000)    NULL,
    st_view         NUMBER            NULL,
    st_date         VARCHAR2(1000)    NULL,
    st_cate         VARCHAR2(1000)    NULL,
    st_content1     VARCHAR2(4000)    NULL,
    st_content2     VARCHAR2(4000)    NULL,
    st_content3     VARCHAR2(4000)    NULL,
    st_content4     VARCHAR2(4000)    NULL,
    st_content5     VARCHAR2(4000)    NULL
);

DROP SEQUENCE SEQ_st_seqNo;
CREATE SEQUENCE SEQ_st_seqNo;

select * FROM NEWS;
select count(*) FROM NEWS;

--약국
--DROP TABLE PHARMACY CASCADE CONSTRAINTS;
CREATE TABLE  PHARMACY  (
		 dutyNo 	NUMBER	        NOT NULL,
		 dutyUrl 	VARCHAR2(2000)	NULL,
		 dutyAddr 	VARCHAR2(2000)	NULL,
		 dutyInf 	VARCHAR2(2000)	NULL,
		 dutyMapimg VARCHAR2(2000)	NULL,
		 dutyName 	VARCHAR2(100)	NULL,
		 dutyTel1 	VARCHAR2(30)	NULL,
		 dutyTime1c VARCHAR2(10)	NULL,
		 dutyTime6c VARCHAR2(10)	NULL,
		 dutyTime7c VARCHAR2(10)	NULL,
		 dutyTime8c VARCHAR2(10)	NULL,
		 dutyTime1s VARCHAR2(10)	NULL,
		 dutyTime6s VARCHAR2(10)	NULL,
		 dutyTime7s VARCHAR2(10)	NULL,
		 dutyTime8s VARCHAR2(10)	NULL,
		 postCdn1 	VARCHAR2(10)	NULL,
		 postCdn2 	VARCHAR2(10)	NULL,
		 wgs84Lon 	VARCHAR2(50)	NULL,
		 wgs84Lat 	VARCHAR2(50)	NULL,
         CONSTRAINT PK_dutyNo PRIMARY KEY (dutyNo)
	);

-- 시퀀스 필수 생성
--DROP SEQUENCE SEQ_dutyNo;
CREATE SEQUENCE SEQ_dutyNo;

select * FROM PHARMACY;
select count(*) FROM PHARMACY;

--경도, 위도 데이터 없는 8개 삭제/ 파싱 이후 필수로 돌려야 함.
DELETE FROM PHARMACY WHERE wgs84Lon LIKE '-';


-- 약국 좋아요
--DROP TABLE PLIKES CASCADE CONSTRAINTS;
CREATE TABLE PLIKES (
    u_no        NUMBER    NOT NULL,
    dutyNo      NUMBER    NOT NULL
);

select * FROM PLIKES;
select count(*) FROM PLIKES;


--내가 복용중인 약
--DROP TABLE MYMEDICINE CASCADE CONSTRAINTS;
CREATE TABLE  MYMEDICINE  (
     u_no  NUMBER	NOT NULL,
     itemSeq   NUMBER	NOT NULL,
     itemName   VARCHAR2(1000)  NOT NULL,
     itemEffect    VARCHAR2(1000)	NULL,
     itemImage   VARCHAR2(1000)	NULL,
     itemStart   DATE	NULL,
     itemEnd     DATE	NOT NULL,
     itemCycle1   VARCHAR2(1000) DEFAULT 'Y' CHECK (itemCycle1 IN('Y', 'N')) NULL,
     itemCycle2  VARCHAR2(1000)	DEFAULT 'Y' CHECK (itemCycle2 IN('Y', 'N')) NULL,
     itemCycle3  VARCHAR2(1000) DEFAULT 'Y' CHECK (itemCycle3 IN('Y', 'N')) NULL,
     itemNum  NUMBER  NOT NULL,
     memo  VARCHAR2(1000) NULL
);

INSERT INTO MYMEDICINE(u_no, itemSeq, itemName, itemEffect, itemImage, itemStart, itemEnd, itemCycle1, itemCycle2, itemCycle3, itemNum, memo)
VALUES(1, 243243, '약1' , '항진제', '이미지', '20221001', '20221101', DEFAULT, DEFAULT, DEFAULT, '3', '메모1');

--INSERT INTO MYMEDICINE(u_no, itemSeq, itemName, itemEffect, itemImage, itemStart, itemEnd, itemCycle1, itemCycle2, itemCycle3, itemNum, memo)
VALUES(1, 348328, '약2' , '항바이러스제', '이미지', '20220101', '20221212', DEFAULT, DEFAULT, DEFAULT, '1', '메모2');

--INSERT INTO MYMEDICINE(u_no, itemSeq, itemName, itemEffect, itemImage, itemStart, itemEnd, itemCycle1, itemCycle2, itemCycle3, itemNum, memo)
VALUES(2, 54354, '약3' , '항진제', '이미지', '20220101', '20221212', DEFAULT, DEFAULT, DEFAULT, '1', '메모3');

--INSERT INTO MYMEDICINE(u_no, itemSeq, itemName, itemEffect, itemImage, itemStart, itemEnd, itemCycle1, itemCycle2, itemCycle3, itemNum, memo)
VALUES(2, 76565, '약4' , '항바이러스제', '이미지', '20220101', '20221212', DEFAULT, DEFAULT, DEFAULT, '1', '메모4');

SELECT * FROM MYMEDICINE;


COMMIT;