create table academics.students(
    id int IDENTITY(1,1) PRIMARY KEY
    , firstname nvarchar(100) NOT NULL
    , lastname nvarchar(100) NOT NULL
    , idperson NVARCHAR(100) NOT NULL UNIQUE
    , email NVARCHAR(100) not null UNIQUE
)


SELECT * from academics.students

INSERT into academics.students(firstname, lastname, idperson, email)
VALUES('John', 'Doe', '1210291', 'john2.@gmail.com')