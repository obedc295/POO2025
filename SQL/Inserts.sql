
--- inserts studens------

INSERT into academics.students(firstname
, lastname
, idperson
, email)
VALUES('John', 'Doe', '121029', 'john23.@gmail.com')

INSERT into academics.students(firstname, lastname, idperson, email, age)
VALUES('Corina', 'Caballero', '113', 'corina23.@gmail.com', 18)

----INSERT SCHOOLS ----.------
INSERT INTO academics.schools(
    name
    , code
) 
VALUES (
    'Facultad de ciencas economicas'
    , 'FCE'
) , (
    'Facultad de Ingenieria'
    , 'FI'
), (
    'Facultad de Humanidades'
    , 'FH'
)
----------------------------

---INSERTS FOR CAREERS---
insert into academics.careers(
    schools_id
    , [name]
    , incorporated_year
    , code
) values (

    111
    , 'Ingenieria en Sistemas'
    , '2003-01-01'
    , 'IS'

)

update academics.careers set schools_id = 2 where name = 'Ingenieria en Sistemas'











--- modificar taba
alter table academics.careers add code NVARCHAr(20) not null
--- ejemplo para actualizar todos los regitros
UPDATE academics.students
set age = 19 --- sin where afecta a todos los registros

-- si quiero actualizar el age en donde lastname = Castellanos
UPDATE academics.students
set age = 20
WHERE lastname = 'Doe'

UPDATE academics.students
SET firstname = 'Obed', lastname = 'Castellanos', email = 'obedc@gmail.com'
WHERE id = 2

--- EJemplo para eliminar un regristro
delete from academics.students
where id = 1

insert into academics.students_careers values(
    2, 1, '2024-01-20'
)

select * from academics.students_careers
delete from academics.students_careers where student_id = 111