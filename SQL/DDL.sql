create SCHEMA academics

create table academics.students(
    id int IDENTITY(1,1) PRIMARY KEY
    , firstname nvarchar(100) NOT NULL
    , lastname nvarchar(100) NOT NULL
    , idperson NVARCHAR(100) NOT NULL UNIQUE
    , email NVARCHAR(100) not null UNIQUE
)


create table academics.schools(
    id int IDENTITY(1,1) PRIMARY KEY
    , name NVARCHAR(200) NOT NULL
    , code NVARCHAR(20) UNIQUE
)

--- TABLAS DE CARRERAS 
create table academics.careers(
    id int IDENTITY(1,1) PRIMARY KEY
    , schools_id int not null
    , name NVARCHAR(200) NOT NULL
    , incorporated_year date NULL

)

alter table academics.careers
add CONSTRAINT FK_Careers_Schools
FOREIGN KEY (schools_id) REFERENCES academics.schools(id)


--- TABLA DE ESTUDIANTES Y CARRERAS

create table academics.students_careers(
    student_id int not NULL
    , career_id int NOT NULL
    , enrollment_date date null
)

alter table academics.students_careers
add CONSTRAINT PK_SC PRIMARY KEY (student_id, career_id)

alter table academics.students_careers
add CONSTRAINT FK_SC_S FOREIGN KEY (student_id) REFERENCES academics.students(id)

alter table academics.students_careers
add CONSTRAINT FK_SC_C FOREIGN KEY (career_id) REFERENCES academics.careers(id)