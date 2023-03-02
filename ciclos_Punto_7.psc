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

SubProceso mostrarTitular ( titular_1,titular_2,titular_3,titular_4,titular_5 )
	Escribir 'Elegir una de los siguientes usuarios';
	Escribir '__________________________';
	Escribir '1. ',titular_1;
	Escribir '__________________________';
	Escribir '2. ',titular_2;
	Escribir '__________________________';
	Escribir '3. ',titular_3;
	Escribir '__________________________';
	Escribir '4. ',titular_4;
	Escribir '__________________________';
	Escribir '5. ',titular_5;
	Escribir '__________________________';
FinSubProceso

SubProceso  mostrarmenu(  )
	Escribir 'Bienvenido a El Guardián';
	Escribir '';
	Escribir '     Menu de opciones';
	Escribir '1. Ingresar al parqueadero';
	Escribir '2. Retirar del parqueadero';
	Escribir '3. Realizar una consulta';
	Escribir '4. Salir del programa';
FinSubProceso

Proceso elGuardian
	Definir opcionMenu, opcionUsuario Como Entero;
	Definir titular_1,titular_2,titular_3,titular_4,titular_5,terminar Como Caracter;
	titular_1 <- 'vehículo 1'; titular_2 <- 'vehículo 2'; titular_3 <- 'vehículo 3'; titular_4 <- 'vehículo 4'; titular_5 <- 'vehículo 5';
	Definir placaTitular_1,placaTitular_2,placaTitular_3,placaTitular_4,placaTitular_5, movimiento Como entero;
	placaTitular_1<-300;placaTitular_2<-250;placaTitular_3<-289;placaTitular_4<-579;placaTitular_5<-879;
	Definir parqueado_1,parqueado_2,parqueado_3,parqueado_4,parqueado_5 Como Logico;
	parqueado_1 <-Verdadero;parqueado_2 <-Falso;parqueado_3 <-Falso;parqueado_4 <-Falso;parqueado_5 <-Verdadero;
	terminar <- '';
	
	Repetir
		mostrarmenu( );
		Leer opcionMenu;
		Limpiar Pantalla;
		mostrarTitular( titular_1,titular_2,titular_3,titular_4,titular_5 );
		
		Segun opcionMenu Hacer
			1:
				Repetir
					Escribir Sin Saltar 'Digite el vehiculo a ingresar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Si parqueado_1 Entonces
								Escribir 'El vehiculo ya se encuentra en el parqueadero';
							SiNo
								Escribir Sin Saltar titular_1,' ingresado'; parqueado_1<-Verdadero;
							FinSi
							
						2:
							Si parqueado_2 Entonces
								Escribir 'El vehiculo ya se encuentra en el parqueadero';
							SiNo
								Escribir Sin Saltar titular_2,' ingresado'; parqueado_2<-Verdadero;
							FinSi
						3:
							Si parqueado_3 Entonces
								Escribir 'El vehiculo ya se encuentra en el parqueadero';
							SiNo
								Escribir Sin Saltar titular_3,' ingresado'; parqueado_3<-Verdadero;
							FinSi
						4:
							Si parqueado_4 Entonces
								Escribir 'El vehiculo ya se encuentra en el parqueadero';
							SiNo
								Escribir Sin Saltar titular_4,' ingresado'; parqueado_4<-Verdadero;
							FinSi
						5:
							Si parqueado_5 Entonces
								Escribir 'El vehiculo ya se encuentra en el parqueadero';
							SiNo
								Escribir Sin Saltar titular_5,' ingresado'; parqueado_5<-Verdadero;
							FinSi
					FinSegun
				Hasta Que opcionUsuario > 0 y 6 > opcionUsuario
				
			2:
				Repetir
					Escribir Sin Saltar 'Digite el vehiculo que desea retirar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Si NO parqueado_1 Entonces
								Escribir 'El vehiculo ya no se encuentra en el parqueadero';
							SiNo
								Escribir titular_1,' Retirado'; parqueado_1<-Falso;
							FinSi
						2:
							Si NO parqueado_2 Entonces
								Escribir 'El vehiculo ya no se encuentra en el parqueadero';
							SiNo
								Escribir titular_2,' Retirado'; parqueado_2<-Falso;
							FinSi
						3:
							Si NO parqueado_3 Entonces
								Escribir 'El vehiculo ya no se encuentra en el parqueadero';
							SiNo
								Escribir titular_3,' Retirado'; parqueado_3<-Falso;
							FinSi
						4:
							Si NO parqueado_4 Entonces
								Escribir 'El vehiculo ya no se encuentra en el parqueadero';
							SiNo
								Escribir titular_4,' Retirado'; parqueado_4<-Falso;
							FinSi
						3:
							Si NO parqueado_5 Entonces
								Escribir 'El vehiculo ya no se encuentra en el parqueadero';
							SiNo
								Escribir titular_5,' Retirado'; parqueado_5<-Falso;
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
							Escribir 'Nombre: Jose Rojas';
							Escribir 'Telefono: 3156475867';
							Escribir 'Placa: ',placaTitular_1;
							Escribir 'Marca: Toyota';
							Escribir 'En parqueadero: ',parqueado_1;
							Escribir '__________________________';
						2:
							Escribir '__________________________';
							Escribir '2. ',titular_2;
							Escribir 'Nombre: Yelenis Navarro';
							Escribir 'Telefono: 3165161249';
							Escribir 'Placa: ',placaTitular_2;
							Escribir 'Marca: Chevrolet';
							Escribir 'En parqueadero: ',parqueado_2;
							Escribir '__________________________';
						3:
							Escribir '__________________________';
							Escribir '3. ',titular_3;
							Escribir 'Nombre: Fulano Sutano';
							Escribir 'Telefono: 3004356786';
							Escribir 'Placa: ',placaTitular_3;
							Escribir 'Marca: Toyota';
							Escribir 'En parqueadero: ',parqueado_3;
							Escribir '__________________________';
						4:
							Escribir '__________________________';
							Escribir '4. ',titular_4;
							Escribir 'Nombre: Juan Arrieta';
							Escribir 'Telefono: 3163164089';
							Escribir 'Placa: ',placaTitular_4;
							Escribir 'Marca: Jeep';
							Escribir 'En parqueadero: ',parqueado_4;
							Escribir '__________________________';
							
						5:
							Escribir '__________________________';
							Escribir '5. ',titular_5;
							Escribir 'Nombre: Julio Vasquez';
							Escribir 'Telefono: 3186594878';
							Escribir 'Placa: ',placaTitular_5;
							Escribir 'Marca: Hyunday';
							Escribir 'En parqueadero: ',parqueado_5;
							Escribir '__________________________';
					FinSegun
				Hasta Que opcionUsuario >0 y 4 >opcionUsuario
			4:
				terminar <- Funcionsalir();
				
			De Otro Modo:
				Escribir 'La opcion no es valida';
		FinSegun
		Escribir '';
	Hasta Que terminar = 's' o terminar = 'S' 
FinProceso
