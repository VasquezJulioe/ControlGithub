Proceso miSaludEnSuba
	Definir medic,medic_1,medic_2,medic_3,medic_4 Como Caracter;
	medic <- '';medic_1 <- 'Aspirina';medic_2 <- 'Omeprazol';medic_3 <- 'Paracetamol';medic_4 <- 'Acetaminofén';
	Definir precioMedic_1,precioMedic_2,precioMedic_3,precioMedic_4 Como Real;
	precioMedic_1 <- 47.8;precioMedic_2 <- 75.7;precioMedic_3 <- 58.3;precioMedic_4 <- 24.5;
	Definir CantMedic_1, CantMedic_2,CantMedic_3,CantMedic_4 Como Entero;
	CantMedic_1 <- 5;CantMedic_2 <- 6;CantMedic_3 <- 8;CantMedic_4 <- 9;
	Definir CantCaja_1, CantCaja_2,CantCaja_3,CantCaja_4 Como Entero;
	CantCaja_1 <- 5;CantCaja_2 <- 6;CantCaja_3 <- 8;CantCaja_4 <- 9;
	Definir terminar Como Caracter;
	Definir bandera Como Logico;
	Definir opcionMenu,opcionCompra,cantComprar,cantMediDisponible Como Entero;
	Definir total_factura,precioComprado Como Real;
	total_factura <- 0; cantComprar<-0; precioComprado<-0;
	
	
	Repetir
		Escribir 'Bienvenido a la Drogueria mi Salud';
		Escribir '';
		Escribir '   Menu de opciones';
		Escribir '1. Compra de productos';
		Escribir '2. Consultar precios';
		Escribir '3. Devolucion de producto';
		Escribir '4. Generar factura';
		Leer opcionMenu;
		bandera<-Verdadero;
		Limpiar Pantalla;
		Segun opcionMenu Hacer
			1:
				Escribir 'Elegir una de las siguientes medicamentos';
				Escribir '__________________________';
				Escribir '1. ',medic_1;
				Escribir 'Sirve: ','Casi para todo';
				Escribir 'Unidades en Caja: 16';
				Escribir 'Precio: ',precioMedic_1,' pesos';
				Escribir 'Disponibles: ',CantMedic_1;
				Escribir '__________________________';
				Escribir '2. ',medic_2;
				Escribir 'Sirve: ','Para la acidez del estomago';
				Escribir 'Unidades en Caja: 10';
				Escribir 'Precio: ',precioMedic_2,' pesos';
				Escribir 'Disponibles: ',CantMedic_2;
				Escribir '__________________________';
				Escribir '3. ',medic_3;
				Escribir 'Sirve: ','Para aliviar el dolor';
				Escribir 'Unidades en Caja: 8';
				Escribir 'Precio: ',precioMedic_3,' pesos';
				Escribir 'Disponibles: ',CantMedic_3;
				Escribir '__________________________';
				Escribir '4. ',medic_4;
				Escribir 'Sirve: ','Para el dolor ligero o moderado';
				Escribir 'Unidades en Caja: 6';
				Escribir 'Precio: ',precioMedic_4,' pesos';
				Escribir 'Disponibles: ',CantMedic_4;
				Escribir '__________________________';
				Escribir Sin Saltar 'Eliga el producto a comprar';Leer opcionCompra;
				Repetir
					Escribir Sin Saltar 'Ingrese la cantidad que desee comprar:';Leer cantComprar;
				Hasta Que cantComprar > 0
				Limpiar Pantalla;
				Segun opcionCompra Hacer
					1:
						medic <- medic_1;
						cantMediDisponible <- CantMedic_1;
						precioComprado <- precioMedic_1;
					2:
						medic <- medic_2;
						cantMediDisponible <- CantMedic_2;
						precioComprado <- precioMedic_2;
					3:
						medic <- medic_3;
						cantMediDisponible <- CantMedic_3;
						precioComprado <- precioMedic_3;
					4:
						medic <- medic_4;
						cantMediDisponible <- CantMedic_4;
						precioComprado <- precioMedic_4;
					De Otro Modo:
						Escribir 'La opcion no es valida';
						bandera <- Falso;
				FinSegun
				Si cantMediDisponible >= cantComprar y bandera Entonces
					total_factura <- total_factura + cantComprar*precioComprado;
					Segun opcionCompra Hacer
						1:
							CantMedic_1 <- CantMedic_1 - cantComprar;
						2:
							CantMedic_2 <- CantMedic_2 - cantComprar;
						3:
							CantMedic_3 <- CantMedic_3 - cantComprar;
						4:
							CantMedic_4 <- CantMedic_4 - cantComprar;	
						De Otro Modo:
							escribir Sin Saltar '';
					FinSegun
					Escribir 'El medicamento ',medic,' fue añadido a la facura.';
					Escribir 'La compra tiene un valor de: ',total_factura,' pesos';
				SiNo
					Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
				FinSi
			2:
				Escribir 'Los precios son los siguientes';
				Escribir '__________________________';
				Escribir '1. ',medic_1;
				Escribir 'Sirve: ','Casi para todo';
				Escribir 'Unidades en Caja: 16';
				Escribir 'Precio: ',precioMedic_1,' pesos';
				Escribir 'Disponibles: ',CantMedic_1;
				Escribir '__________________________';
				Escribir '2. ',medic_2;
				Escribir 'Sirve: ','Para la acidez del estomago';
				Escribir 'Unidades en Caja: 10';
				Escribir 'Precio: ',precioMedic_2,' pesos';
				Escribir 'Disponibles: ',CantMedic_2;
				Escribir '__________________________';
				Escribir '3. ',medic_3;
				Escribir 'Sirve: ','Para aliviar el dolor';
				Escribir 'Unidades en Caja: 8';
				Escribir 'Precio: ',precioMedic_3,' pesos';
				Escribir 'Disponibles: ',CantMedic_3;
				Escribir '__________________________';
				Escribir '4. ',medic_4;
				Escribir 'Sirve: ','Para el dolor ligero o moderado';
				Escribir 'Unidades en Caja: 6';
				Escribir 'Precio: ',precioMedic_4,' pesos';
				Escribir 'Disponibles: ',CantMedic_4;
				Escribir '__________________________';
			3:
				Escribir 'Elegir el medicamento a devolver';
				Escribir '__________________________';
				Escribir '1. ',medic_1;
				Escribir 'Sirve: ','Casi para todo';
				Escribir 'Unidades en Caja: 16';
				Escribir 'Precio: ',precioMedic_1,' pesos';
				Escribir 'Disponibles: ',CantMedic_1;
				Escribir '__________________________';
				Escribir '2. ',medic_2;
				Escribir 'Sirve: ','Para la acidez del estomago';
				Escribir 'Unidades en Caja: 10';
				Escribir 'Precio: ',precioMedic_2,' pesos';
				Escribir 'Disponibles: ',CantMedic_2;
				Escribir '__________________________';
				Escribir '3. ',medic_3;
				Escribir 'Sirve: ','Para aliviar el dolor';
				Escribir 'Unidades en Caja: 8';
				Escribir 'Precio: ',precioMedic_3,' pesos';
				Escribir 'Disponibles: ',CantMedic_3;
				Escribir '__________________________';
				Escribir '4. ',medic_4;
				Escribir 'Sirve: ','Para el dolor ligero o moderado';
				Escribir 'Unidades en Caja: 6';
				Escribir 'Precio: ',precioMedic_4,' pesos';
				Escribir 'Disponibles: ',CantMedic_4;
				Escribir '__________________________';
				Escribir Sin Saltar 'Eliga el producto a devolver';Leer opcionCompra;
				Repetir
					Escribir Sin Saltar 'Ingrese la cantidad que desee devolver:';Leer cantComprar;
				Hasta Que cantComprar > 0
				Limpiar Pantalla;
				Segun opcionCompra Hacer
					1:
						medic <- medic_1;
						cantMediDisponible <- CantMedic_1;
						precioComprado <- precioMedic_1;
					2:
						medic <- medic_2;
						cantMediDisponible <- CantMedic_2;
						precioComprado <- precioMedic_2;
					3:
						medic <- medic_3;
						cantMediDisponible <- CantMedic_3;
						precioComprado <- precioMedic_3;
					4:
						medic <- medic_4;
						cantMediDisponible <- CantMedic_4;
						precioComprado <- precioMedic_4;
					De Otro Modo:
						Escribir 'La opcion no es valida';
						bandera <- Falso;
				FinSegun
				Si bandera Entonces
					total_factura <- total_factura - cantComprar*precioComprado;
					Segun opcionCompra Hacer
						1:
							CantMedic_1 <- CantMedic_1 + cantComprar;
						2:
							CantMedic_2 <- CantMedic_2 + cantComprar;
						3:
							CantMedic_3 <- CantMedic_3 + cantComprar;
						4:
							CantMedic_4 <- CantMedic_4 + cantComprar;	
						De Otro Modo:
							escribir Sin Saltar '';
					FinSegun
					Escribir 'El medicamento ',medic,' fue devuelto exitosamente.';
					Escribir 'La devolucion le retorna un valor de: ',cantComprar*precioComprado,' pesos';
				SiNo
					Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
				FinSi
			4:
				Si medic <> '' Entonces
					Escribir '';
					Escribir 'Total en factura';
					Escribir 'Medicamento: ',medic;
					Escribir 'Cantidad: ',cantComprar;
					Escribir 'Precio: ',precioComprado;
					Escribir total_factura,' pesos';
				SiNo
					Escribir 'No se ha generado ninguna compra'; Escribir '';
				FinSi
				
			De Otro Modo:
				Escribir 'La opcion no es valida';
		FinSegun
		
		Escribir ''; Escribir Sin Saltar 'Deseas salir de la drogeria? (S/N)';Leer terminar;
			Si terminar='s' O terminar='S' Entonces
			Escribir '';
			Escribir 'Total en factura';
			Escribir total_factura,' pesos';
			Escribir 'Gracias! Por comprar en mi Salud!';
		SiNo
			Borrar Pantalla;
			Escribir 'Nueva operacion:';
		FinSi
	Hasta Que terminar = 's' o terminar = 'S'
FinProceso
