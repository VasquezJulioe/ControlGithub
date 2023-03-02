Proceso vector5Posiciones
	Definir vectores, interaciones, valorIngresado Como Entero;
	Dimension vectores[5];
	
	Para interaciones<-0 Hasta 4 Con Paso 1 Hacer
		Escribir Sin Saltar 'Digite el valor a ingresar en la posicion ',interaciones,':';
		leer valorIngresado;
		vectores[interaciones]<-valorIngresado;
		
	FinPara
	Para interaciones<-0 Hasta 4 Con Paso 1 Hacer
		Escribir '[',interaciones,'] = ',vectores[interaciones];
		
	FinPara
	
FinProceso
