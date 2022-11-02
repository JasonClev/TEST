CREATE TABLE MENUS
(
     MENU_ID     VARCHAR2(6)   NOT  NULL  PRIMARY KEY    
   , MENU_NAME   VARCHAR2(120) NOT  NULL
   , MENU_SEQ    NUMBER(5, 0)  NOT  NULL
)

INSERT INTO MENUS ( MENU_ID, MENU_NAME, MENU_SEQ)
 VALUES  ('MENU01', 'JAVA', 1);
COMMIT; 


CREATE  TABLE  BOARD
(
      IDX           NUMBER( 5, 0 )    PRIMARY KEY
    , MENU_ID       VARCHAR2(6)       NOT NULL
        REFERENCES   MENUS (MENU_ID) 
    , TITLE         VARCHAR2(300)     NOT NULL
    , CONT          VARCHAR2(4000) 
    , WRITER        VARCHAR2(50) 
    , REGDATE       DATE              DEFAULT  SYSDATE
    , READCOUNT     NUMBER( 6, 0 )    DEFAULT  0
    
    , BNUM          NUMBER( 5, 0 )    DEFAULT  0
    , LVL           NUMBER( 5, 0 )    DEFAULT  0
    , STEP          NUMBER( 5, 0 )    DEFAULT  0
    , NREF          NUMBER( 5, 0 )    DEFAULT  0
)

-- DROP TABLE BOARD;

CREATE   TABLE    FILES
(
    FILE_NUM     NUMBER(6, 0)  NOT NULL   -- ���Ϲ�ȣ
   , IDX         NUMBER(5, 0)  NOT NULL   -- �Խñ� ��ȣ
   , FILENAME    VARCHAR2(300) NOT NULL   -- ���ϸ�
   , FILEEXT     VARCHAR2(100) NOT NULL   -- ����Ȯ����
   , SFILENAME   VARCHAR2(300) NOT NULL   -- ����� ���� ���ϸ�
   
   , CONSTRAINT  FILES_PK     PRIMARY KEY  -- �⺻Ű(����Ű) 
     (
          FILE_NUM,
          IDX
     ) 
   , CONSTRAINT  FK_BOARD_FILES_IDX 
     FOREIGN KEY (IDX)
     REFERENCES  BOARD(IDX)
      ON  DELETE CASCADE
);

CREATE TABLE  TUSER
(
     USERID     VARCHAR2(20)  PRIMARY KEY
   , PASSWD     VARCHAR2(20)  NOT NULL
   , USERNAME   VARCHAR2(60)  NOT NULL
   , INDATE     DATE          DEFAULT SYSDATE
)

INSERT INTO  TUSER ( USERID, PASSWD, USERNAME  )
 VALUES ( 'sky', '1234', '������'   );
commit; 









