Proceso matrizBidimencional
	Definir matrizQuemada, matrizCreada Como Caracter;
	Definir contadorFila, contadorColumna Como Entero;
	Dimension matrizQuemada[4,5], matrizCreada[4,5];
	
	matrizQuemada[0,0]<-'01';matrizQuemada[0,1]<-'02';matrizQuemada[0,2]<-'03';matrizQuemada[0,3]<-'04';matrizQuemada[0,4]<-'05';
	matrizQuemada[1,0]<-'06';matrizQuemada[1,1]<-'07';matrizQuemada[1,2]<-'08';matrizQuemada[1,3]<-'09';matrizQuemada[1,4]<-'10';
	matrizQuemada[2,0]<-'11';matrizQuemada[2,1]<-'12';matrizQuemada[2,2]<-'13';matrizQuemada[2,3]<-'14';matrizQuemada[2,4]<-'15';
	matrizQuemada[3,0]<-'16';matrizQuemada[3,1]<-'17';matrizQuemada[3,2]<-'18';matrizQuemada[3,3]<-'19';matrizQuemada[3,4]<-'20';
	
	Escribir Sin Saltar matrizQuemada[0,0],' ',matrizQuemada[0,1],' ',matrizQuemada[0,2],' ',matrizQuemada[0,3],' ',matrizQuemada[0,4];
	Escribir '';
	Escribir Sin Saltar matrizQuemada[1,0],' ',matrizQuemada[1,1],' ',matrizQuemada[1,2],' ',matrizQuemada[1,3],' ',matrizQuemada[1,4];
	Escribir '';
	Escribir Sin Saltar matrizQuemada[2,0],' ',matrizQuemada[2,1],' ',matrizQuemada[2,2],' ',matrizQuemada[2,3],' ',matrizQuemada[2,4];
	Escribir '';
	Escribir Sin Saltar matrizQuemada[3,0],' ',matrizQuemada[3,1],' ',matrizQuemada[3,2],' ',matrizQuemada[3,3],' ',matrizQuemada[3,4];
	Escribir '';
	Escribir '';
	Escribir 'Utilizando el conocimiento adquirido';
	
	Para contadorFila<-0 Hasta 3 Con Paso 1 Hacer
		Para contadorColumna<-0 Hasta 4 Con Paso 1 Hacer
			si contadorFila = 0 Entonces
				matrizCreada[contadorFila,contadorColumna] <- ConvertirATexto(contadorFila*5+contadorColumna+1);
				Escribir Sin Saltar '0',matrizCreada[contadorFila,contadorColumna],' ';
			FinSi
			si contadorFila = 2 Entonces
				matrizCreada[contadorFila,contadorColumna] <- ConvertirATexto(contadorFila*5+contadorColumna+1);
				Escribir Sin Saltar matrizCreada[contadorFila,contadorColumna],' ';
			FinSi
			si contadorFila = 1 Entonces
				matrizCreada[contadorFila,contadorColumna] <- ConvertirATexto(contadorFila*10-contadorColumna);
				si contadorFila*10-contadorColumna = 10 Entonces
					Escribir Sin Saltar matrizCreada[contadorFila,contadorColumna],' ';
				SiNo
					Escribir Sin Saltar '0',matrizCreada[contadorFila,contadorColumna],' ';
				FinSi
			FinSi
			si contadorFila = 3 Entonces
				matrizCreada[contadorFila,contadorColumna] <- ConvertirATexto(contadorFila*10-contadorColumna-10);
				Escribir Sin Saltar matrizCreada[contadorFila,contadorColumna],' ';
			FinSi
		FinPara
		Escribir '';
	FinPara
FinProceso
