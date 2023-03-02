Proceso cicloHastaQue
	Definir f,i,n,m,v,u Como Entero;
	Definir c Como Caracter;
	n<-11; m<-0; v<-0; f<-0; i<-1; u<-0;
	c<-"*";
	
	//piramide inicial
	Escribir Sin Saltar '_';
	Repetir
		f<-f+1;
		//Espacios a la izquierda
		Repetir
			Escribir Sin Saltar ' ';
			i<-i+1;
		Hasta Que i > n-f
		i<-0;
		//Piramide central
		Repetir
			Escribir Sin Saltar c;
			i<-i+1;
		Hasta Que i >= 2*f-1
		i<-0;
		Escribir ' ';
	Hasta Que f >= n
	
	//Tronco del arbol
	Repetir
		m<-m+1;
		Repetir
			v<-v+1;
			Escribir Sin Saltar ' ';
		Hasta Que v>9
		v<-0;
		Escribir Sin Saltar '***';
		Escribir "";
	Hasta Que m>1
	
	Escribir '         *****';
	Escribir '        *******';
	
FinProceso
