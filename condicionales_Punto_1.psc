SubProceso edades(  )
	Definir edad Como Entero;
	
	Escribir "¿Cual es su edad?";
	leer edad;
	
	si edad >= 18 Entonces
		Escribir "Usted es mayor de edad.";
	SiNo
		Escribir "Usted es menor de edad.";
	FinSi
FinSubProceso

Proceso mayorEdad
	edades();
FinProceso
