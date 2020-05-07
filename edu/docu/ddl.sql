--drop table member;
create table member
(id varchar2(20) primary key,   --아이디
pwd varchar2(60),				--패스워드
name varchar2(20),				--이름
hobby varchar2(20),				--취미(ho1,h02)
gender char(1),					--성별
religion char(3),				--종교
introduction varchar2(1000),	--자기소개
regdt date						--가입일자
);

create table board
(seq number(20) primary key,		--글번호
title varchar2(60), 				--제목
contents varchar2(1000), 			--내용
regdt date,							--작성일자
id varchar2(20)						--작성자
);

create sequence seq_board; 