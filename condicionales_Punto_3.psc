SubProceso nombre <- capnombre ( )
	Definir nombre,apellido Como Caracter;
	Escribir "Digite su nombre";
	Leer nombre;
FinSubProceso
SubProceso apellidos <- capapellidos ( )
	Definir apellidos Como Caracter;
	Escribir "Digite sus apellidos";
	Leer apellidos;
FinSubProceso
SubProceso edad <- capedad ( )
	Definir edad Como Entero;
	Escribir "Digite su edad";
	Leer edad;
FinSubProceso
SubProceso comprobarEdad (nombre,apellidos,edad)
	Si edad >= 18 Entonces
		Escribir nombre," ",apellidos, " usted es mayor de edad por lo tanto puede entrar";
	SiNo
		Escribir nombre," ",apellidos, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa";
	FinSi
FinSubProceso


Proceso entradaFiesta
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	Definir edad Como Entero;
	
	nombre<-capnombre();
	apellidos<-capapellidos();
	edad<-capedad();
	
	Limpiar Pantalla;
	comprobarEdad(nombre,apellidos,edad);
	
FinProceso
