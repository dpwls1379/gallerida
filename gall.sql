create table Gmember(
id 			varchar2(20) 	primary key,
pass 		varchar2(30) 	not null,
name 		varchar2(10) 	not null,
addr 		varchar2(50) 	not null,
tel 		varchar2(20)	not null,
email 		varchar2(50) 	not null,
gender 		char(1) 		not null,
birthday 	date 			not null
);
alter table Gmember modify(tel varchar2(20));
select * from GMEMBER;
insert into GMEMBER values('master','master','마스터','서울특별시 강남구 역삼동',
'01011112222','master@master.com','M',sysdate);
update Gmember set tel='01023232323' where id='master';

create table Gproduct(
pro_num 	number 			primary key,
pro_cate 	varchar2(30) 	not null,
pro_name 	varchar2(30) 	not null,
pro_price 	number 			not null,
pro_sale 	number 			default 0,
pro_info 	varchar2(4000) 	not null,
pro_image 	varchar2(20) 	default 'default.jpg',
pro_date 	date 			not null,
pro_count 	number 			not null,
pro_sell 	number 			default 0
);
alter table Gproduct rename column pro_cell to pro_sell;
create table Gboardo(
bo_num 		number 			primary key,
pro_num 	number 			references Gproduct(pro_num),
id 			varchar2(20) 	references Gmember(id),
bo_subject 	varchar2(30) 	not null,
bo_content 	varchar2(4000) 	not null,
bo_date 	date 			not null,
bo_image 	varchar2(30) 	default 'default.jpg',
bo_read 	number 			default 0,
bo_star 	number 			default 0,
bo_del 		char(1) 		default 'n'
);

create table Gboardx(
bx_num 		number 			primary key,
id 			varchar2(20) 	references Gmember(id),
bx_subject 	varchar2(30) 	not null,
bx_content 	varchar2(4000) 	not null,
bx_categ 	varchar2(30) 	not null,
bx_date 	date 			not null,
bx_read 	number 			default 0,
bx_del 		char(1) 		default 'n'
);

create table Greplyo (
reo_num 		number 			primary key,
reo_content 	varchar2(100) 	not null,
reo_date 		date 			not null,
reo_del 		char(1) 		default 'n',
id 				varchar2(20) 	references Gmember(id),
bo_num 			number 			references Gboardo(bo_num)
);

create table Greplyx (
rex_num 		number 			primary key,
rex_content 	varchar2(100) 	not null,
rex_date 		date 			not null,
rex_del 		char(1) 		default 'n',
id 				varchar2(20) 	references Gmember(id),
bx_num 			number 			references Gboardx(bx_num)
);

create table Gcart (
ct_num 		number 			primary key,
id			varchar2(20)	references Gmember(id)
ct_image 	varchar2(30) 	default 'default.jpg',
ct_count	number 			default 0,
ct_del 		char(1) 		default 'n',
pro_num 	number 			references Gproduct(pro_num)
);

alter table Gcart add (id varchar2(20) references Gmember(id));


create table Gbuy (
buy_num 	number 			primary key,
buy_addr 	varchar2(50) 	not null,
buy_memo 	varchar2(100),
buy_date 	date,
pro_num 	number 			references Gproduct(pro_num),
ct_num		number 			references Gcart(ct_num),
id 			varchar2(20) 	references Gmember(id)
);

