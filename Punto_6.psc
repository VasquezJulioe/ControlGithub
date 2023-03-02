Proceso elMaquinista
	Definir Usuario_1,Usuario_2,Usuario_3 Como Caracter;
	Usuario_1 <- 'Julio'; Usuario_2 <- 'Yelenis'; Usuario_3 <- 'Juel';
	Definir registroIngreso_1,registroSalida_1,registroArreglos_1,registroIngreso_2,registroSalida_2,registroArreglos_2 Como Caracter;
	Definir terminar,salirRegistros,registroIngreso_3,registroSalida_3,registroArreglos_3 Como Caracter;
	Definir opcionMenu, opcionUsuario Como Entero;
	registroIngreso_1<-'';registroIngreso_2<-'';registroIngreso_3<-'';
	registroSalida_1<-'';registroSalida_2<-'';registroSalida_3<-'';
	registroArreglos_1<-'';registroArreglos_2<-'';registroArreglos_3<-'';
	Repetir
		Escribir 'Bienvenido al taller El Maquinista';
		Escribir '';
		Escribir '       Menu de opciones';
		Escribir '1. Registro de ingreso al taller';
		Escribir '2. Registro salida del taller';
		Escribir '3. Registro arreglos realizados';
		Escribir '4. Mostrar registros de las motos';
		Leer opcionMenu;
		Limpiar Pantalla;
		Segun opcionMenu Hacer
			1:
				Escribir 'Elegir una de los siguientes usuarios';
				Escribir '__________________________';
				Escribir '1. ',Usuario_1;
				Escribir 'Moto: MT-D3';
				Escribir 'Marca: Yamaha';
				Escribir '__________________________';
				Escribir '2. ',Usuario_2;
				Escribir 'Moto: GSXS 750';
				Escribir 'Marca: Suzuki';
				Escribir '__________________________';
				Escribir '3. ',Usuario_3;
				Escribir 'Moto: CB 650';
				Escribir 'Marca: Honda';
				Escribir '__________________________';
				Repetir
					Escribir Sin Saltar 'Digite el usuario a registarar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir Sin Saltar 'Digite el registro de ingreso:'; Leer registroIngreso_1;
						2:
							Escribir Sin Saltar 'Digite el registro de ingreso:'; Leer registroIngreso_2;
						3:
							Escribir Sin Saltar 'Digite el registro de ingreso:'; Leer registroIngreso_3;
					FinSegun
					
				Hasta Que registroIngreso_1 <> '' o registroIngreso_2 <> '' o registroIngreso_3 <> ''
				Limpiar Pantalla;
			2:
				Escribir 'Elegir una de los siguientes usuarios';
				Escribir '__________________________';
				Escribir '1. ',Usuario_1;
				Escribir 'Moto: MT-D3';
				Escribir 'Marca: Yamaha';
				Escribir '__________________________';
				Escribir '2. ',Usuario_2;
				Escribir 'Moto: GSXS 750';
				Escribir 'Marca: Suzuki';
				Escribir '__________________________';
				Escribir '3. ',Usuario_3;
				Escribir 'Moto: CB 650';
				Escribir 'Marca: Honda';
				Escribir '__________________________';
				Repetir
					Escribir Sin Saltar 'Digite el usuario a registarar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir Sin Saltar 'Digite el registro de Salida:'; Leer registroSalida_1;
						2:
							Escribir Sin Saltar 'Digite el registro de Salida:'; Leer registroSalida_2;
						3:
							Escribir Sin Saltar 'Digite el registro de Salida:'; Leer registroSalida_3;
					FinSegun
					
				Hasta Que registroSalida_1 <> '' o registroSalida_2 <> '' o registroSalida_3 <> ''
				Limpiar Pantalla;
				
			3:
				Escribir 'Elegir una de los siguientes usuarios';
				Escribir '__________________________';
				Escribir '1. ',Usuario_1;
				Escribir 'Moto: MT-D3';
				Escribir 'Marca: Yamaha';
				Escribir '__________________________';
				Escribir '2. ',Usuario_2;
				Escribir 'Moto: GSXS 750';
				Escribir 'Marca: Suzuki';
				Escribir '__________________________';
				Escribir '3. ',Usuario_3;
				Escribir 'Moto: CB 650';
				Escribir 'Marca: Honda';
				Escribir '__________________________';
				Repetir
					Escribir Sin Saltar 'Digite el usuario a registarar'; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir Sin Saltar 'Digite el registro de Arreglos:'; Leer registroArreglos_1;
						2:
							Escribir Sin Saltar 'Digite el registro de Arreglos:'; Leer registroArreglos_2;
						3:
							Escribir Sin Saltar 'Digite el registro de Arreglos:'; Leer registroArreglos_3;
					FinSegun
				Hasta Que registroArreglos_1 <> '' o registroArreglos_2 <> '' o registroArreglos_3 <> ''
				Limpiar Pantalla;
								
			4:
				Escribir 'Elegir una de los siguientes usuarios';
				Escribir '__________________________';
				Escribir '1. ',Usuario_1;
				Escribir 'Moto: MT-D3';
				Escribir 'Marca: Yamaha';
				Escribir '__________________________';
				Escribir '2. ',Usuario_2;
				Escribir 'Moto: GSXS 750';
				Escribir 'Marca: Suzuki';
				Escribir '__________________________';
				Escribir '3. ',Usuario_3;
				Escribir 'Moto: CB 650';
				Escribir 'Marca: Honda';
				Escribir '__________________________';
				
				Repetir
					Escribir Sin Saltar 'Digite el usuario a mostrar '; leer opcionUsuario;
					Segun opcionUsuario Hacer
						1:
							Escribir 'El registro de ingreso:',registroIngreso_1;
							Escribir 'El registro de Salida:',registroSalida_1;
							Escribir 'El registro de Arreglos:',registroArreglos_1;
						2:
							Escribir 'El registro de ingreso:',registroIngreso_2;
							Escribir 'El registro de Salida:',registroSalida_2;
							Escribir 'El registro de Arreglos:',registroArreglos_2;
						3:
							Escribir 'El registro de ingreso:',registroIngreso_3;
							Escribir 'El registro de Salida:',registroSalida_3;
							Escribir 'El registro de Arreglos:',registroArreglos_3;
						De Otro Modo:
							Escribir 'El usuario no existe'; Escribir '';
					FinSegun
				Hasta Que opcionUsuario =1 o opcionUsuario =2 o opcionUsuario =3
				
			De Otro Modo:
				Escribir 'La opcion no es valida';
		FinSegun
		
		Escribir '';
		Escribir Sin Saltar 'Deseas salir del taller (S/N) '; Leer terminar;
		Si terminar='s' O terminar='S' Entonces
			Escribir '';
			Escribir 'Gracias! Por elegirnos taller El Maquinista!';
		SiNo
			Borrar Pantalla;
			Escribir '';
		FinSi
	Hasta Que terminar = 's' o terminar = 'S'
FinProceso
