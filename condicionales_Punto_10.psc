SubProceso terminar <- funcionsalir (  )
	Definir terminar Como Caracter;
	Escribir '';
	Escribir Sin Saltar 'Deseas salir del taller (S/N) '; Leer terminar;
	Si terminar='s' O terminar='S' Entonces
		Escribir ''; Escribir 'Gracias! Por elegirnos taller El Maquinista!';
	SiNo
		Borrar Pantalla;
		Escribir '';
	FinSi
FinSubProceso

SubProceso mostrarTitular ( titular_1,titular_2,titular_3 )
	Escribir 'Elegir una de los siguientes usuarios';
	Escribir '__________________________';
	Escribir '1. ',titular_1;
	Escribir '__________________________';
	Escribir '2. ',titular_2;
	Escribir '__________________________';
	Escribir '3. ',titular_3;
	Escribir '__________________________';
FinSubProceso

SubProceso  mostrarmenu(  )
	Escribir 'Bienvenido a Su Banco Fiel';
	Escribir '';
	Escribir '     Menu de opciones';
	Escribir '1. Realizar un Ingreso';
	Escribir '2. Realizar un Retiro';
	Escribir '3. Realizar una consulta';
FinSubProceso

Proceso suBancoFiel
	Definir titular_1,titular_2,titular_3,terminar Como Caracter;
	Definir opcionMenu, opcionUsuario Como Entero;
	Definir cantidadTitular_1,cantidadTitular_2,cantidadTitular_3, movimiento Como Real;
	cantidadTitular_1<-300;cantidadTitular_2<-250;cantidadTitular_3<-289;
	titular_1 <- 'Julio'; titular_2 <- 'Yelenis'; titular_3 <- 'Juel';
	Repetir
		mostrarmenu( );
		Leer opcionMenu;
		Limpiar Pantalla;
		mostrarTitular( titular_1,titular_2,titular_3 );
		
		Segun opcionMenu Hacer
			1:
				
				Repetir
					Escribir Sin Saltar 'Digite el usuario a ingresar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir Sin Saltar 'Digite la cantidad que desea ingresar:'; Leer movimiento;
							si movimiento > 0 Entonces
								cantidadTitular_1 <- CantidadTitular_1 + movimiento;
								Escribir 'Nueva Cantidad: ',cantidadTitular_1;
							SiNo
								Escribir 'La cantidad debe ser superior a cero';
							FinSi
						2:
							Escribir Sin Saltar 'Digite la cantidad que desea ingresar:'; Leer movimiento;
							si movimiento > 0 Entonces
								cantidadTitular_2 <- CantidadTitular_2 + movimiento;
								Escribir 'Nueva Cantidad: ',cantidadTitular_2;
							SiNo
								Escribir 'La cantidad debe ser superior a cero';
							FinSi
						3:
							Escribir Sin Saltar 'Digite la cantidad que desea ingresar:'; Leer movimiento;
							si movimiento > 0 Entonces
								cantidadTitular_3 <- CantidadTitular_3 + movimiento;
								Escribir 'Nueva Cantidad: ',cantidadTitular_3;
							SiNo
								Escribir 'La cantidad debe ser superior a cero';
							FinSi
					FinSegun
				Hasta Que opcionUsuario >0 y 4 >opcionUsuario
				
			2:
				Repetir
					Escribir Sin Saltar 'Digite el usuario que desea retirar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir Sin Saltar 'Digite la cantidad que desea retirar:'; Leer movimiento;
							si movimiento <= cantidadTitular_1 Entonces
								cantidadTitular_1 <- CantidadTitular_1 - movimiento;
								Escribir 'Nueva Cantidad: ',cantidadTitular_1;
							SiNo
								Escribir 'La cantidad supera la disponible';
							FinSi
						2:
							Escribir Sin Saltar 'Digite la cantidad que desea retirar:'; Leer movimiento;
							si movimiento <= cantidadTitular_2 Entonces
								cantidadTitular_2 <- CantidadTitular_2 - movimiento;
								Escribir 'Nueva Cantidad: ',cantidadTitular_2;
							SiNo
								Escribir 'La cantidad supera la disponible';
							FinSi
						3:
							Escribir Sin Saltar 'Digite la cantidad que desea retirar:'; Leer movimiento;
							si movimiento <= cantidadTitular_3 Entonces
								cantidadTitular_3 <- CantidadTitular_3 - movimiento;
								Escribir 'Nueva Cantidad: ',cantidadTitular_3;
							SiNo
								Escribir 'La cantidad supera la disponible';
							FinSi
					FinSegun
					
				Hasta Que opcionUsuario >0 y 4 >opcionUsuario
				
				
			3:
				Repetir
					Escribir Sin Saltar 'Digite el usuario a consultar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir '__________________________';
							Escribir '1. ',titular_1;
							Escribir 'Id: 1';
							Escribir 'Cantidad: ',cantidadTitular_1;
							Escribir '__________________________';
						2:
							Escribir '__________________________';
							Escribir '2. ',titular_2;
							Escribir 'Id: 2';
							Escribir 'Cantidad: ',cantidadTitular_2;
							Escribir '__________________________';
						3:
							Escribir '__________________________';
							Escribir '3. ',titular_3;
							Escribir 'Id: 3';
							Escribir 'Cantidad: ',cantidadTitular_3;
							Escribir '__________________________';
					FinSegun
				Hasta Que opcionUsuario >0 y 4 >opcionUsuario
			De Otro Modo:
				Escribir 'La opcion no es valida';
		FinSegun
		
	terminar <- funcionsalir();
	Hasta Que terminar = 's' o terminar = 'S' 
FinProceso
