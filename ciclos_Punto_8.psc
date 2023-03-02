SubProceso aprobado <- comprobarAprobacion ( puntajeTitular )
	Definir aprobado Como Logico;
	Si puntajeTitular > 59 Entonces
		aprobado <- Verdadero;
		Escribir 'Aprobado.';
	SiNo
		aprobado <- Falso;
		Escribir 'Reprobado.';
	FinSi
FinSubProceso

SubProceso terminar <- funcionsalir (  )
	Definir terminar Como Caracter;
	Limpiar Pantalla;
	Escribir '';
	Escribir Sin Saltar 'Deseas salir del taller (S/N) '; Leer terminar;
	Si terminar='s' O terminar='S' Entonces
		Escribir ''; Escribir 'Gracias! Por elegirnos taller El Maquinista!';
	SiNo
		Borrar Pantalla;
		Escribir '';
	FinSi
FinSubProceso

SubProceso mostrarTitular ( titular_1,titular_2,titular_3,titular_4,titular_5,titular_6,titular_7,titular_8 )
	Escribir 'Elegir una de los siguientes usuarios';
	Escribir '__________________________';
	Escribir '1. ',titular_1;
	Escribir '2. ',titular_2;
	Escribir '3. ',titular_3;
	Escribir '4. ',titular_4;
	Escribir '5. ',titular_5;
	Escribir '6. ',titular_6;
	Escribir '7. ',titular_7;
	Escribir '8. ',titular_8;
	Escribir '__________________________';
FinSubProceso

SubProceso  mostrarmenu(  )
	Escribir 'Bienvenido a la escuela El Maestro';
	Escribir '';
	Escribir '     Menu de opciones';
	Escribir '1. Registrar usuario';
	Escribir '2. Ingresar al curso';
	Escribir '3. Consultar las pruebas';
	Escribir '4. Salir del programa';
FinSubProceso

Proceso escuelaElMaestro
	Definir opcionMenu, opcionUsuario Como Entero;
	Definir titular_1,titular_2,titular_3,titular_4,titular_5,titular_6,titular_7,titular_8,terminar Como Caracter;
	titular_1 <- 'Jose'; titular_2 <- 'Daniel'; titular_3 <- 'Juan'; titular_4 <- 'Yele'; titular_5 <- 'Julio'; titular_6 <- 'Juel'; titular_7 <- 'Victoria'; titular_8 <- 'Victor';
	Definir puntajeTitular_1,puntajeTitular_2,puntajeTitular_3,puntajeTitular_4,puntajeTitular_5,puntajeTitular_6,puntajeTitular_7,puntajeTitular_8, nota Como entero;
	puntajeTitular_1<-60;puntajeTitular_2<-55;puntajeTitular_3<-45;puntajeTitular_4<-75;puntajeTitular_5<-87;puntajeTitular_6<-80;puntajeTitular_7<-97;puntajeTitular_8<-77;
	Definir aprobado_1,aprobado_2,aprobado_3,aprobado_4,aprobado_5,aprobado_6,aprobado_7,aprobado_8 Como Logico;
	aprobado_1 <-Verdadero;aprobado_2 <-Falso;aprobado_3 <-Falso;aprobado_4 <-Verdadero;aprobado_5 <-Verdadero;aprobado_6<-Verdadero;aprobado_7<-Verdadero;aprobado_8<-Verdadero;
	terminar <- '';
	
	Repetir
		mostrarmenu( );
		Leer opcionMenu;
		Limpiar Pantalla;
		mostrarTitular(titular_1,titular_2,titular_3,titular_4,titular_5,titular_6,titular_7,titular_8);
		
		Segun opcionMenu Hacer
			1:
				Repetir
					Escribir Sin Saltar 'Digite el usuario a registrar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir Sin Saltar'Ingrese el nombre del usuario:'; leer titular_1;
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_1;
							aprobado_1 <- comprobarAprobacion( puntajeTitular_1 );
						2:
							Escribir Sin Saltar'Ingrese el nombre del usuario:'; leer titular_2;
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_2;
							aprobado_2 <- comprobarAprobacion( puntajeTitular_2 );
						3:
							Escribir Sin Saltar'Ingrese el nombre del usuario:'; leer titular_3;
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_3;
							aprobado_3 <- comprobarAprobacion( puntajeTitular_3 );
						4:
							Escribir Sin Saltar'Ingrese el nombre del usuario:'; leer titular_4;
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_4;
							aprobado_4 <- comprobarAprobacion( puntajeTitular_4 );
						5:
							Escribir Sin Saltar'Ingrese el nombre del usuario:'; leer titular_5;
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_5;
							aprobado_5 <- comprobarAprobacion( puntajeTitular_5 );
						6:
							Escribir Sin Saltar'Ingrese el nombre del usuario:'; leer titular_6;
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_6;
							aprobado_6 <- comprobarAprobacion( puntajeTitular_6 );
						7:
							Escribir Sin Saltar'Ingrese el nombre del usuario:'; leer titular_7;
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_7;
							aprobado_7 <- comprobarAprobacion( puntajeTitular_7 );
						8:
							Escribir Sin Saltar'Ingrese el nombre del usuario:'; leer titular_8;
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_8;
							aprobado_8 <- comprobarAprobacion( puntajeTitular_8 );
					FinSegun
				Hasta Que opcionUsuario > 0 y 9 > opcionUsuario
				
			2:
				Repetir
					Escribir Sin Saltar 'Digite el usuario a ingresar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_1;
							aprobado_1 <- comprobarAprobacion( puntajeTitular_1 );							
						2:
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_2;
							aprobado_2 <- comprobarAprobacion( puntajeTitular_2 );
						3:
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_3;
							aprobado_3 <- comprobarAprobacion( puntajeTitular_3 );
						4:
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_4;
							aprobado_4 <- comprobarAprobacion( puntajeTitular_4 );
						5:
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_5;
							aprobado_5 <- comprobarAprobacion( puntajeTitular_5 );
						6:
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_6;
							aprobado_6 <- comprobarAprobacion( puntajeTitular_6 );						
						7:
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_7;
							aprobado_7 <- comprobarAprobacion( puntajeTitular_7 );
						8:
							Escribir Sin Saltar'Ingrese el puntaje del usuario:'; leer puntajeTitular_8;
							aprobado_8 <- comprobarAprobacion( puntajeTitular_8 );
					FinSegun
				Hasta Que opcionUsuario > 0 y 9 > opcionUsuario
				
			3:
				Repetir
					Escribir Sin Saltar 'Digite el usuario a consultar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir '__________________________';
							Escribir '1. Usuario 1';
							Escribir 'Nombre: ',titular_1;
							Escribir 'Calificacion: ',puntajeTitular_1;
							Escribir 'Aprobacion: ',aprobado_1;
							Escribir '__________________________';
						2:
							Escribir '__________________________';
							Escribir '2. Usuario 2';
							Escribir 'Nombre: ',titular_2;
							Escribir 'Calificacion: ',puntajeTitular_2;
							Escribir 'Aprobacion: ',aprobado_2;
							Escribir '__________________________';
						3:
							Escribir '__________________________';
							Escribir '3. Usuario 3';
							Escribir 'Nombre: ',titular_3;
							Escribir 'Calificacion: ',puntajeTitular_3;
							Escribir 'Aprobacion: ',aprobado_3;
							Escribir '__________________________';
						4:
							Escribir '__________________________';
							Escribir '4. Usuario 4';
							Escribir 'Nombre: ',titular_4;
							Escribir 'Calificacion: ',puntajeTitular_4;
							Escribir 'Aprobacion: ',aprobado_4;
							Escribir '__________________________';
							
						5:
							Escribir '__________________________';
							Escribir '5. Usuario 5';
							Escribir 'Nombre: ',titular_5;
							Escribir 'Calificacion: ',puntajeTitular_5;
							Escribir 'Aprobacion: ',aprobado_5;
							Escribir '__________________________';
						6:
							Escribir '__________________________';
							Escribir '6. Usuario 6';
							Escribir 'Nombre: ',titular_6;
							Escribir 'Calificacion: ',puntajeTitular_6;
							Escribir 'Aprobacion: ',aprobado_6;
							Escribir '__________________________';
						7:
							Escribir '__________________________';
							Escribir '7. Usuario 7';
							Escribir 'Nombre: ',titular_7;
							Escribir 'Calificacion: ',puntajeTitular_7;
							Escribir 'Aprobacion: ',aprobado_7;
							Escribir '__________________________';
						8:
							Escribir '__________________________';
							Escribir '8. Usuario 8';
							Escribir 'Nombre: ',titular_8;
							Escribir 'Calificacion: ',puntajeTitular_8;
							Escribir 'Aprobacion: ',aprobado_8;
							Escribir '__________________________';
						De Otro Modo:
							Escribir 'El usuario no existe.';
					FinSegun
				Hasta Que opcionUsuario > 0 y 9 > opcionUsuario
			4:
				terminar <- Funcionsalir();
				
			De Otro Modo:
				Escribir 'La opcion no es valida';
		FinSegun
		Escribir '';
	Hasta Que terminar = 's' o terminar = 'S' 
FinProceso
