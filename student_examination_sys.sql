#drop database student_examination_sys;
create database student_examination_sys;

use student_examination_sys;

create table student
(
    id   varchar(20) PRIMARY KEY,
    name varchar(50),
    age  int,
    sex  varchar(10)
) CHARACTER SET = utf8;

insert into student
values ('001', '张三', 18, '男'),
       ('002', '李四', 20, '女');


create table subject
(
    id          varchar(20) PRIMARY KEY,
    subject     varchar(50),
    teacher     varchar(100),
    description varchar(200)
) CHARACTER SET = utf8;

insert into subject
values ('1001', '语文', '王老师', '本次考试比较简单'),
       ('1002', '数学', '刘老师', '本次考试比较难');

create table score
(
    id         varchar(20) PRIMARY KEY,
    student_id varchar(20),
    subject_id varchar(20),
    score      double(5, 1),
    CONSTRAINT fk_stu_id FOREIGN KEY (student_id) REFERENCES student (id),
    CONSTRAINT fk_sub_id FOREIGN KEY (subject_id) REFERENCES subject (id)
) CHARACTER SET = utf8;

insert into score
values ('1', '001', '1001', 80),
       ('2', '002', '1002', 60),
       ('3', '001', '1001', 70),
       ('4', '002', '1002', 60.5);
