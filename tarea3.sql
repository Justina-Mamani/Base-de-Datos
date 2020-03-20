SELECT * FROM cuarentena.persona;
INSERT INTO Persona (CI, nombres, apellidos, fechaNacimiento) 
Values (8068922 , 'Ramiro' , 'Castillo Ochoa' , '1970-09-01'),
		(8069762 , 'Luis' , 'Sanchez Ramirez' , '1985-06-30'),
		(8169521 , 'Marcos' , 'Sanchez Cruz' , '1980-08-13'),
        (8196314 , 'Manuel' , 'Garcia Sanchez' , '1975-10-12'),
        (8257896 , 'Juan' , 'Perez Rodriguez' , '975-05-26'),
        (8296354 , 'Pedro' , 'Lopez Gonzales' , '1996-01-17'),
        (8301163 , 'Paul' , 'Landaeta Flores' , '1991-03-25'),
        (8301879 , 'Pablo' , 'Gomez Luna' , '1990-07-17'),
        (8339128 , 'Raul' , 'Hernandez Fernandez' , '1987-02-20'),
        (8378963 , 'Saul' , 'Garcia Martinez' , '1991-04-07');


SELECT * FROM cuarentena.paciente;
insert into Paciente
values (1,8069762,'2020-03-17'),
	   (2,8257896,'2020-03-17'),
       (3,8069762,'2020-03-17'),
	   (4,8257896,'2020-03-17'),
       (5,8257896,'2020-03-17');


SELECT * FROM cuarentena.consultorio;
insert into Consultorio 
values (1, 1,102), 
	   (2, 2,202),
       (3, 1,103), 
	   (4, 3,302), 
       (5, 4,401);


SELECT * FROM cuarentena.especialidad;
INSERT INTO Especialidad 
VALUES (1,'oftalmologia'),
	   (2,'pediatria'),
       (3,'odontlogia'),
	   (4,'otorrinolaringologia'),
       (5,'cardiologia');   


SELECT * FROM cuarentena.doctor;
insert into Doctor
values (1,8068922,1,1),
	   (2,8169521,2,2),
       (3,8196314,3,3),
       (4,8257896,4,4),
       (5,8339128,5,5);       
       

SELECT * FROM cuarentena.consulta;
insert into Consulta 
values (1,5,'2020-03-17'),
	   (2,4,'2019-12-12'),
       (3,3,'2020-02-29'),
       (4,2,'2020-01-15'),
	   (5,1,'2019-11-20');
       


       
       