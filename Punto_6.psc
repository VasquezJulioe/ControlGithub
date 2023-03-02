
Proceso almacenarContactos
	Definir nombre_1, telefono_1, organizacion_1 Como Caracter;
	Definir nombre_2, telefono_2, organizacion_2 Como Caracter;
	Definir nombre_3, telefono_3, organizacion_3 Como Caracter;
	nombre_1<-'';nombre_2<-'';nombre_3<-'';
	telefono_1<-'';telefono_2<-'';telefono_3<-'';
	organizacion_1<-'';organizacion_2<-'';organizacion_3<-'';
	Definir terminar, nombre_bucar Como Caracter;
	Definir opcion, opcion_b, opcion_e, opcion_eliminar Como Entero;
	Definir finalizar Como Logico; finalizar <- Falso;
	
	Repetir
		Escribir '     Menu de usuario';
		Escribir '1. Registrar nuevos usuarios';
		Escribir '2. Buscar contactos almacenados';
		Escribir '3. Eliminar contacto';
		Escribir '4. Salir del sistema';
		leer opcion;
		
		Segun opcion Hacer
			
			1:	//Registrar nuevo usuario
				Escribir Sin Saltar 'Ingrese el nombre completo: ';
				leer nombre_1;
				Escribir Sin Saltar 'Ingrese el numero de telefono: ';
				leer telefono_1;
				Mientras telefono_1 = telefono_2 o telefono_1 = telefono_3 Hacer
					Escribir 'El telefono ya esta registrado';
					Escribir Sin Saltar 'Por favor digitar un telefono distinto: '; leer telefono_1;
				FinMientras
				Escribir Sin Saltar 'Ingrese la organizacion: ';
				leer organizacion_1;
				Escribir ''; Escribir 'Registro Exitoso'; Escribir '';
				
				Escribir Sin Saltar 'Ingrese el nombre completo: ';
				leer nombre_2;
				Escribir Sin Saltar 'Ingrese el numero de telefono: ';
				leer telefono_2;
				Mientras telefono_1 = telefono_2 o telefono_2 = telefono_3 Hacer
					Escribir 'El telefono ya esta registrado';
					Escribir Sin Saltar 'Por favor digitar un telefono distinto: '; leer telefono_2;
				FinMientras
				Escribir Sin Saltar 'Ingrese la organizacion: ';
				leer organizacion_2;
				Escribir ''; Escribir 'Registro Exitoso'; Escribir '';
				
				Escribir Sin Saltar 'Ingrese el nombre completo: ';
				leer nombre_3;
				Escribir Sin Saltar 'Ingrese el numero de telefono: ';
				leer telefono_3;
				Mientras telefono_3 = telefono_2 o telefono_1 = telefono_3 Hacer
					Escribir 'El telefono ya esta registrado';
					Escribir Sin Saltar 'Por favor digitar un telefono distinto: '; leer telefono_3;
				FinMientras
				Escribir Sin Saltar 'Ingrese la organizacion: ';
				leer organizacion_3;
				Escribir ''; Escribir 'Registro Exitoso'; Escribir '';
				
			2:	//Contactos Almacenados
				Escribir '1. Mostrar contatos registrados';
				Escribir '2. Buscar contacto por nombre';
				Leer opcion_b;
				Segun opcion_b Hacer
					1:
						Escribir '1.   Usuario N°1';
						Escribir 'Nombre completo: ',nombre_1;
						Escribir 'Numero de telefono: ',telefono_1;
						Escribir 'Organizacion: ',organizacion_1;
						Escribir '2.   Usuario N°2';
						Escribir 'Nombre completo: ',nombre_2;
						Escribir 'Numero de telefono: ',telefono_2;
						Escribir 'Organizacion: ',organizacion_2;
						Escribir '3.   Usuario N°3';
						Escribir 'Nombre completo: ',nombre_3;
						Escribir 'Numero de telefono: ',telefono_3;
						Escribir 'Organizacion: ',organizacion_3;
					2:
						Escribir Sin Saltar 'Ingrese el nombre que desea buscar: ';
						leer nombre_bucar;
						Escribir ' ';
						si nombre_bucar = nombre_1 Entonces
							Escribir 'nombre completo: ',nombre_1;
							Escribir 'numero de telefono: ',telefono_1;
							Escribir 'Organizacion: ',organizacion_1;
						SiNo
							si nombre_bucar = nombre_2 Entonces
								Escribir 'nombre completo: ',nombre_2;
								Escribir 'numero de telefono: ',telefono_2;
								Escribir 'Organizacion: ',organizacion_2;
							SiNo
								si nombre_bucar = nombre_3 Entonces
									Escribir 'nombre completo: ',nombre_3;
									Escribir 'numero de telefono: ',telefono_3;
									Escribir 'Organizacion: ',organizacion_3;
								SiNo
									Escribir 'El nombre no esta registado';
								FinSi
							FinSi
						FinSi
					De Otro Modo:
						Escribir 'Seleccion erronea, por favor seleccionar una de las opciones existentes';
				FinSegun
				Escribir ' ';
				
			3:	//Eliminar contacto
				Escribir '1. Mostrar contatos para eliminar';
				Escribir '2. Buscar contacto por nombre';
				Leer opcion_e;
				Segun opcion_e Hacer
					1:
						Escribir '1.   Usuario N°1';
						Escribir 'Nombre completo: ',nombre_1;
						Escribir 'Numero de telefono: ',telefono_1;
						Escribir 'Organizacion: ',organizacion_1;
						Escribir '2.   Usuario N°2';
						Escribir 'Nombre completo: ',nombre_2;
						Escribir 'Numero de telefono: ',telefono_2;
						Escribir 'Organizacion: ',organizacion_2;
						Escribir '3.   Usuario N°3';
						Escribir 'Nombre completo: ',nombre_3;
						Escribir 'Numero de telefono: ',telefono_3;
						Escribir 'Organizacion: ',organizacion_3;
						Escribir ''; Escribir 'Digite el usuario a eliminar';
						leer opcion_eliminar;
						Segun opcion_eliminar Hacer
							1:
								nombre_1 <- '';
								telefono_1 <-'';
								organizacion_1 <-'';
								Escribir 'Usuario N°1 Eliminado';
							2:
								nombre_2 <- '';
								telefono_2 <-'';
								organizacion_2 <-'';
								Escribir 'Usuario N°2 Eliminado';
							3:
								nombre_3 <- '';
								telefono_3 <-'';
								organizacion_3 <-'';
								Escribir 'Usuario N°3 Eliminado';
							De Otro Modo:
								Escribir 'Seleccion erronea, por favor seleccionar una de las opciones existentes';
						FinSegun
					2:
						Escribir Sin Saltar 'Ingrese el nombre que desea eliminar: ';
						leer nombre_bucar;
						si nombre_bucar = nombre_1 Entonces
							Escribir 'Nombre completo: ',nombre_1;
							Escribir 'Numero de telefono: ',telefono_1;
							Escribir 'Organizacion: ',organizacion_1;
							opcion_eliminar<-1;
						SiNo
							si nombre_bucar = nombre_2 Entonces
								Escribir 'Nombre completo: ',nombre_2;
								Escribir 'Numero de telefono: ',telefono_2;
								Escribir 'Organizacion: ',organizacion_2;
								opcion_eliminar<-2;
							SiNo
								si nombre_bucar = nombre_3 Entonces
									Escribir 'Nombre completo: ',nombre_3;
									Escribir 'Numero de telefono: ',telefono_3;
									Escribir 'Organizacion: ',organizacion_3;
									opcion_eliminar<-3;
								SiNo
									Escribir 'El nombre no esta registado';
								FinSi
							FinSi
						FinSi
						Segun opcion_eliminar Hacer
							1:
								nombre_1 <- '';
								telefono_1 <-'';
								organizacion_1 <-'';
								Escribir 'Usuario N°1 Eliminado';
							2:
								nombre_2 <- '';
								telefono_2 <-'';
								organizacion_2 <-'';
								Escribir 'Usuario N°2 Eliminado';
							3:
								nombre_3 <- '';
								telefono_3 <-'';
								organizacion_3 <-'';
								Escribir 'Usuario N°3 Eliminado';
							De Otro Modo:
								Escribir 'Seleccion erronea, por favor seleccionar una de las opciones existentes';
						FinSegun
					De Otro Modo:
						Escribir 'Seleccion erronea, por favor seleccionar una de las opciones existentes';
				FinSegun
				
				Escribir ' ';
				
			4:
				Escribir '';
				Escribir 'Deseas salir del sistema? (S/N)';
				Leer terminar;
				
				Si terminar='s' O terminar='S' Entonces
					finalizar <- Verdadero;
					Escribir '';
					Escribir 'Gracias por utilizar este programa!';
				SiNo
					Borrar Pantalla;
					Escribir 'Elige la acción que deseas realizar:';
					Escribir '';
				FinSi
			De Otro Modo:
				Escribir 'Seleccion erronea, por favor seleccionar una de las opciones existentes';
		FinSegun
		
	Hasta Que finalizar
FinProceso

SubProceso eliminarContacto ( opcion_eliminar Por Referencia )

FinSubProceso