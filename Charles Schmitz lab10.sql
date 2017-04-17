----------------------------------------------------------------------------------------
-- Courses and Prerequisites
-- by Alan G. Labouseur
-- Tested on Postgres 9.3.2
----------------------------------------------------------------------------------------
/*
--
-- The table of courses.
--
create table Courses (
    num      integer not null,
    name     text    not null,
    credits  integer not null,
  primary key (num)
);


insert into Courses(num, name, credits)
values (499, 'CS/ITS Capping', 3 );

insert into Courses(num, name, credits)
values (308, 'Database Systems', 4 );

insert into Courses(num, name, credits)
values (221, 'Software Development Two', 4 );

insert into Courses(num, name, credits)
values (220, 'Software Development One', 4 );

insert into Courses(num, name, credits)
values (120, 'Introduction to Programming', 4);

select * 
from courses
order by num ASC;


--
-- Courses and their prerequisites
--
create table Prerequisites (
    courseNum integer not null references Courses(num),
    preReqNum integer not null references Courses(num),
  primary key (courseNum, preReqNum)
);

insert into Prerequisites(courseNum, preReqNum)
values (499, 308);

insert into Prerequisites(courseNum, preReqNum)
values (499, 221);

insert into Prerequisites(courseNum, preReqNum)
values (308, 120);

insert into Prerequisites(courseNum, preReqNum)
values (221, 220);

insert into Prerequisites(courseNum, preReqNum)
values (220, 120);

select *
from Prerequisites
order by courseNum DESC;




--
-- An example stored procedure ("function")
--
create or replace function get_courses_by_credits(int, REFCURSOR) returns refcursor as 
$$
declare
   num_credits int       := $1;
   resultset   REFCURSOR := $2;
begin
   open resultset for 
      select num, name, credits
      from   courses
       where  credits >= num_credits;
   return resultset;
end;
$$ 
language plpgsql;

select get_courses_by_credits(0, 'results');
Fetch all from results;
*/



--begin scripts for lab 10 by Charles Schmitz


create or replace function PreReqsFor(int, REFCURSOR) returns refcursor as
--returns immediate prerequisites from passed in course number
$$
declare
   course int :=$1;
   resultset   REFCURSOR := $2;
begin
   open resultset for   
	select d.name from courses c join prerequisites p on c.num = p.courseNum join courses d on p.prereqnum = d.num 
	where d.num = course;
   return resultset;
end;
$$
language plpgsql;

select PreReqsFor(308, 'needs');
Fetch all from needs;



create or replace function IsPreReqFor(int, REFCURSOR) returns refcursor as
--returns courses where the passed in number is an immediate prereq
$$
declare
   course int :=$1;
   resultset   REFCURSOR := $2;
begin
   open resultset for   
	select c.name from courses d join prerequisites p on d.num = p.prereqnum join courses c on p.courseNum = c.num 
	where d.num = course;
   return resultset;
end;
$$
language plpgsql;

select IsPreReqFor(308, 'allows');
Fetch all from allows;



