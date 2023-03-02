Proceso primosDe1A1000
	Definir contador, primos Como Entero;
	Dimension primos[500];
	Para contador<-0 Hasta 499 Con Paso 1 Hacer
		primos[contador] <- 2*contador+1;
		Escribir Sin Saltar primos[contador],' ';
	FinPara
	Escribir '';
FinProceso
