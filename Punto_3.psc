Proceso nombre_apellidos_padre_madre
	Definir nombre,apellidos Como Caracter;
	Definir nombrePadre,apellidosPadre Como Caracter;
	Definir nombreMadre,apellidosMadre Como Caracter;
	
	Escribir "¿Digite su nombre?";
	Leer nombre;
	Escribir "¿Digite sus apellidos?";
	Leer apellidos;
	
	Escribir "¿Digite nombre del Padre?";
	Leer nombrePadre;
	Escribir "¿Digite apellidos del Padre?";
	Leer apellidosPadre;
	
	Escribir "¿Digite nombre de la Madre?";
	Leer nombreMadre;
	Escribir "¿Digite apellidos de la Madre?";
	Leer apellidosMadre;
	Limpiar Pantalla; 
	
	Escribir "Yo ", nombre," ", apellidos,' soy hijo de ',nombreMadre,' y ',nombrePadre;
FinProceso
//"Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre]."