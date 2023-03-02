Proceso elPorvenirPelis
	Definir anotacion,direccion,terminar Como Caracter;
	Definir nombreUsuario_0,nombreUsuario_1,nombreUsuario_2,nombreUsuario_3,nombreUsuario_4 Como Caracter;
	Definir opcion,opcionPeliculas,opcionPeli,opcionRegresar,cantidadPeliculas,peli,cantPeliAlquilar,cantPeliRegresar Como Entero;
	Definir usuario_0,usuario_1,usuario_2,usuario_3,usuario_4,identidad Como Entero;
	Definir pelis_usuario_0,pelis_usuario_1,pelis_usuario_2,pelis_usuario_3,pelis_usuario_4 Como Entero;
	Definir disponiblePelis_1,disponiblePelis_2,disponiblePelis_3,disponiblePelis_4 Como Entero;
	Definir precio_peli_1,precio_peli_2,precio_peli_3,precio_peli_4,total_Dia,precio Como Real;
	Definir nuevoUsuario,finalizar Como Logico;
	nuevoUsuario <- Verdadero;
	finalizar <- Falso;
	
	// venta inicial del dia
	total_Dia <- 100;
	// Nombre de Usuarios
	nombreUsuario_0 <- '';
	nombreUsuario_1 <- 'Julio';
	nombreUsuario_2 <- 'Adriana';
	nombreUsuario_3 <- 'Yelenis';
	nombreUsuario_4 <- 'Juan';
	// pelis de los usuarios
	pelis_usuario_0 <- 0;
	pelis_usuario_1 <- 1;
	pelis_usuario_2 <- 3;
	pelis_usuario_3 <- 2;
	pelis_usuario_4 <- 1;
	// Identicacion de Usuarios
	usuario_0 <- 0;
	usuario_1 <- 1;
	usuario_2 <- 2;
	usuario_3 <- 3;
	usuario_4 <- 4;
	// precio de las peliculas
	precio_peli_1 <- 20.5;
	precio_peli_2 <- 30.1;
	precio_peli_3 <- 25.7;
	precio_peli_4 <- 15.9;
	//Peliculas disponibles
	disponiblePelis_1 <- 2;
	disponiblePelis_2 <- 3;
	disponiblePelis_3 <- 4;
	disponiblePelis_4 <- 2;
	cantidadPeliculas <- disponiblePelis_1+disponiblePelis_2+disponiblePelis_3+disponiblePelis_4;
	
	Repetir
		Escribir "Bienvenido a la tienda del barrio el Porvenir";
		Escribir Sin Saltar "Digite su Identificacion para iniciar";
		Leer identidad;
		Si identidad = usuario_1 Entonces
			Si pelis_usuario_1>0 Entonces
				Escribir '';
				Escribir 'Hola ',nombreUsuario_1,' proceda a comprar en la tienda';
				Escribir 'Las peliculas que tienes son: ',pelis_usuario_1;
				nuevoUsuario <- Verdadero;
			FinSi
		SiNo
			Si identidad = usuario_2 Entonces
				Si pelis_usuario_2>0 Entonces
					Escribir '';
					Escribir 'Hola ',nombreUsuario_2,' proceda a comprar en la tienda';
					Escribir 'Las peliculas que tienes son: ',pelis_usuario_2;
					nuevoUsuario <- Verdadero;
				FinSi
			SiNo
				Si identidad = usuario_3 Entonces
					Si pelis_usuario_3>0 Entonces
						Escribir '';
						Escribir 'Hola ',nombreUsuario_3,' proceda a comprar en la tienda';
						Escribir 'Las peliculas que tienes son: ',pelis_usuario_3;
						nuevoUsuario <- Verdadero;
					FinSi
				SiNo
					Si identidad = usuario_4 Entonces
						Si pelis_usuario_4>0 Entonces
							Escribir '';
							Escribir 'Hola ',nombreUsuario_4,' proceda a comprar en la tienda';
							Escribir 'Las peliculas que tienes son: ',pelis_usuario_4;
							nuevoUsuario <- Verdadero;
						FinSi
					SiNo
						Escribir 'No se encuentra registrado, por favor registrese';
						nuevoUsuario <- Falso;
					FinSi
				FinSi
			FinSi
		FinSi
		Si nuevoUsuario = Falso Entonces
			Escribir 'Ingrese sus datos';
			Escribir Sin Saltar 'Ingrese nombre completo';
			Leer nombreUsuario_0;
			Repetir
				Escribir Sin Saltar 'Ingrese identificación';
				Leer usuario_0;
				Si usuario_0 = usuario_1 o usuario_0 = usuario_2 o usuario_0 = usuario_3 o usuario_0 = usuario_4 Entonces
					Escribir 'El usuario ya existe, digite una identificacion diferente';
				FinSi
			Hasta Que usuario_0 <> usuario_1 y usuario_0 <> usuario_2 y usuario_0 <> usuario_3 y usuario_0 <> usuario_4
			identidad <- usuario_0;
			Escribir Sin Saltar 'Ingrese dirección';
			Leer direccion;
			Escribir ' ';
			Escribir '__________Datos del usuario registrado__________';
			Escribir 'Nombre: ',nombreUsuario_0;
			Escribir 'Identificación: ',usuario_0;
			Escribir 'Dirección: ',direccion;
			Escribir 'Gracias por su registro proceda a comprar en la tienda';
		FinSi
		
		Escribir '';
		Escribir 'Menu de opciones';
		Escribir '1. Alquilar pelicula';
		Escribir '2. Consultar peliculas disponibles';
		Escribir '3. Regresar pelicula';
		Escribir '4. Usuarios registrados';
		Escribir '5. Ventas del Día';
		Leer opcion;
		
		Segun opcion  Hacer
			1:
				Repetir
					Escribir 'Elegir el tema de las peliculas disponibles';
					Escribir '1. Acción';
					Escribir '2. Misterio';
					Leer opcionPeliculas;
					Borrar Pantalla;
					Segun opcionPeliculas  Hacer
						1:
							Escribir 'Elegir una de las siguientes peliculas de Acción';
							Escribir ' ';
							Escribir '___________________________';
							Escribir '1. Duro de matar 7';
							Escribir 'Tema: Acción';
							Escribir 'Edad mínima: 18+';
							Escribir 'Duracion: 1:35:20';
							Escribir 'Precuelas: 6';
							Escribir 'Precio: ',precio_peli_1,' pesos';
							Escribir 'Disponibles: ',disponiblePelis_1;
							Escribir ' ';
							Escribir '___________________________';
							Escribir '2. John Wick 4';
							Escribir 'Tema: Acción';
							Escribir 'Edad mínima: 18+';
							Escribir 'Duracion: 1:53:30';
							Escribir 'Precuelas: 3';
							Escribir 'Precio: ',precio_peli_2,' pesos';
							Escribir 'Disponibles: ',disponiblePelis_2;
							Escribir '___________________________';
							Escribir '';
							Repetir
								Leer opcionPeli;
								Segun opcionPeli  Hacer
									1:
										peli <- 1;
										precio <- precio_peli_1;
									2:
										peli <- 2;
										precio <- precio_peli_2;
									De Otro Modo:
										Escribir 'La opción elegida NO existe';
								FinSegun
							Hasta Que opcionPeli = 1 o opcionPeli = 2
						2:
							Escribir 'Elegir una de las siguientes peliculas de Misterio';
							Escribir ' ';
							Escribir ' ___________________________';
							Escribir '1. La Causa Perdida';
							Escribir 'Tema: Misterio';
							Escribir 'Edad mínima: 10+';
							Escribir 'Duracion: 1:15:40';
							Escribir 'Precuelas: 0';
							Escribir 'Precio: ',precio_peli_3,' pesos';
							Escribir 'Disponibles: ',disponiblePelis_3;
							Escribir ' ';
							Escribir ' ___________________________';
							Escribir '2. En busca de la respuesta 2';
							Escribir 'Tema: Misterio';
							Escribir 'Edad mínima: 12+';
							Escribir 'Duracion: 1:27:55';
							Escribir 'Precuelas: 1';
							Escribir 'Precio: ',precio_peli_4,' pesos';
							Escribir 'Disponibles: ',disponiblePelis_4;
							Escribir '___________________________';
							Escribir '';
							Repetir
								Leer opcionPeli;
								Segun opcionPeli  Hacer
									1:
										peli <- 3;
										precio <- precio_peli_3;
									2:
										peli <- 4;
										precio <- precio_peli_4;
									De Otro Modo:
										Escribir 'La opción elegida NO existe';
								FinSegun
							Hasta Que opcionPeli = 1 o opcionPeli = 2
						De Otro Modo:
							Escribir 'La opción elegida NO existe';
					FinSegun
				Hasta Que opcionPeliculas = 1 o opcionPeliculas = 2
				
				Repetir
					Escribir Sin Saltar 'Ingrese la cantidad que desee ordenar:';
					Leer cantPeliAlquilar;
				Hasta Que cantPeliAlquilar > 0
				
				Si peli=1 Entonces
					Si disponiblePelis_1 >= cantPeliAlquilar Y disponiblePelis_1 > 0 Entonces
						disponiblePelis_1 <- disponiblePelis_1 - cantPeliAlquilar;
						si identidad = usuario_1 Entonces
							pelis_usuario_1 <- pelis_usuario_1 + cantPeliAlquilar;
						FinSi
						si identidad = usuario_2 Entonces
							pelis_usuario_2 <- pelis_usuario_2 + cantPeliAlquilar;
						FinSi
						si identidad = usuario_3 Entonces
							pelis_usuario_3 <- pelis_usuario_3 + cantPeliAlquilar;
						FinSi
						si identidad = usuario_4 Entonces
							pelis_usuario_4 <- pelis_usuario_4 + cantPeliAlquilar;
						FinSi
						si identidad = usuario_0 Entonces
							pelis_usuario_0 <- pelis_usuario_0 + cantPeliAlquilar;
						FinSi
						total_Dia <- total_Dia + precio*cantPeliAlquilar;
						Escribir cantPeliAlquilar,' und. Duro de matar 7 Alquilada';
						Escribir 'Valor total del servicio: ',precio*cantPeliAlquilar;
					SiNo
						Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
					FinSi
				FinSi
				
				Si peli=2 Entonces
					Si disponiblePelis_2 >= cantPeliAlquilar Y disponiblePelis_2 > 0 Entonces
						disponiblePelis_2 <- disponiblePelis_2 - cantPeliAlquilar;
						si identidad = 1 Entonces
							pelis_usuario_1 <- pelis_usuario_1 + cantPeliAlquilar;
						FinSi
						si identidad = 2 Entonces
							pelis_usuario_2 <- pelis_usuario_2 + cantPeliAlquilar;
						FinSi
						si identidad = 3 Entonces
							pelis_usuario_3 <- pelis_usuario_3 + cantPeliAlquilar;
						FinSi
						si identidad = 4 Entonces
							pelis_usuario_4 <- pelis_usuario_4 + cantPeliAlquilar;
						FinSi
						si identidad < 1 o identidad > 4 Entonces
							pelis_usuario_0 <- pelis_usuario_0 + cantPeliAlquilar;
						FinSi
						total_Dia <- total_Dia + precio*cantPeliAlquilar;
						Escribir 'Valor total del servicio: ',precio*cantPeliAlquilar;
						Escribir cantPeliAlquilar,' und. John Wick 4 Alquilada';
					SiNo
						Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
					FinSi
				FinSi
				
				Si peli=3 Entonces
					Si disponiblePelis_3 >= cantPeliAlquilar Y disponiblePelis_3 > 0 Entonces
						disponiblePelis_3 <- disponiblePelis_3 - cantPeliAlquilar;
						si identidad = 1 Entonces
							pelis_usuario_1 <- pelis_usuario_1 + cantPeliAlquilar;
						FinSi
						si identidad = 2 Entonces
							pelis_usuario_2 <- pelis_usuario_2 + cantPeliAlquilar;
						FinSi
						si identidad = 3 Entonces
							pelis_usuario_3 <- pelis_usuario_3 + cantPeliAlquilar;
						FinSi
						si identidad = 4 Entonces
							pelis_usuario_4 <- pelis_usuario_4 + cantPeliAlquilar;
						FinSi
						si identidad < 1 o identidad > 4 Entonces
							pelis_usuario_0 <- pelis_usuario_0 + cantPeliAlquilar;
						FinSi
						total_Dia <- total_Dia + precio*cantPeliAlquilar;
						Escribir 'Valor total del servicio: ',precio*cantPeliAlquilar;
						Escribir cantPeliAlquilar,' und. La Causa Perdida Alquilada';
					SiNo
						Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
					FinSi
				FinSi
				
				Si peli=4 Entonces
					Si disponiblePelis_4 >= cantPeliAlquilar Y disponiblePelis_4 > 0 Entonces
						disponiblePelis_4 <- disponiblePelis_4 - cantPeliAlquilar;
						si identidad = 1 Entonces
							pelis_usuario_1 <- pelis_usuario_1 + cantPeliAlquilar;
						FinSi
						si identidad = 2 Entonces
							pelis_usuario_2 <- pelis_usuario_2 + cantPeliAlquilar;
						FinSi
						si identidad = 3 Entonces
							pelis_usuario_3 <- pelis_usuario_3 + cantPeliAlquilar;
						FinSi
						si identidad = 4 Entonces
							pelis_usuario_4 <- pelis_usuario_4 + cantPeliAlquilar;
						FinSi
						si identidad < 1 o identidad > 4 Entonces
							pelis_usuario_0 <- pelis_usuario_0 + cantPeliAlquilar;
						FinSi
						total_Dia <- total_Dia + precio*cantPeliAlquilar;
						Escribir 'Valor total del servicio: ',precio*cantPeliAlquilar;
						Escribir cantPeliAlquilar,' und. En busca de la respuesta 2 Alquilada';
					SiNo
						Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
					FinSi
				FinSi				
				cantidadPeliculas <- cantidadPeliculas + cantPeliAlquilar;
				
			2:	
				Escribir '         Peliculas disponibles';
				Si disponiblePelis_1>0 Entonces
					Escribir disponiblePelis_1,' und. Duro de matar 7 ','-Precio: ',precio_peli_1,' pesos';
				FinSi
				Si disponiblePelis_2>0 Entonces
					Escribir disponiblePelis_2,' und. John Wick 4 ','-Precio: ',precio_peli_2,' pesos';
				FinSi
				Si disponiblePelis_3>0 Entonces
					Escribir disponiblePelis_3,' und. La Causa Perdida ','-Precio: ',precio_peli_3,' pesos';
				FinSi
				Si disponiblePelis_4>0 Entonces
					Escribir disponiblePelis_4,' und. En busca de la respuesta 2 ','-Precio: ',precio_peli_4,' pesos';
				FinSi
				Escribir 'Total peliculas disponibles: ',cantidadPeliculas;
				
			3: 	
				Escribir '          Peliculas para regresar';
				Escribir '1.',' Duro de matar 7 ','-Precio: ',precio_peli_1,' pesos';
				Escribir '2.',' John Wick 4 ','-Precio: ',precio_peli_2,' pesos';
				Escribir '3.',' La Causa Perdida ','-Precio: ',precio_peli_3,' pesos';
				Escribir '4.',' En busca de la respuesta 2 ','-Precio: ',precio_peli_4,' pesos';
				
				Repetir
					Escribir Sin Saltar 'Qué pelicula desea entregar?'; leer opcionRegresar;
				Hasta Que opcionRegresar >= 1 y opcionRegresar <= 4
				
				Segun identidad Hacer
					usuario_1:
						Repetir
							Escribir Sin Saltar 'Cuantas peliculas desea entregar:'; leer cantPeliRegresar;
						Hasta Que cantPeliRegresar <= pelis_usuario_1
						pelis_usuario_1 <- pelis_usuario_1 - cantPeliRegresar;
					usuario_2:
						Repetir
							Escribir Sin Saltar 'Cuantas peliculas desea entregar:'; leer cantPeliRegresar;
						Hasta Que cantPeliRegresar <= pelis_usuario_2
						pelis_usuario_2 <- pelis_usuario_2 - cantPeliRegresar;
					usuario_3:Repetir
						Escribir Sin Saltar 'Cuantas peliculas desea entregar:'; leer cantPeliRegresar;
					Hasta Que cantPeliRegresar <= pelis_usuario_3
					pelis_usuario_3 <- pelis_usuario_3 - cantPeliRegresar;
				usuario_4:
					Repetir
						Escribir Sin Saltar 'Cuantas peliculas desea entregar:'; leer cantPeliRegresar;
					Hasta Que cantPeliRegresar <= pelis_usuario_4
					pelis_usuario_4 <- pelis_usuario_4 - cantPeliRegresar;
				usuario_0:
					Repetir
						Escribir Sin Saltar 'Cuantas peliculas desea entregar:'; leer cantPeliRegresar;
					Hasta Que cantPeliRegresar <= pelis_usuario_0
					pelis_usuario_0 <- pelis_usuario_0 - cantPeliRegresar;
				De Otro Modo:
					Escribir 'Usuario no existe por la tanto, nunca llegara aquí';
			FinSegun
			Segun opcionRegresar Hacer
				1:
					disponiblePelis_1 <- disponiblePelis_1 + cantPeliRegresar;
					Escribir disponiblePelis_1,' und. Duro de matar 7 ','-Precio: ',precio_peli_1,' pesos';
				2:
					disponiblePelis_2 <- disponiblePelis_2 + cantPeliRegresar;
					Escribir disponiblePelis_2,' und. John Wick 4 ','-Precio: ',precio_peli_2,' pesos';
				3:
					disponiblePelis_3 <- disponiblePelis_3 + cantPeliRegresar;
					Escribir disponiblePelis_3,' und. La Causa Perdida ','-Precio: ',precio_peli_3,' pesos';
				4:
					disponiblePelis_4 <- disponiblePelis_4 + cantPeliRegresar;
					Escribir disponiblePelis_4,' und. En busca de la respuesta 2 ','-Precio: ',precio_peli_4,' pesos';
				De Otro Modo:
					Escribir 'La opción elegida NO existe';
			FinSegun
			cantidadPeliculas <- cantidadPeliculas + cantPeliRegresar;
			Escribir Sin Saltar 'Desea hacer una nota: '; leer anotacion;
			
		4:	
			Escribir '   Usuarios registrados';
			Escribir ' ___________________________';
			Escribir 'Usuario 1';
			Escribir 'Nombre: ',nombreUsuario_1;
			Escribir 'Identificion: ',usuario_1;
			Escribir 'Peliculas que tiene: ',pelis_usuario_1;
			Escribir ' ___________________________';
			Escribir 'Usuario 2';
			Escribir 'Nombre: ',nombreUsuario_2;
			Escribir 'Identificion: ',usuario_2;
			Escribir 'Peliculas que tiene: ',pelis_usuario_2;
			Escribir ' ___________________________';
			Escribir 'Usuario 3';
			Escribir 'Nombre: ',nombreUsuario_3;
			Escribir 'Identificion: ',usuario_3;
			Escribir 'Peliculas que tiene: ',pelis_usuario_3;
			Escribir ' ___________________________';
			Escribir 'Usuario 4';
			Escribir 'Nombre: ',nombreUsuario_4;
			Escribir 'Identificion: ',usuario_4;
			Escribir 'Peliculas que tiene: ',pelis_usuario_4;
			si usuario_0 <> 0 Entonces
				Escribir ' ___________________________';
				Escribir 'Usuario Nuevo';
				Escribir 'Nombre: ',nombreUsuario_0;
				Escribir 'Identificion: ',usuario_0;
				Escribir 'Peliculas que tiene: ',pelis_usuario_0;
			FinSi
			Escribir ' ';
		5:
			Escribir 'Venta Total del día';
			Escribir total_Dia,' pesos';
		De Otro Modo:
			Escribir 'La opción elegida NO existe';
	FinSegun
	
	Escribir '';
	Escribir Sin Saltar 'Deseas terminar el dia? (S/N)';
	Leer terminar;
	
	Si terminar='s' O terminar='S' Entonces
		finalizar <- Verdadero;
		Escribir '';
		Escribir 'Total ventas del día';
		Escribir total_Dia,' pesos';
		Escribir 'Gracias! Por utilizar este programa!';
	SiNo
		//Borrar Pantalla;
		Escribir 'Nueva operacion:';
	FinSi
Hasta Que finalizar
	
	
FinProceso

