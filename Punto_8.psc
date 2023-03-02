Proceso Tortas_8
	Definir opcion,opcionSabor,opcionTorta,identificacion,cantidadTorta,total_Dia Como Entero;
	Definir sabor,torta,decoracion Como Caracter;
	Definir nombrecompleto,direccion,terminar Como Caracter;
	Definir Almacen,finalizar Como Logico;
	Almacen <- Verdadero;
	finalizar <- Falso;
	Definir cantNutella,cantMousse,cantFresa,cantAlmendra Como Entero;
	Definir precio,precioNutella,precioMousse,precioFresa,precioAlmendra Como Real;
	// venta inicial del dia
	total_Dia <- 100;
	// chocolate
	cantNutella <- 1;
	cantMousse <- 6;
	// vainilla
	cantFresa <- 2;
	cantAlmendra <- 3;
	// precio de las tortas
	precioNutella <- 10;
	precioMousse <- 70;
	precioFresa <- 20;
	precioAlmendra <- 30;
	Repetir
		Escribir '1. Establecer pedido';
		Escribir '2. Tortas disponibles';
		Escribir '3. Ventas del Día';
		Leer opcion;
		
		Segun opcion  Hacer
			1:
				Escribir 'Elegir uno de los sabores';
				Escribir '1. Chocolate';
				Escribir '2. Vainilla';
				Leer opcionSabor;
				Borrar Pantalla;
				
				Segun opcionSabor  Hacer
					1:
						Escribir 'Elegir una de las siguientes tortas de Chocolate';
						Escribir ' ';
						Escribir '1. Torta de Nutella';
						Escribir '__________________________';
						Escribir 'Sabor: Chocolate';
						Escribir 'Relleno: Arequipe y leche condensada';
						Escribir 'Decoracion: Cacahuates';
						Escribir 'Porciones: 18';
						Escribir 'Precio: ',precioNutella,' pesos';
						Escribir 'Disponibles: ',cantNutella;
						Escribir ' ';
						Escribir '2. Torta Mousse';
						Escribir '__________________________';
						Escribir 'Sabor: Chocolate';
						Escribir 'Relleno: Ganache';
						Escribir 'Decoracion: Geometrico';
						Escribir 'Porciones: 12';
						Escribir 'Precio : ',precioMousse,' pesos';
						Escribir 'Disponibles: ',cantMousse;
						Escribir '';
						Leer opcionTorta;
						// Limpiar Pantalla
						Segun opcionTorta  Hacer
							1:
								torta <- 'Torta de Nutella';
								precio <- precioNutella;
							2:
								torta <- 'Torta Mousse';
								precio <- precioNutella;
							De Otro Modo:
								Escribir 'La opción elegida NO existe';
						FinSegun
					2:
						Escribir 'Elegir una de las siguientes tortas de Vainilla';
						Escribir ' ';
						Escribir '1. Torta de Fresa';
						Escribir ' __________________________';
						Escribir 'Sabor: Vainilla';
						Escribir 'Relleno: Fresa';
						Escribir 'Decoracion: Frutal';
						Escribir 'Porciones: 12';
						Escribir 'Precio: ',precioFresa,' pesos';
						Escribir 'Disponibles: ',cantFresa;
						Escribir ' ';
						Escribir '2. Torta de Almendra';
						Escribir ' __________________________';
						Escribir 'Sabor: Vainilla';
						Escribir 'Relleno: Manjar blanco';
						Escribir 'Decoracion: Azucar moreno';
						Escribir 'Porciones: 30';
						Escribir 'Precio: ',precioAlmendra,' pesos';
						Escribir 'Disponibles: ',cantAlmendra;
						Escribir '';
						Leer opcionTorta;
						// Limpiar Pantalla
						Segun opcionTorta  Hacer
							1:
								torta <- 'Torta de Fresa';
								precio <- precioFresa;
							2:
								torta <- 'Torta de Almendra';
								precio <- precioAlmendra;
							De Otro Modo:
								Escribir 'La opción elegida NO existe';
						FinSegun
					De Otro Modo:
						Escribir 'La opción elegida NO existe';
				FinSegun
				
				Escribir 'Ingrese la cantidad que desee ordenar:';
				Leer cantidadTorta;
				
				Si torta='Torta de Nutella' Entonces
					Si cantNutella>=cantidadTorta Y cantidadTorta>0 Entonces
						cantNutella <- cantNutella-cantidadTorta;
						Almacen <- Verdadero;
					SiNo
						Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
						Almacen <- Falso;
					FinSi
				SiNo
					Si torta='Torta Mousse' Entonces
						Si cantMousse>=cantidadTorta Y cantidadTorta>0 Entonces
							cantMousse <- cantMousse-cantidadTorta;
							Almacen <- Verdadero;
						SiNo
							Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
							Almacen <- Falso;
						FinSi
					SiNo
						Si torta='Torta de Fresa' Entonces
							Si cantFresa>=cantidadTorta Y cantidadTorta>0 Entonces
								cantFresa <- cantFresa-cantidadTorta;
								Almacen <- Verdadero;
							SiNo
								Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
								Almacen <- Falso;
							FinSi
						SiNo
							Si torta='Torta de Almendra' Entonces
								Si cantAlmendra>=cantidadTorta Y cantidadTorta>0 Entonces
									cantAlmendra <- cantAlmendra-cantidadTorta;
									Almacen <- Verdadero;
								SiNo
									Escribir 'No hay esa cantidad, por favor revisar disponibilidad.';
									Almacen <- Falso;
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				
				Si Almacen Entonces
					Escribir 'Ingrese sus datos';
					Escribir 'Ingrese nombre completo';
					Leer nombrecompleto;
					Escribir 'Ingrese identificación';
					Leer identificacion;
					Escribir 'Ingrese dirección';
					Leer direccion;
					Escribir ' ';
					Escribir '__________Detalle de la Compra__________';
					Escribir 'Comprador: ',nombrecompleto;
					Escribir 'Id: ',identificacion;
					Escribir 'Dirección: ',direccion;
					Escribir 'Cantidad de tortas: ',cantidadTorta,' ',torta,' -Precio por und: ',precio,' pesos';
					Escribir 'Total del pedido: ',cantidadTorta*precio;
					Escribir 'Favor de realizar el pago en la caja para hacer la entrega';
					precio <- precio*cantidadTorta;
					total_Dia <- total_Dia+precio;
				FinSi
			2:
				Escribir 'Tortas disponibles';
				Si cantNutella>0 Entonces
					Escribir cantNutella,' und. Torta de Nutella ',precioNutella,' pesos';
				FinSi
				Si cantMousse>0 Entonces
					Escribir cantMousse,' und. Torta Mousse ',precioMousse,' pesos';
				FinSi
				Si cantFresa>0 Entonces
					Escribir cantFresa,' und. Torta de Fresa ',precioFresa,' pesos';
				FinSi
				Si cantAlmendra>0 Entonces
					Escribir cantAlmendra,' und. Torta de Almendra ',precioAlmendra,' pesos';
				FinSi
			3:
				Escribir 'Venta Total del día';
				Escribir total_Dia,' pesos';
			De Otro Modo:
				Escribir 'La opción elegida NO existe';
		FinSegun
		
		Escribir '';
		Escribir 'Deseas terminar el dia? (S/N)';
		Leer terminar;
		
		Si terminar='s' O terminar='S' Entonces
			finalizar <- Verdadero;
			Escribir '';
			Escribir 'Total ventas del día';
			Escribir total_Dia,' pesos';
			Escribir 'Gracias! Por utilizar este programa!';
		SiNo
			Borrar Pantalla;
			Escribir 'Elige la operacion que deseas realizar:';
		FinSi
	Hasta Que finalizar
FinProceso
