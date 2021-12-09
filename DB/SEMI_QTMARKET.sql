-- 큐티마켓 스크립트

-- <CREATE TABLE>
-- QT_USER 테이블 생성
CREATE TABLE QT_USER (
	USER_ID VARCHAR2(20) NOT NULL,
	USER_PASSWORD VARCHAR2(100) NOT NULL,
	USER_NAME VARCHAR2(20) NOT NULL,
	USER_EMAIL VARCHAR2(50) NOT NULL,
	USER_PROFILE VARCHAR2(100) NOT NULL,
	USER_PHONE VARCHAR2(20) NOT NULL,
	USER_ROLE NUMBER NOT NULL,
	USER_INSERTDATE	DATE NOT NULL,
	USER_AREA NUMBER NOT NULL
);

ALTER TABLE QT_USER DROP COLUMN USER_INSERTDATE;
ALTER TABLE QT_USER ADD USER_ENROLLDATE DATE DEFAULT SYSDATE;

-- USER_WITHDRAW 테이블 생성
CREATE TABLE USER_WITHDRAW (
	USER_ID	VARCHAR2(20) NOT NULL,
	WITHDRAW_YN VARCHAR2(1)	NOT NULL
);

-- EMAIL 테이블 생성
CREATE TABLE EMAIL (
	USER_KEY NUMBER NOT NULL,
	USER_ID	VARCHAR2(20) NOT NULL,
	EMAIL_DATE DATE NOT NULL
);

-- BOARD 테이블 생성
CREATE TABLE BOARD (
	BOARD_NO NUMBER NOT NULL,
	USER_ID VARCHAR2(20) NOT NULL,
	BOARD_TITLE VARCHAR2(50) NOT NULL,
	BOARD_PWD VARCHAR2(10) NOT NULL,
	BOARD_CONTENT VARCHAR2(4000) NOT NULL,
	BOARD_CREATED DATE NOT NULL,
	BOARD_MODIFIED DATE NULL,
	BOARD_HIT NUMBER NOT NULL,
	BOARD_FILE VARCHAR2(100) NULL,
	ADMIN_NO NUMBER NOT NULL,
	B_CATE_NO NUMBER NOT NULL
);

-- BOARD_COMMENT 테이블 생성
CREATE TABLE BOARD_COMMENT (
	COMMENT_NO NUMBER NOT NULL,
	BOARD_NO NUMBER NOT NULL,
	USER_ID VARCHAR2(20) NOT NULL,
	B_WRITER VARCHAR2(20) NOT NULL,
	COMMENT_CONTENT VARCHAR2(1000) NOT NULL,
	B_COMMENT_CREATED DATE NOT NULL,
	B_COMMENT_MODIFIED DATE NOT NULL,
	B_MOM_COMMENT_NO NUMBER NOT NULL
);

-- BOARD_IMAGE 테이블 생성
CREATE TABLE BOARD_IMAGE (
	B_IMG_NO VARCHAR2(100) NOT NULL,
	BOARD_NO NUMBER NOT NULL,
	USER_ID VARCHAR2(20) NOT NULL,
	B_IMG_NAME VARCHAR2(100) NOT NULL,
	B_IMG_SERVER_NAME VARCHAR2(100) NOT NULL,
	B_IMG_SIZE VARCHAR2(100) NOT NULL,
	B_IMG_DATE DATE NOT NULL
);

-- BOARD_CATEGORY 테이블 생성
CREATE TABLE BOARD_CATEGORY (
	B_CATE_NO NUMBER NOT NULL,
	CATE_NAME VARCHAR2(20) NOT NULL
);

-- GOODS 테이블 생성
CREATE TABLE GOODS (
	G_PRODUCT NUMBER NOT NULL,
	USER_ID	VARCHAR2(20) NOT NULL,
	G_CATE_NO NUMBER NOT NULL,
	ADMIN_NO NUMBER NOT NULL,
	G_PRODUCT_NAME VARCHAR2(20)	NOT NULL,
	G_PRICE	VARCHAR2(20) NOT NULL,
	G_CONTENT VARCHAR2(20) NOT NULL,
	G_DATE DATE NOT NULL,
	G_HITS VARCHAR2(20)	NOT NULL,
	G_CON VARCHAR2(20) NOT NULL,
	G_WISH NUMBER NOT NULL
);

-- GOODS_COMMENT 테이블 생성
CREATE TABLE GOODS_COMMENT (
	G_COMMENT_NO NUMBER	NOT NULL,
	G_PRODUCT NUMBER NOT NULL,
	G_BOARD_CONTENT	VARCHAR2(100) NOT NULL,
	G_OWNER_ID	VARCHAR2(20) NOT NULL,
	G_WRITER_ID	VARCHAR2(20) NOT NULL,
	G_COMMENT_CREATED DATE NOT NULL,
	G_COMMENT_MODIFIED DATE NOT NULL,
	G_MOM_COMMENT_NO NUMBER NOT NULL
);

-- GOODS_CATEGORY 테이블 생성
CREATE TABLE GOODS_CATEGORY (
	G_CATE_NO NUMBER NOT NULL,
	G_CATE_NAME	VARCHAR2(20) NOT NULL
);

-- GOODS_WISHLIST 테이블 생성
CREATE TABLE GOODS_WISHLIST (
	G_LIST_NO NUMBER NOT NULL,
	G_PRODUCT NUMBER NOT NULL,
	USER_ID	VARCHAR2(20) NOT NULL
);

-- GOODS_CHAT 테이블 생성
CREATE TABLE GOODS_CHAT (
	G_CHAT_NO NUMBER NOT NULL,
	G_PRODUCT NUMBER NOT NULL,
	G_CHAT_CONTENT VARCHAR2(100) NOT NULL,
	G_CHAT_ID VARCHAR2(20) NOT NULL,
	G_CHAT_DATE DATE NOT NULL
);

-- GOODS_IMAGE 테이블 생성
CREATE TABLE GOODS_IMAGE (
    G_IMG_NO VARCHAR2(100) NOT NULL,
	G_PRODUCT NUMBER NOT NULL,
	G_IMG_NAME VARCHAR2(100) NOT NULL,
	G_IMG_S_NAME VARCHAR2(100) NOT NULL,
	G_IMG_SIZE VARCHAR2(100) NOT NULL,
	G_IMG_DATE DATE NOT NULL
);

-- ADMIN 테이블 생성
CREATE TABLE ADMIN (
	ADMIN_NO NUMBER NOT NULL,
	ADMIN_ID VARCHAR2(20)NOT NULL
);

-- STATISTIC 테이블 생성
CREATE TABLE STATISTIC (
	STATISTIC_DATE DATE	NOT NULL,
	STATISTIC_T_VISIT NUMBER NOT NULL,
	STATISTIC_POSTING NUMBER NOT NULL,
	STATISTIC_W_VISIT NUMBER NOT NULL
);


-- <CREATE COMMENT>
-- QT_USER 테이블 COMMENT 추가
COMMENT ON COLUMN QT_USER.USER_ID IS '아이디';
COMMENT ON COLUMN QT_USER.USER_PASSWORD IS '비밀번호';
COMMENT ON COLUMN QT_USER.USER_NAME IS '이름';
COMMENT ON COLUMN QT_USER.USER_EMAIL IS '이메일';
COMMENT ON COLUMN QT_USER.USER_PROFILE IS '프로필사진';
COMMENT ON COLUMN QT_USER.USER_PHONE IS '전화번호';
COMMENT ON COLUMN QT_USER.USER_ROLE IS '유저권한';
COMMENT ON COLUMN QT_USER.USER_ENROLLDATE IS '가입날짜';
COMMENT ON COLUMN QT_USER.USER_AREA IS '지역명';

-- USER_WITHDRAW 테이블 COMMENT 추가
COMMENT ON COLUMN USER_WITHDRAW.USER_ID IS '아이디';
COMMENT ON COLUMN USER_WITHDRAW.WITHDRAW_YN IS '탈퇴여부';

-- EMAIL 테이블 COMMENT 추가
COMMENT ON COLUMN EMAIL.USER_KEY IS '인증키';
COMMENT ON COLUMN EMAIL.USER_ID IS '아이디';
COMMENT ON COLUMN EMAIL.EMAIL_DATE IS '생성일시';

-- BOARD 테이블 COMMENT 추가
COMMENT ON COLUMN BOARD.BOARD_NO IS '글번호';
COMMENT ON COLUMN BOARD.USER_ID IS '아이디';
COMMENT ON COLUMN BOARD.BOARD_TITLE IS '제목';
COMMENT ON COLUMN BOARD.BOARD_PWD IS '게시글비밀번호';
COMMENT ON COLUMN BOARD.BOARD_CONTENT IS '글내용';
COMMENT ON COLUMN BOARD.BOARD_CREATED IS '작성일';
COMMENT ON COLUMN BOARD.BOARD_MODIFIED IS '수정일';
COMMENT ON COLUMN BOARD.BOARD_HIT IS '조회수';
COMMENT ON COLUMN BOARD.BOARD_FILE IS '첨부파일';
COMMENT ON COLUMN BOARD.ADMIN_NO IS '관리자번호';
COMMENT ON COLUMN BOARD.B_CATE_NO IS '게시판카테고리번호';

-- BOARD_COMMENT 테이블 COMMENT 추가
COMMENT ON COLUMN BOARD_COMMENT.COMMENT_NO IS '댓글번호';
COMMENT ON COLUMN BOARD_COMMENT.BOARD_NO IS '글번호';
COMMENT ON COLUMN BOARD_COMMENT.USER_ID IS '아이디';
COMMENT ON COLUMN BOARD_COMMENT.B_WRITER IS '댓글회원ID';
COMMENT ON COLUMN BOARD_COMMENT.COMMENT_CONTENT IS '댓글내용';
COMMENT ON COLUMN BOARD_COMMENT.B_COMMENT_CREATED IS '댓글작성일';
COMMENT ON COLUMN BOARD_COMMENT.B_COMMENT_MODIFIED IS '댓글수정일';
COMMENT ON COLUMN BOARD_COMMENT.B_MOM_COMMENT_NO IS '부모댓글번호';

-- BOARD_IMAGE 테이블 COMMENT 추가
COMMENT ON COLUMN BOARD_IMAGE.B_IMG_NO IS '이미지파일번호';
COMMENT ON COLUMN BOARD_IMAGE.BOARD_NO IS '글번호';
COMMENT ON COLUMN BOARD_IMAGE.USER_ID IS '아이디';
COMMENT ON COLUMN BOARD_IMAGE.B_IMG_NAME IS '원본파일이름';
COMMENT ON COLUMN BOARD_IMAGE.B_IMG_SERVER_NAME IS '서버파일이름';
COMMENT ON COLUMN BOARD_IMAGE.B_IMG_SIZE IS '파일크기';
COMMENT ON COLUMN BOARD_IMAGE.B_IMG_DATE IS '파일생성날짜';

-- BOARD_CATEGORY 테이블 COMMENT 추가
COMMENT ON COLUMN BOARD_CATEGORY.B_CATE_NO IS '게시판카테고리번호';
COMMENT ON COLUMN BOARD_CATEGORY.CATE_NAME IS '게시판카테고리이름';

-- GOODS 테이블 COMMENT 추가
COMMENT ON COLUMN GOODS.G_PRODUCT IS '상품번호';
COMMENT ON COLUMN GOODS.USER_ID IS '아이디';
COMMENT ON COLUMN GOODS.G_CATE_NO IS '카테고리';
COMMENT ON COLUMN GOODS.ADMIN_NO IS '관리자번호';
COMMENT ON COLUMN GOODS.G_PRODUCT_NAME IS '상품명';
COMMENT ON COLUMN GOODS.G_PRICE IS '가격';
COMMENT ON COLUMN GOODS.G_CONTENT IS '내용';
COMMENT ON COLUMN GOODS.G_DATE IS '작성일';
COMMENT ON COLUMN GOODS.G_HITS IS '조회수';
COMMENT ON COLUMN GOODS.G_CON IS '상품상태';
COMMENT ON COLUMN GOODS.G_WISH IS '찜';

-- GOODS_COMMENT 테이블 COMMENT 추가
COMMENT ON COLUMN GOODS_COMMENT.G_COMMENT_NO IS '댓글번호';
COMMENT ON COLUMN GOODS_COMMENT.G_PRODUCT IS '상품번호';
COMMENT ON COLUMN GOODS_COMMENT.G_BOARD_CONTENT IS '내용';
COMMENT ON COLUMN GOODS_COMMENT.G_OWNER_ID IS '글작성자ID';
COMMENT ON COLUMN GOODS_COMMENT.G_WRITER_ID IS '댓글회원ID';
COMMENT ON COLUMN GOODS_COMMENT.G_COMMENT_CREATED IS '댓글작성일';
COMMENT ON COLUMN GOODS_COMMENT.G_COMMENT_MODIFIED IS '댓글수정일';
COMMENT ON COLUMN GOODS_COMMENT.G_MOM_COMMENT_NO IS '부모댓글번호';

-- GOODS_CATEGORY 테이블 COMMENT 추가
COMMENT ON COLUMN GOODS_CATEGORY.G_CATE_NO IS '코드';
COMMENT ON COLUMN GOODS_CATEGORY.G_CATE_NAME IS '카테고리';

-- GOODS_WISHLIST 테이블 COMMENT 추가
COMMENT ON COLUMN GOODS_WISHLIST.G_LIST_NO IS '목록번호';
COMMENT ON COLUMN GOODS_WISHLIST.G_PRODUCT IS '상품번호';
COMMENT ON COLUMN GOODS_WISHLIST.USER_ID IS '아이디';

-- GOODS_CHAT 테이블 COMMENT 추가
COMMENT ON COLUMN GOODS_CHAT.G_CHAT_NO IS '채팅방코드';
COMMENT ON COLUMN GOODS_CHAT.G_PRODUCT IS '상품번호';
COMMENT ON COLUMN GOODS_CHAT.G_CHAT_CONTENT IS '채팅내용';
COMMENT ON COLUMN GOODS_CHAT.G_CHAT_ID IS '채팅작성자';
COMMENT ON COLUMN GOODS_CHAT.G_CHAT_DATE IS '채팅작성일';

-- GOODS_IMAGE 테이블 COMMENT 추가
COMMENT ON COLUMN GOODS_IMAGE.G_IMG_NO IS '이미지파일번호';
COMMENT ON COLUMN GOODS_IMAGE.G_PRODUCT IS '상품번호';
COMMENT ON COLUMN GOODS_IMAGE.G_IMG_NAME IS '원본파일이름';
COMMENT ON COLUMN GOODS_IMAGE.G_IMG_S_NAME IS '서버파일이름';
COMMENT ON COLUMN GOODS_IMAGE.G_IMG_SIZE IS '파일크기';
COMMENT ON COLUMN GOODS_IMAGE.G_IMG_DATE IS '파일생성날짜';

-- ADMIN 테이블 COMMENT 추가
COMMENT ON COLUMN ADMIN.ADMIN_NO IS '관리자번호';
COMMENT ON COLUMN ADMIN.ADMIN_ID IS '아이디';


-- <ADD CONSTRAINT>
-- QT_USER 테이블 제약조건 추가
ALTER TABLE QT_USER ADD CONSTRAINT PK_QT_USER PRIMARY KEY (USER_ID);

-- USER_WITHDRAW 테이블 제약조건 추가
ALTER TABLE USER_WITHDRAW ADD CONSTRAINT PK_USER_WITHDRAW PRIMARY KEY (USER_ID);

-- EMAIL 테이블 제약조건 추가
ALTER TABLE EMAIL ADD CONSTRAINT PK_EMAIL PRIMARY KEY (
	USER_KEY,
	USER_ID
);

ALTER TABLE EMAIL ADD CONSTRAINT FK_QT_USER_TO_EMAIL_1 FOREIGN KEY (
	USER_ID
)
REFERENCES QT_USER (
	USER_ID
);

-- BOARD 테이블 제약조건 추가
ALTER TABLE BOARD ADD CONSTRAINT BOARD_BOARD_NO_PK PRIMARY KEY(BOARD_NO);
ALTER TABLE BOARD ADD CONSTRAINT BOARD_USER_ID_FK FOREIGN KEY(USER_ID) REFERENCES QT_USER (USER_ID);

-- BOARD_COMMENT 테이블 제약조건 추가
ALTER TABLE BOARD_COMMENT ADD CONSTRAINT BOARD_COMMENT_COMMENT_NO_PK PRIMARY KEY(COMMENT_NO);
ALTER TABLE BOARD_COMMENT ADD CONSTRAINT BOARD_COMMENT_BOARD_NO_FK FOREIGN KEY(BOARD_NO) REFERENCES BOARD (BOARD_NO);

-- BOARD_IMAGE 테이블 제약조건 추가
ALTER TABLE BOARD_IMAGE ADD CONSTRAINT BOARD_IMAGE_B_IMG_NO_PK PRIMARY KEY(B_IMG_NO);
ALTER TABLE BOARD_IMAGE ADD CONSTRAINT BOARD_IMAGE_BOARD_NO_FK FOREIGN KEY(BOARD_NO) REFERENCES BOARD (BOARD_NO);

-- BOARD_CATEGORY 테이블 제약조건 추가
ALTER TABLE BOARD_CATEGORY ADD CONSTRAINT BOARD_CATEGORY_B_CATE_NO_PK PRIMARY KEY(B_CATE_NO);

-- GOODS 테이블 제약조건 추가
ALTER TABLE GOODS ADD CONSTRAINT GOODS_G_PRODUCT_PK PRIMARY KEY(G_PRODUCT);

-- GOODS_COMMENT 테이블 제약조건 추가
ALTER TABLE GOODS_COMMENT ADD CONSTRAINT GOODS_COMMENT_PK PRIMARY KEY(G_COMMENT_NO);
ALTER TABLE GOODS_COMMENT ADD CONSTRAINT GOODS_TO_GOODS_COMMENT_FK FOREIGN KEY(G_PRODUCT) REFERENCES GOODS (G_PRODUCT);

-- GOODS_CATEGORY 테이블 제약조건 추가
ALTER TABLE GOODS_CATEGORY ADD CONSTRAINT GOODS_CATEGORY_PK PRIMARY KEY(G_CATE_NO);

-- GOODS_WISHLIST 테이블 제약조건 추가
ALTER TABLE GOODS_WISHLIST ADD CONSTRAINT GOODS_WISHLIST_PK PRIMARY KEY(G_LIST_NO);
ALTER TABLE GOODS_WISHLIST ADD CONSTRAINT GOODS_TO_GOODS_WISHLIST_FK FOREIGN KEY(G_PRODUCT) REFERENCES GOODS (G_PRODUCT);

-- GOODS_CHAT 테이블 제약조건 추가
ALTER TABLE GOODS_CHAT ADD CONSTRAINT GOODS_CHAT_PK PRIMARY KEY(G_CHAT_NO);
ALTER TABLE GOODS_CHAT ADD CONSTRAINT GOODS_TO_GOODS_CHAT_FK FOREIGN KEY(G_PRODUCT) REFERENCES GOODS (G_PRODUCT);

-- GOODS_IMAGE 테이블 제약조건 추가
ALTER TABLE GOODS_IMAGE ADD CONSTRAINT GOODS_IMAGE_PK PRIMARY KEY(G_IMG_NO);
ALTER TABLE GOODS_IMAGE ADD CONSTRAINT GOODS_TO_GOODS_IMAGE_FK FOREIGN KEY(G_PRODUCT) REFERENCES GOODS (G_PRODUCT);

-- ADMIN 테이블 제약조건 추가
ALTER TABLE "ADMIN" ADD CONSTRAINT "PK_ADMIN" PRIMARY KEY (
	"ADMIN_NO"
);

ALTER TABLE "ADMIN" ADD CONSTRAINT "FK_USER1_TO_ADMIN" FOREIGN KEY (
	"ADMIN_ID"
)
REFERENCES "QT_USER" (
	"USER_ID"
);

-- GOOD 테이블 제약조건 추가
ALTER TABLE GOODS ADD CONSTRAINT GOODS_CATEGORY_TO_GOODS_FK FOREIGN KEY(G_CATE_NO) REFERENCES GOODS_CATEGORY (G_CATE_NO);


-- <INSERT DATA>

------------------------------------------------
--------------- USER 관련 테이블 -----------------
------------------------------------------------

CREATE SEQUENCE SEQ_UNO;

INSERT INTO QT_USER (
    USER_ID,
    USER_PASSWORD,
    USER_NAME,
    USER_EMAIL,
    USER_PROFILE,
    USER_PHONE,
    USER_ROLE,
    USER_ENROLLDATE,
    USER_AREA
) VALUES (
    'admin2',
    '1234',
    '서수민',
    'ssm@naver.com',
    'profile1.jpg',
    '010-1234-5678',
    1,
    DEFAULT,
    1
);

COMMIT;

-- SELECT * FROM MEMBER WHERE ID='admin' AND STATUS='Y'; 
                                         
-- 멤버 조회
-- SELECT * FROM MEMBER WHERE ID=? AND STATUS='Y'

-- 멤버 추가
-- INSERT INTO MEMBER VALUES(SEQ_UNO.NEXTVAL,?,?,DEFAULT,?,?,?,?,?,DEFAULT,DEFAULT,DEFAULT)

-- 멤버 수정               
-- UPDATE MEMBER SET NAME=?,PHONE=?,EMAIL=?,ADDRESS=?,HOBBY=?,MODIFY_DATE=SYSDATE WHERE NO=?

-- 멤버 패스워드 변경
-- UPDATE MEMBER SET PASSWORD=? WHERE NO=?

-- 멤버 삭제
-- UPDATE MEMBER SET STATUS=? WHERE NO=?


------------------------------------------------
--------------- BOARD 관련 테이블 ---------------
------------------------------------------------


------------------------------------------------
--------------- GOODS 관련 테이블 ---------------
------------------------------------------------
