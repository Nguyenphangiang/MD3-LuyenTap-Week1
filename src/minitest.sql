create database StudentManager1;
use StudentManager1;
create table address(
    addressID int primary key ,
    address varchar(100)
);
create table classes(
    classesID int primary key ,
    classesName varchar(100),
    classesLanguage varchar(50),
    classesDescription varchar(100)
);
create table students(
    studentsID int primary key ,
    studentsFullName varchar(100),
    address_ID int,
    studentsAge int,
    studentsPhone varchar(10) unique ,
    classes_ID int,
    foreign key (address_ID) references address(addressID),
    foreign key (classes_ID) references classes(classesID)
);
create table course(
    courseID int primary key ,
    courseName varchar(50),
    courseDescription varchar(100)
);
create table point(
    pointID int primary key ,
    course_ID int,
    students_ID int,
    point float,
    foreign key (course_ID) references course (courseID),
    foreign key (students_ID) references students(studentsID)
);

