Proceso tablaDeMutiplicar
	Definir salir Como Caracter;
	Definir tablaMultiplicar Como Entero;
	Definir contadorFila, contadorColumna, consultaFila, consultaColumna Como Entero;
	Dimension tablaMultiplicar[10,10];
	
	Repetir
		Escribir '                                       Tabla de Multiplicar';
		Para contadorFila<-0 Hasta 9 Con Paso 1 Hacer
			Escribir Sin Saltar '| ';
			Para contadorColumna<-0 Hasta 9 Con Paso 1 Hacer
				tablaMultiplicar[contadorFila,contadorColumna] <- (contadorColumna+1) * (contadorFila+1);
				
				Si contadorFila = 9 Entonces
					Escribir Sin Saltar contadorColumna+1,' x ',contadorFila+1,' |  ';
				SiNo
					Escribir Sin Saltar contadorColumna+1,' x ',contadorFila+1,'  |  ';
				FinSi
			FinPara
			Escribir '';
		FinPara
		
		Escribir Sin Saltar 'Inserte la columna la cual desea ver el resultado:';	
		Leer consultaColumna;
		Escribir Sin Saltar 'Inserte la fila la cual desea ver el resultado:';	
		Leer consultaFila;
		Escribir '';
		Escribir 'El resultado es: ',tablaMultiplicar[consultaColumna-1,consultaFila-1];
		Escribir 'Desea salir del programa? (S/N)';
		Leer salir;
		Limpiar Pantalla;
	Hasta Que salir = 's' O salir = 'S'
FinProceso
