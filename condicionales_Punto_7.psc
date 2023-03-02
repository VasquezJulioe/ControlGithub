SubProceso rangodeIMC ( imc )
	Si imc < 18.5 Entonces
		Escribir 'Su indice de masa corporal es: Bajo peso';
	FinSi
	si imc >= 18.5 y 24.9 >= imc Entonces
		Escribir 'Su indice de masa corporal es: Normal';
	FinSi
	si imc >= 25.0 y 29.9 >= imc Entonces
		Escribir 'Su indice de masa corporal es: Sobrepeso';
	FinSi
	si imc >= 30 Entonces
		Escribir 'Su indice de masa corporal es: Obeso';
	FinSi
FinSubProceso

SubProceso terminar <- funcionsalir ( )
	Definir terminar Como Caracter;
	Escribir ''; 
	Escribir Sin Saltar 'Deseas salir del programa (S/N)'; Leer terminar;
	Si terminar='s' O terminar='S' Entonces
		Escribir ''; Escribir 'Gracias! Por elegirnos taller El Maquinista!';
	FinSi
FinSubProceso


Proceso indiceMasaCorporal
	Definir terminar Como Caracter;
	Definir peso, estatura, imc Como Real;
	
	Repetir
	Escribir 'Calculo de IMC';
	Escribir Sin Saltar 'Digite su estarura (mt):'; Leer estatura;
	Escribir Sin Saltar 'Digite su peso (Kg):'; Leer peso;
	//El IMC es el peso de una persona en kilogramos dividido por el cuadrado de la estatura en metros
	imc <- peso/(estatura*estatura);
	Escribir 'Su indice de masa corporal es: ',imc;
	
	rangodeIMC(imc);
	
	terminar <- Funcionsalir();
	
	Escribir '';
Hasta Que terminar = 's' o terminar = 'S'
FinProceso

