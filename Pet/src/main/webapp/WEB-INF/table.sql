-- 회원테이블
create table member(
	userid varchar2(20) not null,
	userPwd varchar2(20) not null,
	pwdQuiz varchar2(50) not null,
    quizAnswer varchar2(50) not null,
    userName varchar2(20) not null,
    phone1 varchar2(3) not null,
    phone2 varchar2(4) not null,
    phone3 varchar2(4) not null,
    email1 varchar2(20) not null,
    email2 varchar2(20) not null,
    addr1 varchar2(20) not null,
    addr2 varchar2(20) not null,
    addr3 varchar2(20) not null,
    regdate date default sysdate,
    mileage number default 3000,
    verify number default 1, --관리자는 0으로 developer에서 지정해주기
    primary key(userid)
);

create sequence member_seq;


-- 파일 테이블
create table file(
num number primary key,
writer varchar2(50) not null,
title varchar2(100) not null,
orgFileName varchar2(50),
saveFileName varchar2(50),
fileSize number,
downCount number,
regdate varchar2(50),
startRowNum number,
endRowNum number
)

-- 게시판 테이블
create table board(
num number primary key, 
userid varchar2(50) not null,
title varchar2(100) not null,
cateAni varchar2(20),
content clob not null,
regdate date default sysdate,
viewCount number default 0
);

create sequence board_seq;

--리뷰 테이블
create table review(
	reviewNum number primary key,
	reviewWriter varchar2(50) not null,
	itemNum number not null,
	reviewContent CLOB not null,
	--likeCount number, --좋아요 count
	--upCount number, --추천 count
	regdate date
);

--상품 테이블
create table item(
	itemNum int primary key,
	itemName varchar2(50) not null,
	cateCode varchar2(30) not null,
	itemPrice number not null,
	itemCount number,
	itemDes varchar2(500),
	itemImg varchar2(100) not null
);

create sequence item_seq;

