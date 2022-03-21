select * from students where studentsFullName like 'Nguyen%';
select * from students where studentsFullName like '%Anh%';
select * from students where studentsAge between 15 and 18;
select classesName,count(studentsID) as so_luong_hs from students join classes c on c.classesID = students.classes_ID group by classesName;
select address,count(studentsID) as so_luong_hs from address join students s on address.addressID = s.address_ID group by  address;
select c.courseName,avg(point) as avg_point from point join course c on c.courseID = point.course_ID group by courseName;
#Cach 1
create table maximum  select avg(point), count(c.courseName),c.courseName from course c
    join point p on c.courseID = p.course_ID group by c.courseName;
select courseName,max(`avg(point)`) from maximum;
#Cach 2
select c.courseID,c.courseName,avg(point) from course c
    join point p on c.courseID = p.course_ID
group by c.courseName,c.courseID
having avg(point) >= all (select avg(point)from point group by point.course_ID);
#Cach 3
select avg(point),count(c.courseName),c.courseName from course c
    join point p on c.courseID = p.course_ID
group by c.courseName order by avg(point) desc limit 1;