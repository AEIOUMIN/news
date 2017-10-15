drop database if exists school;

create database school;

use school;

create table student
(				
	id				int				not null		auto_increment,
	student_name	varchar(50)		not null,
	gender			varchar(5),
	birthday		date,
	mobile			varchar(20),
	email			varchar(30),
	street			varchar(255),
	city			varchar(80),
	province		varchar(80),
	
	constraint	pk_student					primary key(id),
	constraint	uq_student_student_name		unique(student_name)
);

insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三01', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三02', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三03', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三04', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三05', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三06', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三07', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三08', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三09', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三10', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三11', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三12', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三13', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三14', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三15', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三16', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三17', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三18', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三19', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三20', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三21', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三22', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三23', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三24', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三25', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三26', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
insert into student(student_name, gender, birthday, mobile, email, street, city, province) values ('张三27', '男', '1990-01-01', '12345678901', 'zhangsan@163.com', '健康路159', '郑州', '河南');
