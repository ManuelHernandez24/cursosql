
 --Ejercicio 2
 Create Table Usuarios (
  Nombre Varchar(30),
  Clave Varchar(10)
 )

--Ejercicio 3
Insert Into Usuarios (Nombre, Clave) Values ('Julin','Rodriguez')

 Select * From Usuarios;

 Insert Into Usuarios (Clave, Nombre) Values ('123','Pamela')

 Select * From Usuarios

--Ejercicio 4
Create Table Libros(
  Titulo Varchar(20),
  Autor Varchar(15),
  Editorial Varchar(10),
  Precio Float,
  Cantidad Integer
 );

 Exec Sp_Columns Libros;

 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values ('El mar','Juan','250Studio',25.20,100)
 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values ('El cielo está en cualquier lugar','Juana','Editorial2000',18.8,200)

 Select * From Libros;

 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values ('El sol','Juan','El sol',10,200)

 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values ('El sol','Juan','El sol',10,200)

 Select * From Libros

 --Ejercicio 5

 Exec Sp_Columns Libros;

 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values ('El Aleph','Borges','Emece',25.50,100)
 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values ('Alicia En El Pais De Las Maravillas','Lewis Carroll','Atlantida',10,200)
 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values ('Matematica Estas Ahi','Paenza','Siglo XXI',18.8,200)

 Select * From Libros

 Select Titulo,Autor,Editorial From Libros

 Select Titulo,Precio From Libros

 Select Editorial,Cantidad From Libros

 --Ejercicio 6 

 Exec Sp_Columns Usuarios;

 Insert Into Usuarios (Nombre, Clave)
  Values ('Marcelo','Boca')
 Insert Into Usuarios (Nombre, Clave)
  Values ('Juanperez','Juancito')
 Insert Into Usuarios (Nombre, Clave)
  Values ('Susana','River')
 Insert Into Usuarios (Nombre, Clave)
  Values ('Luis','River');

 Select *From Usuarios
  Where Nombre='Leonardo'

 Select Nombre From Usuarios
  Where Clave='River'

 Select Nombre From Usuarios
  Where Clave='Santi'

  --Ejercicio 7
Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values ('El Aleph','Borges','Emece',24.50)
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values ('Martin Fierro','Jose Hernandez','Emece',16.00);
 Insert Into Libros (Titulo,Autor,Editorial,Precio
  Values ('Aprenda PHP','Mario Molina','Emece',35.40)
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values ('Cervantes Y El Quijote','Borges','Paidos',50.90)

 Select * From Libros
  Where Autor<>'Borges';

 Select Titulo,Precio
  From Libros
  Where Precio>20

 Select * From Libros
  Where Precio<=30;

--Ejercicio 8
Insert Into Usuarios (Nombre,Clave)
  Values ('Marcelo','River')
 Insert Into Usuarios (Nombre,Clave)
  Values ('Susana','Chapita')
 Insert Into Usuarios (Nombre,Clave)
  Values ('Carlosfuentes','Boca')
 Insert Into Usuarios (Nombre,Clave)
  Values ('Federicolopez','Boca')

 Select * From Usuarios

 Delete From Usuarios
 Where Nombre='Marcelo'

 Select * From Usuarios

 Delete From Usuarios
 Where Nombre='Marcelo'

 Select * From Usuarios

 Delete From Usuarios
  Where Clave='Boca'

 Select * From Usuarios

 Delete From Usuarios

 Select * From Usuarios

 --Ejercicio 9
 Insert Into Usuarios (Nombre,Clave)
  Values ('Marcelo','River')
 Insert Into Usuarios (Nombre,Clave)
  Values ('Susana','Chapita')
 Insert Into Usuarios (Nombre,Clave)
  Values ('Carlosfuentes','Boca')
 Insert Into Usuarios (Nombre,Clave)
  Values ('Federicolopez','Boca')

 Update Usuarios Set Clave='Realmadrid'
 Select * From Usuarios

 Update Usuarios Set Clave='Boca'
  Where Nombre='Federicolopez'

 Select * From Usuarios;

 Update Usuarios Set Clave='Payaso'
  Where Nombre='Juanajuarez'

 Select * From Usuarios;

 Update Usuarios Set Nombre='Marceloduarte', Clave='Marce'
  Where Nombre='Marcelo'

 Select * From Usuarios

 --Ejercicio 10
 Insert Into Libros (Titulo,Autor,Editorial)
  Values ('El Aleph','Borges','Emece')

 Select * From Libros --Mostramos Los Registros De Libros
 Select Titulo, Autor 
 /*Mostramos Títulos Y
 Nombres De Los Autores*/
 From Libros

 --Ejercicio 11 
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('El Aleph','Borges','Emece',Null)

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('Alicia En El Pais','Lewis Carroll',Null,0)

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values(Null,'Borges','Siglo XXI',25)

 Exec Sp_Columns Libros;

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('Uno','Richard Bach','',18.50)
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('','Richard Bach','Planeta',22)

 Select * From Libros

 Select * From Libros
  Where Precio Is Null

 Select * From Libros
  Where Precio=0;

 Select * From Libros
  Where Editorial Is Null

 Select * From Libros
  Where Editorial=''

 Select * From Libros
  Where Precio Is Not Null

  --Ejercicio 12
  If Object_Id('Usuarios') Is Not Null
  Drop Table Usuarios;

 Create Table Usuarios(
  Nombre Varchar(20),
  Clave Varchar(10),
  Primary Key(Nombre)
 );

 Exec Sp_Columns Usuarios;

 Insert Into Usuarios (Nombre, Clave)
  Values ('Juanperez','Boca');
 Insert Into Usuarios (Nombre, Clave)
  Values ('Raulgarcia','River');

  --Ejercicio 13
  If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(30),
  Editorial Varchar(15),
  Precio Float
 );

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('El Aleph','Borges','Emece',23);

 Select * From Libros;

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('Uno','Richard Bach','Planeta',18);
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('Aprenda PHP','Mario Molina','Siglo XXI',45.60);
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('Alicia En El Pais De Maravillas','Lewis Carroll','Paidos',15.50);

 Select * From Libros;

 Insert Into Libros (Codigo,Titulo,Autor,Editorial,Precio)
  Values(5,'Martin Fierro','Jose Hernandez','Paidos',25);

 Update Libros Set Codigo=9
  Where Titulo='Uno';

 Exec Sp_Columns Libros;

 Delete From Libros
  Where Autor='Lewis Carroll';

  Insert Into Libros (Titulo, Autor, Editorial, Precio)
  Values('Martin Fierro','Jose Hernandez','Paidos',25); 

  Select * From Libros;

--Ejercicio 14
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity(100,2),
  Titulo Varchar(20),
  Autor Varchar(30),
  Precio Float
 );

 Insert Into Libros (Titulo,Autor,Precio)
  Values('El Aleph','Borges',23);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Uno','Richard Bach',18);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Aprenda PHP','Mario Molina',45.60);

 Select * From Libros;

Select Ident_Seed('Libros');

 Insert Into Libros (Codigo,Titulo,Autor,Precio)
  Values(106,'Martin Fierro','Jose Hernandez',25);

 Set Identity_Insert Libros On;

 Insert Into Libros (Codigo,Titulo,Autor)
 Values (100,'Matematica Estas Ahi','Paenza');

 Insert Into Libros (Codigo,Titulo,Autor)
 Values (1,'Ilusiones','Richard Bach');

 Insert Into Libros (Titulo,Autor)
 Values ('Uno','Richard Bach');

 Set Identity_Insert Libros Off;

 Insert Into Libros (Codigo,Titulo,Autor)
 Values (300,'Uno','Richard Bach');

--Ejercicio 15
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(30),
  Autor Varchar(20),
  Editorial Varchar(15),
  Precio Float
 );

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values ('El Aleph','Borges','Emece',25.60);
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values ('Uno','Richard Bach','Planeta',18);

 Select * From Libros;

 Truncate Table Libros;

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values ('El Aleph','Borges','Emece',25.60);
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values ('Uno','Richard Bach','Planeta',18);

 Select * From Libros;

 Delete From Libros;

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values ('El Aleph','Borges','Emece',25.60);
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values ('Uno','Richard Bach','Planeta',18);

 Select * From Libros;

--Ejercicio 17
If Object_Id('Visitantes') Is Not Null
  Drop Table Visitantes;

 Create Table Visitantes(
  Nombre Varchar(30),
  Edad Integer,
  Sexo Char(1),
  Domicilio Varchar(30),
  Ciudad Varchar(20),
  Telefono Varchar(11)
 );

 Insert Into Visitantes (Nombre,Edad,Sexo,Domicilio,Ciudad,Telefono)
  Values ('Juan Juarez',32,'Masc','Avellaneda 789','Cordoba','4234567');

 Insert Into Visitantes (Nombre,Edad,Sexo,Domicilio,Ciudad,Telefono)
  Values ('Marcela Morales',43,'F','Colon 456','Cordoba',4567890);

 Select * From Visitantes;

 --Ejercicio 18
 If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Smallint Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(30),
  Editorial Varchar(15),
  Precio Smallmoney,
  Cantidad Tinyint
 );

 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values('El Aleph','Borges','Emece',25.60,260);

 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values('El Aleph','Borges','Emece',250000,100);

 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values('Uno','Richard Bach','Planeta','A50.30',100);

 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values('Uno','Richard Bach','Planeta',50.30,'100');

 Select * From Libros;

 --Ejercicio 19
  If Object_Id('Empleados') Is Not Null
  Drop Table Empleados;

 Create Table Empleados(
  Nombre Varchar(20),
  Documento Char(8),
  Fechaingreso Datetime
 );

 Set Dateformat Dmy;

 Insert Into Empleados Values('Ana Gomez','22222222','12-01-1980');
 Insert Into Empleados Values('Bernardo Huerta','23333333','15-03-81');
 Insert Into Empleados Values('Carla Juarez','24444444','20/05/1983');
 Insert Into Empleados Values('Daniel Lopez','25555555','2.5.1990');

 Select * From Empleados;

 Select * From Empleados Where Fechaingreso<'01-01-1985';

 Update Empleados Set Nombre='Maria Carla Juarez' Where Fechaingreso='20.5.83';

 Select * From Empleados;

 Delete From Empleados Where Fechaingreso<>'20/05/1983';

 Select * From Empleados;


--Ejercicio 20
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(30),
  Editorial Varchar(15)
 );

 Insert Into Libros
  Values ('Uno','Richard Bach','Planeta');

 Insert Into Libros (Titulo, Autor)
  Values ('El Aleph','Borges');

 Insert Into Libros (Autor,Editorial)
  Values ('Lewis Carroll','Planeta');

 Select * From Libros;

--Ejercicio 21
 If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30) Not Null Default 'Desconocido', 
  Editorial Varchar(20),
  Precio Decimal(5,2),
  Cantidad Tinyint Default 0
 );

 Insert Into Libros (Titulo,Editorial,Precio)
  Values('Java En 10 Minutos','Paidos',50.40);

 Select * From Libros;

 Insert Into Libros (Titulo,Editorial)
  Values('Aprenda PHP','Siglo XXI');
 Select * From Libros;

 Exec Sp_Columns Libros;

 Insert Into Libros (Titulo,Autor,Precio,Cantidad)
  Values ('El Gato Con Botas',Default,Default,100);
 Select *From Libros;

 Insert Into Libros Default Values;
 Select * From Libros;

 Insert Into Libros (Titulo,Autor,Cantidad)
  Values ('Alicia En El Pais De Las Maravillas','Lewis Carroll',Null);

--Ejercicio 22
If Object_Id('Agenda') Is Not Null
  Drop Table Agenda;

 Create Table Agenda(
  Nombre Varchar(30),
  Domicilio Varchar(30),
  Telefono Varchar(11)
 );

 Insert Into Agenda
  Values('Juan Perez','Avellaneda 908','4252525');
 Insert Into Agenda
  Values('Marta Lopez','Sucre 34','4556688');
 Insert Into Agenda
  Values('Carlos Garcia','Sarmiento 1258',Null);

 Select Nombre As Nombreyapellido,
  Domicilio,Telefono
  From Agenda;

 Select Nombre As 'Nombre Y Apellido',
  Domicilio,Telefono
  From Agenda;

 Select Nombre 'Nombre Y Apellido',
  Domicilio,Telefono
  From Agenda;

  --Ejercicio 23
  If Object_Id('Agenda') Is Not Null
  Drop Table Agenda;

 Create Table Agenda(
  Nombre Varchar(30),
  Domicilio Varchar(30),
  Telefono Varchar(11)
 );

 Insert Into Agenda
  Values('Juan Perez','Avellaneda 908','4252525');
 Insert Into Agenda
  Values('Marta Lopez','Sucre 34','4556688');
 Insert Into Agenda
  Values('Carlos Garcia','Sarmiento 1258',Null);

 Select Nombre As Nombreyapellido,
  Domicilio,Telefono
  From Agenda;

 Select Nombre As 'Nombre Y Apellido',
  Domicilio,Telefono
  From Agenda;

 Select Nombre 'Nombre Y Apellido',
  Domicilio,Telefono
  From Agenda;

  --Ejercicio 25
  If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Precio Decimal(6,2),
  Cantidad Tinyint Default 0,
  Primary Key (Codigo)
 );

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('El Aleph','Borges','Emece',25);
 Insert Into Libros
  Values('Java En 10 Minutos','Mario Molina','Siglo XXI',50.40,100);
 Insert Into Libros (Titulo,Autor,Editorial,Precio,Cantidad)
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Emece',15,50);

 Select Substring(Titulo,1,12) As Titulo
  From Libros;

 Select Left(Titulo,12) As Titulo
  From Libros;

 Select Titulo,
  Str(Precio,6,1)
  From Libros;

 Select Titulo,
  Str(Precio)
  From Libros;

  Select Titulo, Autor, Upper(Editorial)
   From Libros;

--Ejercicio 26
 If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Precio Decimal(6,2),
  Primary Key (Codigo)
 );

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('El Aleph','Borges','Emece',25.33);
 Insert Into Libros
  Values('Java En 10 Minutos','Mario Molina','Siglo XXI',50.65);
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Emece',19.95);

 Select Titulo,Autor,Precio,
  Floor(Precio) As Abajo,
  Ceiling(Precio) As Arriba
  From Libros;

  --Ejercicio 27
  If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Edicion Datetime,
  Precio Decimal(6,2)
 );

 Insert Into Libros Values('El Aleph','Borges','Emece','1980/10/10',25.33);
 Insert Into Libros Values('Java En 10 Minutos','Mario Molina','Siglo XXI','2000/05/05',50.65);
 Insert Into Libros Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Emece','2000/08/09',19.95);
 Insert Into Libros Values('Aprenda PHP','Mario Molina','Siglo XXI','2000/02/04',45);

 Select Titulo, Datepart (Year,Edicion) From Libros;

 Select Titulo, Datename (Month,Edicion) From Libros;

 Select Titulo, Datediff(Year,Edicion,Getdate()) From Libros;

 Select Titulo From Libros
  Where Datepart(Day,Edicion)=9;

--Ejercicio 28
If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Precio Decimal(6,2),
  Primary Key (Codigo)
 );

 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('El Aleph','Borges','Emece',25.33);
 Insert Into Libros
  Values('Java En 10 Minutos','Mario Molina','Siglo XXI',50.65);
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Emece',19.95);
 Insert Into Libros (Titulo,Autor,Editorial,Precio)
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Planeta',15);

Select * From Libros
 Order By Titulo;

 Select Titulo,Autor,Precio
  From Libros Order By 3;

 Select * From Libros
  Order By Editorial Desc;

 Select * From Libros
  Order By Titulo,Editorial;

 Select * From Libros
  Order By Titulo Asc, Editorial Desc;

 Select Titulo, Autor
  From Libros
  Order By Precio;

 Select Titulo, Autor, Editorial,
 Precio+(Precio*0.1) As 'Precio Con Descuento'
 From Libros
 Order By 4;


--Ejercicio 29
If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Precio Decimal(6,2),
 );

 Insert Into Libros
  Values('El Aleph','Borges','Emece',15.90);
 Insert Into Libros
  Values('Antología Poética','Borges','Planeta',39.50);
 Insert Into Libros
  Values('Java En 10 Minutos','Mario Molina','Planeta',50.50);
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Emece',19.90);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Emece',25.90);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Paidos',16.80);
 Insert Into Libros
  Values('Aprenda PHP','Mario Molina','Emece',19.50);
 Insert Into Libros
  Values('Cervantes Y El Quijote','Borges','Paidos',18.40);

 Select * From Libros
  Where (Autor='Borges') And
  (Precio<=20);

 Select * From Libros
  Where Autor='Borges' Or
  Editorial='Planeta';

 Select * From Libros
  Where Not Editorial='Planeta';

 Select * From Libros
  Where (Autor='Borges') Or
  (Editorial='Paidos' And Precio<20);

 Select * From Libros
  Where (Autor='Borges' Or Editorial='Paidos') And
  (Precio<20);

--Ejercicio 30
If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Precio Decimal(6,2),
 );

 Insert Into Libros
  Values('El Aleph','Borges','Emece',15.90);
 Insert Into Libros
  Values('Cervantes Y El Quijote','Borges','Paidos',Null);
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll',Null,19.90);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Emece',25.90);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Antología Poética','Borges',25.50);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Java En 10 Minutos','Mario Molina',45.80);
 Insert Into Libros (Titulo,Autor)
  Values('Martin Fierro','Jose Hernandez');
 Insert Into Libros (Titulo,Autor)
  Values('Aprenda PHP','Mario Molina');

 Select * From Libros
  Where Editorial Is Null;

 Select * From Libros
  Where Editorial Is Not Null;

  --Ejercicio 31
  If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Precio Decimal(6,2),
 );

 Insert Into Libros
  Values('El Aleph','Borges','Emece',15.90);
 Insert Into Libros
  Values('Cervantes Y El Quijote','Borges','Paidos',Null);
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll',Null,19.90);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Emece',25.90);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Antología Poética','Borges',32);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Java En 10 Minutos','Mario Molina',45.80);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Martin Fierro','Jose Hernandez',40);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Aprenda PHP','Mario Molina',56.50);

 Select * From Libros
  Where Precio Between 20 And 40;

 Select * From Libros
  Where Precio Not Between 20 And 35;

--Ejercicio 32
If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20),
  Editorial Varchar(20),
  Precio Decimal(6,2),
 );

 Insert Into Libros
  Values('El Aleph','Borges','Emece',15.90);
 Insert Into Libros
  Values('Cervantes Y El Quijote','Borges','Paidos',Null);
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll',Null,19.90);
 Insert Into Libros
  Values('Matematica Estas Ahi','Paenza','Siglo XXI',15);
 Insert Into Libros (Titulo,Precio)
  Values('Antología Poética',32);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Martin Fierro','Jose Hernandez',40);
 Insert Into Libros (Titulo,Autor,Precio)
  Values('Aprenda PHP','Mario Molina',56.50);

 Select * From Libros
  Where Autor In('Borges','Paenza');

 Select * From Libros
  Where Autor Not In ('Borges','Paenza');


--Ejercicio 33
If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Precio Decimal(6,2),
  Primary Key(Codigo)
 );

 Insert Into Libros
  Values('El Aleph','Borges','Emece',15.90);
 Insert Into Libros
  Values('Antología Poética','J. L. Borges','Planeta',Null);
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll',Null,19.90);
 Insert Into Libros
  Values('Matematica Estas Ahi','Paenza','Siglo XXI',15);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez',Default,40);
 Insert Into Libros
  Values('Aprenda PHP','Mario Molina','Nuevo Siglo',56.50);

 Select * From Libros
  Where Autor Like '%Borges%';

 Select * From Libros
  Where Titulo Like 'M%';

 Select * From Libros
  Where Titulo Not Like 'M%';

 Select * From Libros
  Where Autor Like '%Carrol_';

 Select Titulo,Autor,Editorial
  From Libros
  Where Editorial Like '[P-S]%';

 Select Titulo,Autor,Editorial
  From Libros
  Where Editorial Like '[^PN]%';

 Select Titulo,Precio From Libros
  Where Precio Like '1_.%';

 Select Titulo,Precio From Libros
  Where Precio Like '%.00';

--Ejercicio 34
If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Precio Decimal(6,2),
  Primary Key(Codigo)
 );

 Insert Into Libros
  Values('El Aleph','Borges','Emece',15.90);
 Insert Into Libros
  Values('Antología Poética','J. L. Borges','Planeta',Null);
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll',Null,19.90);
 Insert Into Libros
  Values('Matematica Estas Ahi','Paenza','Siglo XXI',15);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez',Default,40);
 Insert Into Libros
  Values('Aprenda PHP','Mario Molina','Nuevo Siglo',Null);
 Insert Into Libros
  Values('Uno','Richard Bach','Planeta',20);

 Select Count(*)
  From Libros;

 Select Count(*)
  From Libros
  Where Editorial='Planeta';

 Select Count(Precio)
  From Libros;

--Ejercicio 35
If Object_Id ('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(20) Default 'Desconocido',
  Editorial Varchar(20),
  Precio Decimal(6,2),
  Primary Key(Codigo)
 );

 Insert Into Libros Values('El Aleph','Borges','Emece',15.90);
 Insert Into Libros Values('Antología Poética','Borges','Planeta',Null);
 Insert Into Libros Values('Alicia En El Pais De Las Maravillas','Lewis Carroll',Null,19.90);
 Insert Into Libros Values('Matematica Estas Ahi','Paenza','Siglo XXI',15);
 Insert Into Libros Values('Martin Fierro','Jose Hernandez',Default,40);
 Insert Into Libros Values('Aprenda PHP','Mario Molina','Nuevo Siglo',Null);
 Insert Into Libros Values('Uno','Richard Bach','Planeta',20);

 Select Count_Big(*)
  From Libros;

 Select Count_Big(*)
  From Libros
  Where Editorial='Planeta';

 Select Count_Big(Precio)
  From Libros;

 Select Count_Big(Distinct Editorial)
  From Libros;

--Ejercicio 36
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40) Not Null,
  Autor Varchar(30) Default 'Desconocido',
  Editorial Varchar(15),
  Precio Decimal(5,2),
  Cantidad Tinyint,
  Primary Key(Codigo)
 );

 Insert Into Libros
  Values('El Aleph','Borges','Planeta',15,Null);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 Insert Into Libros
  Values('Antologia Poetica','J.L. Borges','Planeta',Null,150);
 Insert Into Libros
  Values('Aprenda PHP','Mario Molina','Emece',18.20,Null);
 Insert Into Libros
  Values('Cervantes Y El Quijote','Bioy Casares- J.L. Borges','Paidos',Null,100);
 Insert Into Libros
  Values('Manual De PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 Insert Into Libros
  Values('Harry Potter Y La Piedra Filosofal','J.K. Rowling',Default,45.00,90);
 Insert Into Libros
  Values('Harry Potter Y La Camara Secreta','J.K. Rowling','Emece',46.00,100);
 Insert Into Libros (Titulo,Autor,Cantidad)
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll',220);
 Insert Into Libros (Titulo,Autor,Cantidad)
  Values('PHP De La A A La Z',Default,0);

 Select Sum(Cantidad)
  From Libros;

 Select Sum(Cantidad)
  From Libros
  Where Editorial='Emece';

 Select Max(Precio)
  From Libros;

 Select Min(Precio)
  From Libros
  Where Autor Like '%Rowling%';

 Select Avg(Precio)
  From Libros
  Where Titulo Like '%PHP%';

--Ejercicio 37
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15),
  Precio Decimal(5,2),
  Cantidad Tinyint,
  Primary Key(Codigo)
 );

 Insert Into Libros
  Values('El Aleph','Borges','Planeta',15,Null);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 Insert Into Libros
  Values('Antologia Poetica','J.L. Borges','Planeta',Null,150);
 Insert Into Libros
  Values('Aprenda PHP','Mario Molina','Emece',18.20,Null);
 Insert Into Libros
  Values('Cervantes Y El Quijote','Bioy Casares- J.L. Borges','Paidos',Null,100);
 Insert Into Libros
  Values('Manual De PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 Insert Into Libros
  Values('Harry Potter Y La Piedra Filosofal','J.K. Rowling',Default,45.00,90);
 Insert Into Libros
  Values('Harry Potter Y La Camara Secreta','J.K. Rowling','Emece',Null,100);
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Paidos',22.50,200);
 Insert Into Libros
  Values('PHP De La A A La Z',Null,Null,Null,0);

 Select Editorial, Count(*)
  From Libros
  Group By Editorial;

 Select Editorial, Count(Precio)
  From Libros
  Group By Editorial;

 Select Editorial, Sum(Precio)
  From Libros
  Group By Editorial;

 Select Editorial,
  Max(Precio) As Mayor,
  Min(Precio) As Menor
  From Libros
  Group By Editorial;

 Select Editorial, Avg(Precio)
  From Libros
  Group By Editorial;

 Select Editorial, Count(*)
  From Libros
  Where Precio<30
  Group By Editorial;

 Select Editorial, Count(*)
  From Libros
  Where Precio<30
  Group By All Editorial;


--Ejercicio 38
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15),
  Precio Decimal(5,2),
  Cantidad Tinyint,
  Primary Key(Codigo)
 );

 Insert Into Libros
  Values('El Aleph','Borges','Planeta',35,Null);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Planeta',40,200);
 Insert Into Libros
  Values('Antologia Poetica','J.L. Borges','Planeta',Null,150);
 Insert Into Libros
  Values('Aprenda PHP','Mario Molina','Emece',18,Null);
 Insert Into Libros
  Values('Manual De PHP', 'J.C. Paez', 'Siglo XXI',56,120);
 Insert Into Libros
  Values('Cervantes Y El Quijote','Bioy Casares- J.L. Borges','Paidos',Null,100);
 Insert Into Libros
  Values('Harry Potter Y La Piedra Filosofal','J.K. Rowling',Default,45.00,90);
 Insert Into Libros
  Values('Harry Potter Y La Camara Secreta','J.K. Rowling','Emece',Null,100);
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Paidos',42,80);
 Insert Into Libros
  Values('PHP De La A A La Z',Null,Null,110,0);
 Insert Into Libros
  Values('Uno','Richard Bach','Planeta',25,Null);

 Select Editorial, Count(*) From Libros
  Group By Editorial
  Having Count(*)>2;

 Select Editorial, Avg(Precio) From Libros
  Group By Editorial
  Having Avg(Precio)>25;

 Select Editorial, Count(*) From Libros
  Where Precio Is Not Null
  Group By Editorial
  Having Editorial<>'Planeta';

 Select Editorial, Avg(Precio) From Libros
  Group By Editorial
  Having Count(*) > 2; 

 Select Editorial, Max(Precio) As 'Mayor'
  From Libros
  Group By Editorial
  Having Max(Precio)<100 And
  Max(Precio)>30
  Order By Editorial; 

--Ejercicio 39
If Object_Id('Visitantes') Is Not Null
  Drop Table Visitantes;

 Create Table Visitantes(
  Nombre Varchar(30),
  Edad Tinyint,
  Sexo Char(1),
  Domicilio Varchar(30),
  Ciudad Varchar(20),
  Telefono Varchar(11),
  Montocompra Decimal(6,2) Not Null
 );

 Insert Into Visitantes
  Values ('Susana Molina',28,'F',Null,'Cordoba',Null,45.50); 
 Insert Into Visitantes
  Values ('Marcela Mercado',36,'F','Avellaneda 345','Cordoba','4545454',22.40);
 Insert Into Visitantes
  Values ('Alberto Garcia',35,'M','Gral. Paz 123','Alta Gracia','03547123456',25); 
 Insert Into Visitantes
  Values ('Teresa Garcia',33,'F',Default,'Alta Gracia','03547123456',120);
 Insert Into Visitantes
  Values ('Roberto Perez',45,'M','Urquiza 335','Cordoba','4123456',33.20);
 Insert Into Visitantes
  Values ('Marina Torres',22,'F','Colon 222','Villa Dolores','03544112233',95);
 Insert Into Visitantes
  Values ('Julieta Gomez',24,'F','San Martin 333','Alta Gracia',Null,53.50);
 Insert Into Visitantes
  Values ('Roxana Lopez',20,'F','Null','Alta Gracia',Null,240);
 Insert Into Visitantes
  Values ('Liliana Garcia',50,'F','Paso 999','Cordoba','4588778',48);
 Insert Into Visitantes
  Values ('Juan Torres',43,'M','Sarmiento 876','Cordoba',Null,15.30);

 Select Ciudad,
  Count(*) As Cantidad
  From Visitantes
  Group By Ciudad With Rollup;

 Select Ciudad,Sexo,
  Count(*) As Cantidad
  From Visitantes
  Group By Ciudad,Sexo
  With Rollup;

 Select Ciudad,Sexo,
  Count(*) As Cantidad,
  Sum(Montocompra) As Total
  From Visitantes
  Group By Ciudad,Sexo
  With Rollup;

--Ejercicio 40
 If Object_Id('Empleados') Is Not Null
  Drop Table Empleados;

 Create Table Empleados (
  Documento Varchar(8) Not Null,
  Nombre Varchar(30),
  Sexo Char(1),
  Estadocivil Char(1),--C=Casado, S=Soltero,V=Viudo
  Seccion Varchar(20),
  Primary Key (Documento)
 );

 Insert Into Empleados
  Values ('22222222','Alberto Lopez','M','C','Sistemas');
 Insert Into Empleados
  Values ('23333333','Beatriz Garcia','F','C','Administracion');
 Insert Into Empleados
  Values ('24444444','Carlos Fuentes','M','S','Administracion');
 Insert Into Empleados
  Values ('25555555','Daniel Garcia','M','S','Sistemas');
 Insert Into Empleados
  Values ('26666666','Ester Juarez','F','C','Sistemas');
 Insert Into Empleados
  Values ('27777777','Fabian Torres','M','S','Sistemas');
 Insert Into Empleados
  Values ('28888888','Gabriela Lopez','F','C','Sistemas');
 Insert Into Empleados
  Values ('29999999','Hector Garcia','M','C','Administracion');
 Insert Into Empleados
  Values ('30000000','Ines Torres','F','C','Administracion');
 Insert Into Empleados
  Values ('11111111','Juan Garcia','M','V','Administracion');
 Insert Into Empleados
  Values ('12222222','Luisa Perez','F','V','Administracion');
 Insert Into Empleados
  Values ('31111111','Marcela Garcia','F','S','Administracion');
 Insert Into Empleados
  Values ('32222222','Nestor Fuentes','M','C','Sistemas');
 Insert Into Empleados
  Values ('33333333','Oscar Garcia','M','S','Sistemas');
 Insert Into Empleados
  Values ('34444444','Patricia Juarez','F','C','Administracion');
 Insert Into Empleados
  Values ('35555555','Roberto Torres','M','C','Sistemas');
 Insert Into Empleados
  Values ('36666666','Susana Torres','F','C','Administracion');

 Select Sexo,Estadocivil,Seccion,
  Count(*) From Empleados
  Group By Sexo,Estadocivil,Seccion
  With Rollup;

 Select Sexo,Estadocivil,Seccion,
  Count(*) From Empleados
  Group By Sexo,Estadocivil,Seccion
  With Cube;

--Ejercicio 41
If Object_Id('Visitantes') Is Not Null
  Drop Table Visitantes;

 Create Table Visitantes(
  Nombre Varchar(30),
  Sexo Char(1),
  Ciudad Varchar(20)
 );

 Insert Into Visitantes Values('Susana Molina', 'F', 'Cordoba');
 Insert Into Visitantes Values('Marcela Mercado', 'F','Cordoba');
 Insert Into Visitantes Values('Roberto Perez','F',Null);
 Insert Into Visitantes Values('Alberto Garcia','M','Cordoba');
 Insert Into Visitantes Values('Teresa Garcia','F','Alta Gracia');

 Select Ciudad,
  Count(*) As Cantidad
  From Visitantes
  Group By Ciudad
  With Rollup;

 Select Ciudad,
  Count(*) As Cantidad,
  Grouping(Ciudad) As Resumen
  From Visitantes
  Group By Ciudad
  With Rollup;

--Ejercicio 42
If Object_Id('Visitantes') Is Not Null
  Drop Table Visitantes;

 Create Table Visitantes(
  Nombre Varchar(30),
  Edad Tinyint,
  Ciudad Varchar(20),
  Provincia Varchar(20),
  Mail Varchar(30),
  Montocompra Decimal(6,2)
 );

 Insert Into Visitantes
  Values ('Susana Molina',28,'Cordoba','Cordoba','Susanamolina@Gmail.Com',50); 
 Insert Into Visitantes
  Values ('Marcela Mercado',36,'Carlos Paz','Cordoba',Null,20);
 Insert Into Visitantes
  Values ('Alberto Garcia',35,'La Falda','Cordoba','Albertgomgarcia@Hotmail.Com',30); 
 Insert Into Visitantes
  Values ('Teresa Garcia',33,'Alta Gracia','Cordoba',Null,120);
 Insert Into Visitantes
  Values ('Roberto Perez',45,'Alta Gracia','Cordoba','Robertomarioperez@Hotmail.Com',30);
 Insert Into Visitantes
  Values ('Marina Torres',22,'Rosario','Santa Fe','Marinatorres@Xaxamail.Com',90);
 Insert Into Visitantes
  Values ('Julieta Gomez',24,'Rosario','Santa Fe',Null,50);
 Insert Into Visitantes
  Values ('Roxana Lopez',20,'Alta Gracia','Cordoba',Null,200);
 Insert Into Visitantes
  Values ('Liliana Garcia',50,'Capital Federal','Buenos Aires','Lilianagarcia@Hotmail.Com',40);
 Insert Into Visitantes
  Values ('Juan Torres',43,'Carlos Paz','Cordoba',Null,10);

 Select *From Visitantes
 Compute Avg(Montocompra);

 Select Edad,Ciudad,Montocompra
  From Visitantes
  Compute Avg(Edad),Sum(Montocompra);

 Select Nombre,Ciudad,Provincia
  From Visitantes
  Order By Provincia,Ciudad
  Compute Count(Provincia)
  By Provincia,Ciudad;

 Select *From Visitantes
  Order By Provincia,Ciudad
  Compute Avg(Edad), Sum(Montocompra)
  Compute Avg(Montocompra),Count(Provincia)
  By Provincia,Ciudad;

  --Ejercicio 43
   If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15),
  Primary Key(Codigo)
 );

 Insert Into Libros
  Values('El Aleph','Borges','Planeta');
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Emece');
 Insert Into Libros
  Values('Martin Fierro','Jose Hernandez','Planeta');
 Insert Into Libros
  Values('Antologia Poetica','Borges','Planeta');
 Insert Into Libros
  Values('Aprenda PHP','Mario Molina','Emece');
 Insert Into Libros
  Values('Aprenda PHP','Lopez','Emece');
 Insert Into Libros
  Values('Manual De PHP', 'J. Paez', Null);
 Insert Into Libros
  Values('Cervantes Y El Quijote',Null,'Paidos');
 Insert Into Libros
  Values('Harry Potter Y La Piedra Filosofal','J.K. Rowling','Emece');
 Insert Into Libros
  Values('Harry Potter Y La Camara Secreta','J.K. Rowling','Emece');
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Paidos');
 Insert Into Libros
  Values('Alicia En El Pais De Las Maravillas','Lewis Carroll','Planeta');
 Insert Into Libros
  Values('PHP De La A A La Z',Null,Null);
 Insert Into Libros
  Values('Uno','Richard Bach','Planeta');

 Select Distinct Autor From Libros;

 Select Distinct Autor From Libros
  Where Autor Is Not Null;

 Select Count(Distinct Autor)
  From Libros;

 Select Distinct Editorial From Libros;

 Select Count(Distinct Editorial) From Libros;

 Select Distinct Autor From Libros
  Where Editorial='Planeta';

 Select Editorial,Count(Distinct Autor)
  From Libros
  Group By Editorial;

 Select Distinct Titulo,Editorial
  From Libros
  Order By Titulo;

--Ejercicio 44
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(20),
  Editorial Varchar(20)
 );

 Insert Into Libros Values ('Uno','Richard Bach','Planeta');
 Insert Into Libros Values ('El Aleph','Borges','Emece');
 Insert Into Libros Values ('Alicia En El Pais...','Carroll','Planeta');
 Insert Into Libros Values ('Aprenda PHP','Mario Molina','Siglo XXI');
 Insert Into Libros Values ('Java En 10 Minutos','Mario Molina','Siglo XXI');
 Insert Into Libros Values ('Java Desde Cero','Mario Molina','Emece');
 Insert Into Libros Values ('Ilusiones','Richard Bach','Planeta');

 Select Top 2 * From Libros;

 Select Top 3 Titulo,Autor 
  From Libros
  Order By Autor;

 Select Top 3 With Ties Titulo,Autor 
  From Libros
  Order By Autor;

 Select Top 50 Percent
  * From Libros
  Order By Autor;

--Ejercicio 45
If Object_Id('Vehiculos') Is Not Null
  Drop Table Vehiculos;

 Create Table Vehiculos(
  Patente Char(6) Not Null,
  Tipo Char(1),--'A'=Auto, 'M'=Moto
  Horallegada Datetime,
  Horasalida Datetime,
  Primary Key(Patente,Horallegada)
 );

 Insert Into Vehiculos Values('AIC124','A','8:05','12:30');
 Insert Into Vehiculos Values('CAA258','A','8:05',Null);
 Insert Into Vehiculos Values('DSE367','M','8:30','18:00');
 Insert Into Vehiculos Values('FGT458','A','9:00',Null);
 Insert Into Vehiculos Values('AIC124','A','16:00',Null);
 Insert Into Vehiculos Values('LOI587','M','18:05','19:55');

 Insert Into Vehiculos Values('LOI587','M','18:05',Null);

 Insert Into Vehiculos Values('LOI587','M','21:30',Null);

 Update Vehiculos Set Horallegada='8:05'
  Where Patente='AIC124' And Horallegada='16:00';

 Insert Into Vehiculos Values('HUO690','M',Null,Null);

 Exec Sp_Columns Vehiculos;

--Ejercicio 47
 If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30) Default 'Desconocido',
  Editorial Varchar(15),
  Precio Decimal(6,2)
 );

 Insert Into Libros (Titulo,Editorial) Values('Martin Fierro','Emece');
 Insert Into Libros (Titulo,Editorial) Values('Aprenda PHP','Emece');

 Exec Sp_Helpconstraint Libros;

 Drop Table Libros;
 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15),
  Precio Decimal(6,2)
 );

 Alter Table Libros
   Add Constraint DF_Libros_Autor
   Default 'Desconocido'
   For Autor;

 Exec Sp_Helpconstraint Libros;

 Insert Into Libros (Titulo,Editorial) Values('Martin Fierro','Emece');
 Insert Into Libros Default Values;

 Select * From Libros;

 Alter Table Libros
   Add Constraint DF_Libros_Precio
   Default 0
   For Precio;

 Exec Sp_Helpconstraint Libros;

--Ejercicio 48
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15),
  Preciomin Decimal(5,2),
  Preciomay Decimal(5,2)
 );

 Insert Into Libros Values ('Uno','Bach','Planeta',22,20);
 Insert Into Libros Values ('El Quijote','Cervantes','Emece',15,13);
 Insert Into Libros Values ('Aprenda PHP','Mario Molina','Siglo XXI',48,53);
 Insert Into Libros Values ('Java En 10 Minutos','Garcia','Siglo XXI',35,40);

 Alter Table Libros
   Add Constraint CK_Libros_Precios_Positivo
   Check (Preciomin>=0 And Preciomay>=0);

 Update Libros Set Preciomay=48
  Where Titulo='Aprenda PHP';
 
 Delete From Libros Where Titulo='Java En 10 Minutos'; 

 Alter Table Libros
   Add Constraint CK_Libros_Preciominmay
   Check (Preciomay<=Preciomin);

 Exec Sp_Helpconstraint Libros;

 Insert Into Libros Default Values;

--Ejercicio 49
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15),
  Precio Decimal(5,2)
 );

 Insert Into Libros Values ('Uno','Bach','Planeta',22);
 Insert Into Libros Values ('El Quijote','Cervantes','Emece',15);
 Insert Into Libros Values ('Aprenda PHP','Mario Molina','Siglo XXI',-40);

 Alter Table Libros
 With Nocheck
 Add Constraint CK_Libros_Precio_Positivo
 Check (Precio>=0);

 Alter Table Libros
  Nocheck Constraint CK_Libros_Precio_Positivo;

 Insert Into Libros Values('Java En 10 Minutos',Default,'Siglo XXI',-1);

 Exec Sp_Helpconstraint Libros;

 Alter Table Libros
  Check Constraint CK_Libros_Precio_Positivo;

--Ejercicio 50
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Not Null,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15),
  Primary Key (Codigo)
 );

 Exec Sp_Helpconstraint Libros;

 Drop Table Libros;
 Create Table Libros(
  Codigo Int Not Null,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15)
 );

 Alter Table Libros
 Add Constraint PK_Libros_Codigo
 Primary Key(Codigo);

 Exec Sp_Helpconstraint Libros;

--Ejercicio 51
If Object_Id('Alumnos') Is Not Null
  Drop Table Alumnos;

 Create Table Alumnos(
  Legajo Char(4) Not Null,
  Apellido Varchar(20),
  Nombre Varchar(20),
  Documento Char(8)
 );

 Alter Table Alumnos
 Add Constraint PK_Alumnos_Legajo
 Primary Key(Legajo);

 Alter Table Alumnos
 Add Constraint UQ_Alumnos_Documento
 Unique (Documento);

 Insert Into Alumnos Values('A111','Lopez','Ana','22222222');
 Insert Into Alumnos Values('A123','Garcia','Maria','23333333');

 Exec Sp_Helpconstraint Alumnos;

--Ejercicio 52
If Object_Id('Alumnos') Is Not Null
  Drop Table Alumnos;

 Create Table Alumnos(
  Legajo Char(4) Not Null,
  Apellido Varchar(20),
  Nombre Varchar(20),
  Documento Char(8),
  Domicilio Varchar(30),
  Ciudad Varchar(30),
  Notafinal Decimal(4,2)
 );

 Alter Table Alumnos
 Add Constraint PK_Alumnos_Legajo
 Primary Key(Legajo);

 Alter Table Alumnos
 Add Constraint UQ_Alumnos_Documento
 Unique (Documento);

 Alter Table Alumnos
 Add Constraint CK_Alumnos_Nota
 Check (Notafinal>=0 And Notafinal<=10);

 Alter Table Alumnos
 Add Constraint DF_Alumnos_Ciudad
 Default 'Cordoba'
 For Ciudad;

 Exec Sp_Helpconstraint Alumnos;

 Alter Table Alumnos
  Nocheck Constraint CK_Alumnos_Nota;

 Exec Sp_Helpconstraint Alumnos;

--Ejercicio 53
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Not Null,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15),
  Precio Decimal(6,2)
 );

 Alter Table Libros
 Add Constraint PK_Libros_Codigo
 Primary Key(Codigo);

 Alter Table Libros
 Add Constraint CK_Libros_Precio
 Check (Precio>=0);

 Alter Table Libros
 Add Constraint DF_Libros_Autor
 Default 'Desconocido'
 For Autor;

 Alter Table Libros
 Add Constraint DF_Libros_Precio
 Default 0
 For Precio;

 Exec Sp_Helpconstraint Libros;

 Alter Table Libros
  Drop DF_Libros_Autor;

 Alter Table Libros
  Drop PK_Libros_Codigo;

 Exec Sp_Helpconstraint Libros;

--Ejercicio 54
If Object_Id('Empleados') Is Not Null
  Drop Table Empleados;

 Create Table Empleados (
  Documento Varchar(8) Not Null,
  Nombre Varchar(30),
  Seccion Varchar(20),
  Fechaingreso Datetime,
  Fechanacimiento Datetime,
  Hijos Tinyint,
  Sueldo Decimal(6,2)
 );

 If Object_Id ('RG_Documento_Patron') Is Not Null
   Drop Rule RG_Documento_Patron;
 If Object_Id ('RG_Empleados_Seccion') Is Not Null
   Drop Rule RG_Empleados_Seccion;
 If Object_Id ('RG_Empleados_Fechaingreso') Is Not Null
   Drop Rule RG_Empleados_Fechaingreso;
 If Object_Id ('RG_Hijos') Is Not Null
   Drop Rule RG_Hijos;
 If Object_Id ('RG_Empleados_Sueldo') Is Not Null
   Drop Rule RG_Empleados_Sueldo;
 If Object_Id ('RG_Empleados_Sueldo2') Is Not Null
   Drop Rule RG_Empleados_Sueldo2;

 Insert Into Empleados 
   Values('22222222','Ana Acosta','Contaduria','1990-10-10','1972-10-10',2,700);
 Insert Into Empleados 
   Values('23333333','Carlos Costa','Contaduria','1990-12-10','1972-05-04',0,750);
 Insert Into Empleados 
   Values('24444444','Daniel Duarte','Sistemas','1995-05-05','1975-10-06',1,880);
 Insert Into Empleados 
   Values('25555555','Fabiola Fuentes','Secretaria','1998-02-25','1978-02-08',3,550);
 Insert Into Empleados 
   Values('26666666','Gaston Garcia','Secretaria','1999-05-08','1981-01-01',3,670);
 Insert Into Empleados 
   Values('27777777','Ines Irala','Gerencia','2000-04-10','1985-12-12',0,6000);

 Create Rule RG_Documento_Patron
 As @Documento Like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]';

 Exec Sp_Help;

 Sp_Helpconstraint Empleados;

 Insert Into Empleados Values('Ab888888','Juan Juarez','Secretaria','2001-04-11','1986-11-12',0,600);

 Exec Sp_Bindrule RG_Documento_Patron, 'Empleados.Documento';

 Exec Sp_Helpconstraint Empleados;

 Create Rule RG_Empleados_Seccion
 As @Seccion In ('Secretaria','Contaduria','Sistemas','Gerencia');

 Exec Sp_Bindrule RG_Empleados_Seccion, 'Empleados.Seccion';

 Create Rule RG_Empleados_Fechaingreso
 As @Fecha <= Getdate();

 Exec Sp_Bindrule RG_Empleados_Fechaingreso, 'Empleados.Fechaingreso';
 Exec Sp_Bindrule RG_Empleados_Fechaingreso, 'Empleados.Fechanacimiento';

 Create Rule RG_Hijos
 As @Hijos Between 0 And 20;

 Exec Sp_Bindrule RG_Hijos, 'Empleados.Hijos';

 Create Rule RG_Empleados_Sueldo
 As @Sueldo>0 And @Sueldo<= 5000;

 Exec Sp_Bindrule RG_Empleados_Sueldo, 'Empleados.Sueldo';

 Create Rule RG_Empleados_Sueldo2
 As @Sueldo>0 And @Sueldo<= 7000;

 Exec Sp_Bindrule RG_Empleados_Sueldo2, 'Empleados.Sueldo';

 Insert Into Empleados Values('29999999','Luis Lopez','Secretaria','2002-03-03','1990-09-09',0,6000);

 Exec Sp_Help;

 Exec Sp_Helpconstraint Empleados;

--Ejercicio 55
 If Object_Id ('Empleados') Is Not Null
  Drop Table Empleados;

 If Object_Id ('RG_Sueldo_100a1000') Is Not Null
   Drop Rule RG_Sueldo_100a1000;

 Create Table Empleados(
  Documento Char(8),
  Nombre Varchar(30) Not Null,
  Seccion Varchar(20),
  Sueldo Decimal(6,2),
  Primary Key(Documento)
 );

 Create Rule RG_Sueldo_100a1000
 As @Sueldo Between 100 And 1000;

 Exec Sp_Bindrule RG_Sueldo_100a1000, 'Empleados.Sueldo';

 Exec Sp_Helpconstraint Empleados;

 Exec Sp_Unbindrule 'Empleados.Sueldo';

 Insert Into Empleados Values ('30111222','Pedro Torres','Contaduria',1200);

 Exec Sp_Helpconstraint Empleados;

 Exec Sp_Help;

 Drop Rule RG_Sueldo_100a1000;

--Ejercicio 56
 If Object_Id ('Empleados') Is Not Null
  Drop Table Empleados;
 If Object_Id ('RG_Sueldo') Is Not Null
   Drop Rule RG_Sueldo;
 If Object_Id ('RG_Seccion_Lista') Is Not Null
   Drop Rule RG_Seccion_Lista;

 Create Table Empleados(
  Documento Char(8) Not Null,
  Nombre Varchar(30) Not Null,
  Seccion Varchar(20),
  Sueldo Decimal(6,2),
  Primary Key(Documento)
 );

 Create Rule RG_Sueldo
 As @Sueldo Between 100 And 1000;

 Exec Sp_Bindrule RG_Sueldo, 'Empleados.Sueldo';

 Create Rule RG_Seccion_Lista
 As @Seccion In ('Sistemas','Secretaria','Contaduria');

 Exec Sp_Help RG_Sueldo;

 Exec Sp_Helpconstraint Empleados;

 Exec Sp_Bindrule RG_Seccion_Lista, 'Empleados.Seccion';

 Exec Sp_Helpconstraint Empleados;

 Exec Sp_Helptext "RG_Seccion_Lista";

 Exec Sp_Unbindrule 'Empleados.Sueldo'; 
 Drop Rule RG_Sueldo;

 Exec Sp_Help RG_Sueldo;

 Select * From Sysobjects
  Where Xtype='R' And
  Name Like '%Seccion%';

--Ejercicio 57
 If Object_Id ('Empleados') Is Not Null
  Drop Table Empleados;

 If Object_Id ('VP_Cero') Is Not Null
   Drop Default VP_Cero;
 If Object_Id ('VP_100') Is Not Null
   Drop Default VP_100;
 If Object_Id ('VP_Datodesconocido') Is Not Null
   Drop Default VP_Datodesconocido;
 If Object_Id ('VP_Telefono') Is Not Null
   Drop Default VP_Telefono;

 Create Table Empleados(
  Nombre Varchar(30),
  Domicilio Varchar(30),
  Barrio Varchar(15),
  Telefono Char(14),
  Sueldo Decimal(6,2)
 );

 Insert Into Empleados Default Values;
 Select * From Empleados;

 Create Default VP_Datodesconocido
  As 'Desconocido';

 Exec Sp_Bindefault VP_Datodesconocido, 'Empleados.Domicilio';

 Exec Sp_Bindefault VP_Datodesconocido, 'Empleados.Barrio';

 Insert Into Empleados Default Values;
 Select * From Empleados;

 Create Default VP_Cero
  As 0;

 Exec Sp_Bindefault VP_Cero, 'Empleados.Sueldo';

 Insert Into Empleados Default Values;
 Select * From Empleados;

 Create Default VP_100
  As 100;

 Exec Sp_Bindefault VP_100, 'Empleados.Sueldo';

 Insert Into Empleados Default Values;
 Select * From Empleados;

 Exec Sp_Helpconstraint Empleados;

 Exec Sp_Help;

 Create Default VP_Telefono
 As '(0000)0-000000';

 Exec Sp_Bindefault VP_Telefono,'Empleados.Telefono';

 Insert Into Empleados Default Values;
 Select * From Empleados;

 Exec Sp_Helpconstraint Empleados;


--Ejercicio 58
 If Object_Id ('Empleados') Is Not Null
  Drop Table Empleados;

 If Object_Id ('VP_Cero') Is Not Null
   Drop Default VP_Cero;
 If Object_Id ('VP_Datodesconocido') Is Not Null
   Drop Default VP_Datodesconocido;

 Create Table Empleados(
  Nombre Varchar(30),
  Domicilio Varchar(30),
  Barrio Varchar(15),
  Sueldo Decimal(6,2)
 );

 Create Default VP_Cero
  As 0;

 Exec Sp_Bindefault VP_Cero, 'Empleados.Sueldo';

 Create Default VP_Datodesconocido
  As 'Desconocido';

 Exec Sp_Bindefault VP_Datodesconocido, 'Empleados.Domicilio';
 Exec Sp_Bindefault VP_Datodesconocido, 'Empleados.Barrio';

 Exec Sp_Helpconstraint Empleados;

 Exec Sp_Unbindefault 'Empleados.Barrio';

 Exec Sp_Helpconstraint Empleados;
-- Exec Sp_Help;

 Exec Sp_Unbindefault 'Empleados.Domicilio';
 Drop Default VP_Datodesconocido;

--Ejercicio 59
If Object_Id ('Empleados') Is Not Null
  Drop Table Empleados;
 If Object_Id ('VP_Sueldo') Is Not Null
   Drop Default VP_Sueldo;
 If Object_Id ('VP_Seccion') Is Not Null
   Drop Default Vp_Seccion;

 Create Table Empleados(
  Documento Char(8) Not Null,
  Nombre Varchar(30) Not Null,
  Seccion Varchar(20),
  Sueldo Decimal(6,2),
  Primary Key(Documento)
 );

 Create Default VP_Sueldo
  As 500;

 Exec Sp_Bindefault VP_Sueldo, 'Empleados.Sueldo';

 Create Default VP_Seccion
  As 'Secretaria';

-- Exec Sp_Help;

 Exec Sp_Help VP_Sueldo;

 Exec Sp_Helpconstraint Empleados;

 Exec Sp_Bindefault VP_Seccion, 'Empleados.Seccion';

 Exec Sp_Helpconstraint Empleados;

 Exec Sp_Helptext VP_Seccion;

 Exec Sp_Unbindefault'empleados.Sueldo'; 
 Drop Default VP_Sueldo;

 Exec Sp_Help VP_Sueldo;

 Select * From Sysobjects
  Where Xtype='D' And
  Name Like '%Seccion%';

--Ejercicio 62
If Object_Id('Libros') Is Not Null
  Drop Table Libros;
 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15)
 );

 Create Unique Clustered Index I_Libros_Codigo
 On Libros(Codigo);

 Create Nonclustered Index I_Libros_Titulo
 On Libros(Titulo);

 Exec Sp_Helpindex Libros;

 Alter Table Libros
  Add Constraint PK_Libros_Codigo
  Primary Key Nonclustered (Codigo);

 Exec Sp_Helpindex Libros;

 Exec Sp_Helpconstraint Libros;

 Create Index I_Libros_Autoreditorial
 On Libros(Autor,Editorial);

 Select Name From Sysindexes;

 Select Name From Sysindexes
  Where Name Like 'I_%';

--Ejercicio 63
If Object_Id('Libros') Is Not Null
  Drop Table Libros;
 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15)
 );
 Create Nonclustered Index I_Libros_Titulo
 On Libros(Titulo);

 Exec Sp_Helpindex Libros;

 Create Index I_Libros_Titulo
  On Libros(Titulo,Autor)
  With Drop_Existing;

 Exec Sp_Helpindex Libros;

 Create Clustered Index I_Libros_Titulo
  On Libros(Titulo,Autor)
  With Drop_Existing;

 Exec Sp_Helpindex Libros;

 Create Clustered Index I_Libros_Titulo
  On Libros(Titulo)
  With Drop_Existing;

 Exec Sp_Helpindex Libros;

--Ejercicio 64
If Object_Id('Libros') Is Not Null
  Drop Table Libros;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Editorial Varchar(15)
 );

 Create Index I_Libros_Titulo
  On Libros(Titulo);

 Exec Sp_Helpindex Libros;

 Drop Index Libros.I_Libros_Titulo;

 Exec Sp_Helpindex Libros;

 If Exists (Select Name From Sysindexes
  Where Name = 'I_Libros_Titulo')
   Drop Index Libros.I_Libros_Titulo;

--Ejercicio 66
If Object_Id('Libros') Is Not Null
  Drop Table Libros;
 If Object_Id('Editoriales') Is Not Null
  Drop Table Editoriales;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30) Default 'Desconocido',
  Codigoeditorial Tinyint Not Null,
  Precio Decimal(5,2)
 );
 Create Table Editoriales(
  Codigo Tinyint Identity,
  Nombre Varchar(20),
  Primary Key (Codigo)
 );

 Insert Into Editoriales Values('Planeta');
 Insert Into Editoriales Values('Emece');
 Insert Into Editoriales Values('Siglo XXI');

 Insert Into Libros Values('El Aleph','Borges',2,20);
 Insert Into Libros Values('Martin Fierro','Jose Hernandez',1,30);
 Insert Into Libros Values('Aprenda PHP','Mario Molina',3,50);
 Insert Into Libros Values('Java En 10 Minutos',Default,3,45);

 Select * From Libros;

 Select Titulo, Autor, Nombre
  From Libros
  Join Editoriales
  On Codigoeditorial=Editoriales.Codigo;

 Select L.Codigo,Titulo,Autor,Nombre,Precio
  From Libros As L
  Join Editoriales As E
  On Codigoeditorial=E.Codigo;

 Select L.Codigo,Titulo,Autor,Nombre,Precio
  From Libros As L
  Join Editoriales As E
  On Codigoeditorial=E.Codigo
  Where E.Nombre='Siglo XXI';

 Select Titulo,Autor,Nombre
  From Libros As L
  Join Editoriales As E
  On Codigoeditorial=E.Codigo
  Order By Titulo;

--Ejercicico 67
If Object_Id('Libros') Is Not Null
  Drop Table Libros;
 If Object_Id('Editoriales') Is Not Null
  Drop Table Editoriales;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30) Default 'Desconocido',
  Codigoeditorial Tinyint Not Null,
  Precio Decimal(5,2)
 );
 Create Table Editoriales(
  Codigo Tinyint Identity,
  Nombre Varchar(20),
  Primary Key (Codigo)
 );

 Insert Into Editoriales Values('Planeta');
 Insert Into Editoriales Values('Emece');
 Insert Into Editoriales Values('Siglo XXI');

 Insert Into Libros Values('El Aleph','Borges',1,20);
 Insert Into Libros Values('Martin Fierro','Jose Hernandez',1,30);
 Insert Into Libros Values('Aprenda PHP','Mario Molina',2,50);
 Insert Into Libros Values('Java En 10 Minutos',Default,4,45);

  Select Titulo,Nombre
  From Editoriales As E
  Left Join Libros As L
  On Codigoeditorial = E.Codigo;

  Select Titulo,Nombre
  From Libros As L
  Left Join Editoriales As E
  On Codigoeditorial = E.Codigo;

 Select Titulo,Nombre
  From Editoriales As E
  Left Join Libros As L
  On E.Codigo=Codigoeditorial
  Where Codigoeditorial Is Not Null;

 Select Titulo,Nombre
  From Editoriales As E
  Left Join Libros As L
  On E.Codigo=Codigoeditorial
  Where Codigoeditorial Is Null;


--Ejercicio 68
If Object_Id('Libros') Is Not Null
  Drop Table Libros;
 If Object_Id('Editoriales') Is Not Null
  Drop Table Editoriales;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30) Default 'Desconocido',
  Codigoeditorial Tinyint Not Null,
  Precio Decimal(5,2)
 );
 Create Table Editoriales(
  Codigo Tinyint Identity,
  Nombre Varchar(20),
  Primary Key (Codigo)
 );

 Insert Into Editoriales Values('Planeta');
 Insert Into Editoriales Values('Emece');
 Insert Into Editoriales Values('Siglo XXI');

 Insert Into Libros Values('El Aleph','Borges',1,20);
 Insert Into Libros Values('Martin Fierro','Jose Hernandez',1,30);
 Insert Into Libros Values('Aprenda PHP','Mario Molina',2,50);
 Insert Into Libros Values('Java En 10 Minutos',Default,4,45);

 Select Titulo,Nombre
  From Libros As L
  Right Join Editoriales As E
  On Codigoeditorial = E.Codigo;

 Select Titulo,Nombre
  From Libros As L
  Right Join Editoriales As E
  On E.Codigo=Codigoeditorial
  Where Codigoeditorial Is Not Null;

 Select Titulo,Nombre
  From Libros As L
  Right Join Editoriales As E
  On E.Codigo=Codigoeditorial
  Where Codigoeditorial Is Null;

--Ejercicio 69
 If Object_Id('Libros') Is Not Null
  Drop Table Libros;
 If Object_Id('Editoriales') Is Not Null
  Drop Table Editoriales;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30) Default 'Desconocido',
  Codigoeditorial Tinyint Not Null,
  Precio Decimal(5,2)
 );
 Create Table Editoriales(
  Codigo Tinyint Identity,
  Nombre Varchar(20),
  Primary Key (Codigo)
 );

 Insert Into Editoriales Values('Planeta');
 Insert Into Editoriales Values('Emece');
 Insert Into Editoriales Values('Siglo XXI');

 Insert Into Libros Values('El Aleph','Borges',1,20);
 Insert Into Libros Values('Martin Fierro','Jose Hernandez',1,30);
 Insert Into Libros Values('Aprenda PHP','Mario Molina',2,50);
 Insert Into Libros Values('Java En 10 Minutos',Default,4,45);

 Select Titulo,Nombre
  From Editoriales As E
  Full Join Libros As L
  On Codigoeditorial = E.Codigo;

--Ejercicio 70
If Object_Id('Comidas') Is Not Null
  Drop Table Comidas;
 If Object_Id('Postres') Is Not Null
  Drop Table Postres;

 Create Table Comidas(
  Codigo Tinyint Identity,
  Nombre Varchar(30),
  Precio Decimal(4,2)
 );

 Create Table Postres(
  Codigo Tinyint Identity,
  Nombre Varchar(30),
  Precio Decimal(4,2)
 );

 Insert Into Comidas Values('Ravioles',5);
 Insert Into Comidas Values('Tallarines',4);
 Insert Into Comidas Values('Milanesa',7);
 Insert Into Comidas Values('Cuarto De Pollo',6);

 Insert Into Postres Values('Flan',2.5);
 Insert Into Postres Values('Porcion Torta',3.5);

 Select C.Nombre As 'Plato Principal',
  P.Nombre As 'Postre',
  C.Precio+P.Precio As 'Total'
  From Comidas As C
  Cross Join Postres As P;


--Ejercicio 71
If Object_Id('Comidas') Is Not Null
  Drop Table Comidas;

 Create Table Comidas(
  Codigo Int Identity,
  Nombre Varchar(30),
  Precio Decimal(4,2),
  Rubro Char(6),-- 'Plato'=Plato Principal', 'Postre'=Postre
  Primary Key(Codigo)
 );

 Insert Into Comidas Values('Ravioles',5,'Plato');
 Insert Into Comidas Values('Tallarines',4,'Plato');
 Insert Into Comidas Values('Milanesa',7,'Plato');
 Insert Into Comidas Values('Cuarto De Pollo',6,'Plato');
 Insert Into Comidas Values('Flan',2.5,'Postre');
 Insert Into Comidas Values('Porcion Torta',3.5,'Postre');

 Select C1.Nombre As 'Plato Principal',
  C2.Nombre As Postre,
  C1.Precio+C2.Precio As Total
  From Comidas As C1
  Cross Join Comidas As C2;

 Select C1.Nombre As 'Plato Principal',
  C2.Nombre As Postre,
  C1.Precio+C2.Precio As Total
  From Comidas As C1
  Cross Join Comidas As C2
  Where C1.Rubro='Plato' And
  C2.Rubro='Postre';

 Select C1.Nombre As 'Plato Principal',
  C2.Nombre As Postre,
  C1.Precio+C2.Precio As Total
  From Comidas As C1
  Join Comidas As C2
  On C1.Codigo<>C2.Codigo
  Where C1.Rubro='Plato' And
  C2.Rubro='Postre';

--Ejercicio 72
If Object_Id('Libros') Is Not Null
  Drop Table Libros;
 If Object_Id('Editoriales') Is Not Null
  Drop Table Editoriales;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30),
  Codigoeditorial Tinyint Not Null,
  Precio Decimal(5,2)
 );
 Create Table Editoriales(
  Codigo Tinyint Identity,
  Nombre Varchar(20),
  Primary Key (Codigo)
 );

 Insert Into Editoriales Values('Planeta');
 Insert Into Editoriales Values('Emece');
 Insert Into Editoriales Values('Siglo XXI');

 Insert Into Libros Values('El Aleph','Borges',1,20);
 Insert Into Libros Values('Martin Fierro','Jose Hernandez',1,30);
 Insert Into Libros Values('Aprenda PHP','Mario Molina',3,50);
 Insert Into Libros Values('Uno','Richard Bach',3,15);
 Insert Into Libros Values('Java En 10 Minutos',Default,4,45);

 Select Nombre As Editorial,
  Count(*) As Cantidad
  From Editoriales As E
  Join Libros As L
  On Codigoeditorial=E.Codigo
  Group By E.Nombre;

 Select Nombre As Editorial,
  Max(Precio) As 'Mayor Precio'
  From Editoriales As E
  Left Join Libros As L
  On Codigoeditorial=E.Codigo
  Group By Nombre;

--Ejercicio 73
If Object_Id('Libros') Is Not Null
  Drop Table Libros;
 If Object_Id('Autores') Is Not Null
  Drop Table Autores;
 If Object_Id('Editoriales') Is Not Null
  Drop Table Editoriales;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Codigoautor Int Not Null,
  Codigoeditorial Tinyint Not Null,
  Precio Decimal(5,2),
  Primary Key(Codigo)
 );

 Create Table Autores(
  Codigo Int Identity,
  Nombre Varchar(20),
  Primary Key (Codigo)
 );

 Create Table Editoriales(
  Codigo Tinyint Identity,
  Nombre Varchar(20),
  Primary Key (Codigo)
 );

 Insert Into Editoriales Values('Planeta');
 Insert Into Editoriales Values('Emece');
 Insert Into Editoriales Values('Siglo XXI');
 Insert Into Editoriales Values('Plaza');
 
 Insert Into Autores Values ('Richard Bach');
 Insert Into Autores Values ('Borges');
 Insert Into Autores Values ('Jose Hernandez');
 Insert Into Autores Values ('Mario Molina');
 Insert Into Autores Values ('Paenza');
 
 Insert Into Libros Values('El Aleph',2,2,20);
 Insert Into Libros Values('Martin Fierro',3,1,30);
 Insert Into Libros Values('Aprenda PHP',4,3,50);
 Insert Into Libros Values('Uno',1,1,15);
 Insert Into Libros Values('Java En 10 Minutos',0,3,45);
 Insert Into Libros Values('Matematica Estas Ahi',0,0,15);
 Insert Into Libros Values('Java De La A A La Z',4,0,50);

 Select Titulo,A.Nombre,E.Nombre,Precio
  From Autores As A
  Join Libros As L
  On Codigoautor=A.Codigo
  Join Editoriales As E
  On Codigoeditorial=E.Codigo;

 Select Titulo,A.Nombre,E.Nombre,Precio
  From Autores As A
  Right Join Libros As L
  On Codigoautor=A.Codigo
  Left Join Editoriales As E
  On Codigoeditorial=E.Codigo;

--Ejercicio 74
If Object_Id('Libros') Is Not Null
  Drop Table Libros;
 If Object_Id('Editoriales') Is Not Null
  Drop Table Editoriales;

 Create Table Libros(
  Codigo Int Identity,
  Titulo Varchar(40),
  Autor Varchar(30) Default 'Desconocido',
  Codigoeditorial Tinyint Not Null,
  Precio Decimal(5,2)
 );
 Create Table Editoriales(
  Codigo Tinyint Identity,
  Nombre Varchar(20),
  Primary Key (Codigo)
 );

 Insert Into Editoriales Values('Planeta');
 Insert Into Editoriales Values('Emece');
 Insert Into Editoriales Values('Siglo XXI');

 Insert Into Libros Values('El Aleph','Borges',2,20);
 Insert Into Libros Values('Martin Fierro','Jose Hernandez',1,30);
 Insert Into Libros Values('Aprenda PHP','Mario Molina',3,50);
 Insert Into Libros Values('Java En 10 Minutos',Default,3,45);

 Update Libros Set Precio=Precio+(Precio*0.1)
  From Libros 
  Join Editoriales As E
  On Codigoeditorial=E.Codigo
  Where Nombre='Planeta';

 Select Titulo,Autor,E.Nombre,Precio
  From Libros As L
  Join Editoriales As E
  On Codigoeditorial=E.Codigo;

 Delete Libros
  From Libros
  Join Editoriales
  On Codigoeditorial = Editoriales.Codigo
  Where Editoriales.Nombre='Emece';

 Select Titulo,Autor,E.Nombre,Precio
  From Libros As L
  Join Editoriales As E
  On Codigoeditorial=E.Codigo;






