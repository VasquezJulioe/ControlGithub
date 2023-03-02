Proceso menuInfinito
	Definir terminar, nombre Como Caracter;
	Definir opcion Como Entero;
	Definir finalizar Como Logico;
	finalizar <- Falso;
	nombre <- 'Victoria';
	
	Repetir
		Escribir ' Menu de usuario';
		Escribir '1. Captura nombre';
		Escribir '2. Saludar persona';
		Escribir '3. Salir del sistema';
		leer opcion;
		
		Segun opcion Hacer
			
			1:
				Escribir Sin Saltar 'Ingrese el nombre para captura: ';
				leer nombre;
				Escribir 'Nombre capturado: ',nombre;
				Escribir '';
			2:
				Escribir 'Hola ', nombre, ' es un placer Saludarte';
				Escribir '';
			3:
				Escribir '';
				Escribir 'Deseas salir del sistema? (S/N)';
				Leer terminar;
				
				Si terminar='s' O terminar='S' Entonces
					finalizar <- Verdadero;
					Escribir '';
					Escribir 'Gracias por utilizar este programa!';
				SiNo
					Borrar Pantalla;
					Escribir 'Elige la operacion que deseas realizar:';
					Escribir '';
				FinSi
			De Otro Modo:
				Escribir 'Seleccion erronea, por favor seleccionar una de las opciones existentes';
		FinSegun

	Hasta Que finalizar
FinProceso
