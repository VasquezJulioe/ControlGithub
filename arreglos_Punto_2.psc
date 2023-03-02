SubProceso mostrarNumerosImpares ( vector,vectorTemporal )
	Definir contador Como Entero;
	Escribir Sin Saltar 'Número impares: ';
	Para contador<-0 Hasta 19 Con Paso 1 Hacer
		si vectorTemporal[contador] = 1 Entonces
			Escribir Sin Saltar vector[contador],', ';
		FinSi
	FinPara
	Escribir '';
FinSubProceso

SubProceso mostrarNumerosPares ( vector,vectorTemporal)
	Definir contador Como Entero;
	Escribir Sin Saltar 'Número pares: ';
	Para contador<-0 Hasta 19 Con Paso 1 Hacer
		si vectorTemporal[contador] = 0 Entonces
			Escribir Sin Saltar ' ',vector[contador],',';
		FinSi
	FinPara
	Escribir '';
FinSubProceso

Proceso vectoresAzar
	Definir vector, vectorTemporal, contador Como Entero;
	Dimension vector[20]; Dimension vectorTemporal[20];
	
	Para contador<-0 Hasta 19 Con Paso 1 Hacer
		vector[contador] <- azar(101);
		Escribir Sin Saltar vector[contador],' ';
		vectorTemporal[contador] <- (vector[contador]) MOD 2;
		Escribir vectorTemporal[contador];
	FinPara
	
	mostrarNumerosPares( vector,vectorTemporal);
	
	mostrarNumerosImpares( vector,vectorTemporal);
	
FinProceso
