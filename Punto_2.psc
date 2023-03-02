Proceso cicloMientrasHacer
		Definir fila,espacios,asterisco Como Entero;
		fila <- 0; espacios <- 0; asterisco <- 10;
		
		Mientras fila < 10 Hacer
			
			espacios <- fila;
			Mientras espacios < 9 Hacer
				espacios <- espacios+1;
				Escribir ' ' Sin Saltar;
			FinMientras
			
			asterisco <- fila+1;
			Mientras asterisco > 0 Hacer
				asterisco <- asterisco-1;
				Escribir '*' Sin Saltar;
			FinMientras
			
			fila <- fila+1;
			Escribir '';
		FinMientras
FinProceso

