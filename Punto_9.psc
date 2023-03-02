Proceso profesorMatematica
	Definir altura,ancho,base,respuesta Como Real;
	Definir opcionMenu Como Entero;
	
	Escribir 'Calcular el area ';
	Escribir '1. Rectangulo';
	Escribir '2. Triangulo';
	Escribir '3. Trapecio';
	Escribir Sin Saltar 'Elija la figura: '; leer opcionMenu;
	Segun opcionMenu Hacer
		1:
			Escribir Sin Saltar 'Digite el primer lado del Rectangulo:'; leer altura;
			Escribir Sin Saltar 'Digite el segundo lado del Rectangulo:'; leer ancho;
			respuesta <- altura*ancho;
			Escribir 'El area del rectagulo es: ',respuesta;
			Escribir '';
		2:
			Escribir Sin Saltar 'Digite la altura del triangulo:'; leer altura;
			Escribir Sin Saltar 'Digite la base del triangulo:'; leer base;
			respuesta <- altura*base/2;
			Escribir 'El area del triangulo es: ',respuesta;
			Escribir '';
		3:
			Escribir Sin Saltar 'Digite la base mayor del trapecio:'; leer base;
			Escribir Sin Saltar 'Digite la base menor del trapecio:'; leer ancho;
			Escribir Sin Saltar 'Digite la altura del trapecio:'; leer altura;
			respuesta <- ((base+ancho)*altura)/2;
			Escribir 'El area del triangulo es: ',respuesta;
			Escribir '';
		De Otro Modo:
			Escribir 'La opcion no existe, por favor digite una de las disponibles.';
	FinSegun
	
	
FinProceso
