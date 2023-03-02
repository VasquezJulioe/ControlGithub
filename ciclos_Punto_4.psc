Proceso tablaDeMultiplicar
	Definir contador, Solicitud Como Entero;
	
	Repetir
		Escribir Sin Saltar 'Ingrese el numero para la tabla que desea';
		Leer Solicitud;
	Hasta Que Solicitud > 0;
	
	Escribir '';
	Escribir 'La tabla del ',Solicitud,' es la siguiente:';
	
	Para contador<-1 Hasta 10 Con Paso 1 Hacer
		Escribir contador,' x ', Solicitud, ' = ',contador * Solicitud;
	FinPara
	
	
FinProceso
