create table academics.students(
    id int IDENTITY(1,1) PRIMARY KEY
    , firstname nvarchar(100) NOT NULL
    , lastname nvarchar(100) NOT NULL
    , idperson NVARCHAR(100) NOT NULL UNIQUE
    , email NVARCHAR(100) not null UNIQUE
)

--- modificar taba
alter table academics.students add age int null
--- ejemplo para actualizar todos los regitros
UPDATE academics.students
set age = 19 --- sin where afecta a todos los registros

-- si quiero actualizar el age en donde lastname = Castellanos
UPDATE academics.students
set age = 20
WHERE lastname = 'Doe'



SELECT * from academics.students

---Ejemplo de insert
INSERT into academics.students(firstname, lastname, idperson, email)
VALUES('John', 'Doe', '121029', 'john23.@gmail.com')

INSERT into academics.students(firstname, lastname, idperson, email, age)
VALUES('Corina', 'Caballero', '113', 'corina23.@gmail.com', 18)
---Ejemplo de actualizacion
UPDATE academics.students
SET firstname = 'Obed', lastname = 'Castellanos', email = 'obedc@gmail.com'
WHERE id = 2

--- EJemplo para eliminar un regristro
delete from academics.students
where id = 1

SELECT id, email, firstname FROM academics.students WHERE id = 2


--- selecionar todos los estudiantes menores a 20 anos
SELECT * FROM academics.students
WHERE age < 20