create table academics.students(
    id int IDENTITY(1,1) PRIMARY KEY
    , firstname nvarchar(100) NOT NULL
    , lastname nvarchar(100) NOT NULL
    , idperson NVARCHAR(100) NOT NULL UNIQUE
    , email NVARCHAR(100) not null UNIQUE
)





SELECT * from academics.careers



SELECT id, email, firstname FROM academics.students WHERE id = 2


--- selecionar todos los estudiantes menores a 20 anos
SELECT * FROM academics.students_careers
WHERE age < 20