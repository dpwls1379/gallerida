create table Gproduct(
	pro_num number primary key,
	pro_cate varchar2(30) not null,
	pro_name varchar2(30) not null,
	pro_price number not null,
	pro_sale number default 0,
	pro_info varchar2(4000) not null,
	pro_image varchar2(20) default 'default.jpg',
	pro_date date not null,
	pro_count number not null,
	pro_sell number default 0,
	pro_read number dafault 0
);

create table Gboardo(
	bo_num number primary key,		
	bo_subject varchar2(30) not null,
	bo_content varchar2(4000) not null,
	bo_date date not null,
	bo_image varchar2(30) default 'default.jpg',
	bo_read number default 0,
	bo_star number default 0,
	bo_del char(1) default 'n',
	id varchar2(20),
	pro_num number references Gproduct(pro_num)
);
-- 아직 아이디 연동은 안한 상태라 id컬럼 그냥 생성

create table Gboardx(
	bx_num number primary key,
	bx_subject varchar2(30) not null,	
	bx_content varchar2(4000) not null,
	bx_categ varchar2(30) not null,
	bx_date date not null,
	bx_read number default 0,
	bx_del char(1) default 'n'
	id varchar2(20),
	bn_num number default 1,
	bq_num number default 1
);
-- bn_num은 공지게시판번호, bq_num은 qna게시판번호
create sequence bq_num;
create sequence bn_num;
-- 시퀀스로 번호 증가설정

create table Greplyo (
	reo_num number primary key,
	reo_content varchar2(100) not null,
	reo_date date not null,
	reo_del char(1) default 'n',	
	bo_num number references Gboardo(bo_num),
	id varchar2(20)
);
-- 상품평가쪽 댓글 게시판

create table Greplyx (
	rex_num number primary key,
	rex_content varchar2(100) not null,
	rex_date date not null,
	rex_del char(1) default 'n',
	id varchar2(20),
	bx_num number references Gboardx(bx_num)
);
-- qna게시판쪽 댓글게시판