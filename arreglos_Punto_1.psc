SubProceso escribirPantalla ( interaciones,vectores )
	Escribir '[',interaciones,'] = ',vectores[interaciones];
FinSubProceso

SubProceso valorIngresado <- tomadePosicion ( interaciones )
	Definir valorIngresado Como Entero;
	Escribir Sin Saltar 'Digite el valor a ingresar en la posicion ',interaciones,':';
	leer valorIngresado;
FinSubProceso

Proceso vector5Posiciones
	Definir vectores, interaciones, valorIngresado Como Entero;
	Dimension vectores[5];
	
	Para interaciones<-0 Hasta 4 Con Paso 1 Hacer
		vectores[interaciones] <- tomadePosicion(interaciones);
	FinPara
	Para interaciones<-0 Hasta 4 Con Paso 1 Hacer
		escribirPantalla(interaciones,vectores);
	FinPara
	
FinProceso
