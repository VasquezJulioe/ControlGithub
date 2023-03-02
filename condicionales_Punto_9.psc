SubProceso calculoTrapecio( base,altura,ancho )
	Definir respuesta Como Real;
	respuesta <- ((base+ancho)*altura)/2;
	Escribir 'El area del triangulo es: ',respuesta;
	Escribir '';
FinSubProceso

SubProceso areaTriangulo(  )
	Definir altura,ancho,base,respuesta Como Real;
	Escribir Sin Saltar 'Digite la altura del triangulo:'; leer altura;
	Escribir Sin Saltar 'Digite la base del triangulo:'; leer base;
	respuesta <- altura*base/2;
	Escribir 'El area del triangulo es: ',respuesta;
	Escribir '';
FinSubProceso

SubProceso respuesta <- calculorectangulo ( altura,ancho )
	Definir respuesta Como Real;
	respuesta <- altura*ancho;
FinSubProceso

SubProceso mostrarmenu(  )
	Escribir 'Calcular el area ';
	Escribir '1. Rectangulo';
	Escribir '2. Triangulo';
	Escribir '3. Trapecio';
FinSubProceso

Proceso profesorMatematica
	Definir altura,ancho,base,respuesta Como Real;
	Definir opcionMenu Como Entero;
	
	mostrarmenu();
	Escribir Sin Saltar 'Elija la figura: '; leer opcionMenu;
	Segun opcionMenu Hacer
		1:
			Escribir Sin Saltar 'Digite el primer lado del Rectangulo:'; leer altura;
			Escribir Sin Saltar 'Digite el segundo lado del Rectangulo:'; leer ancho;
			
			Escribir 'El area del rectagulo es: ',calculorectangulo( altura,ancho );
			Escribir '';
		2:
			areaTriangulo();
		3:
			Escribir Sin Saltar 'Digite la base mayor del trapecio:'; leer base;
			Escribir Sin Saltar 'Digite la base menor del trapecio:'; leer ancho;
			Escribir Sin Saltar 'Digite la altura del trapecio:'; leer altura;
			calculoTrapecio( base,altura,ancho );
		De Otro Modo:
			Escribir 'La opcion no existe, por favor digite una de las disponibles.';
	FinSegun
	
	
FinProceso
