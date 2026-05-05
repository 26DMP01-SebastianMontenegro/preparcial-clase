//Crear una app que simule un sistema de un cajero automatico
//1-tres intentos, al tercer intento bloquear tarjeta
//2- Consultar saldo
//3- retirar dinero
//4- deposito de dinero
//5- salir
Algoritmo CajeroAutomatico
	Definir saldo, deposito, retiro Como Real
	Definir opcion, intentos Como Entero
	Definir  pin, pinCorrecto como Entero
	
	saldo=10000
	pinCorrecto=1234
	intentos=0
	
	//validar el acceso por medio del pin
	Mientras intentos<3 Hacer
		Escribir Sin Saltar "Ingrese su PIN:"
		Leer pin
		
		Si pin == pinCorrecto Entonces
			Escribir "Acceso concedido!!!"
			
			Repetir
			Escribir "================================"
			Escribir "          MENU PRINCIPAL        "
			Escribir "1- Consultar saldo"
			Escribir "2- Depositar dinero"
			Escribir "3- Retirar dinero"
			Escribir "4- Salir"
			Escribir "2- Depositar dinero"
			Escribir "==============================="
			
			Escribir Sin Saltar "Seleccione una opcion:[]"
			Leer opcion
			
			Segun opcion Hacer
				1:
					Limpiar Pantalla
					Escribir "Su saldo actual es: Q.", saldo
					Escribir "Presione una tecla para volver al menu"
					Esperar Tecla
				2:
					Limpiar Pantalla
					Escribir Sin Saltar"Ingrese el monto a depositar Q."
					Leer deposito
					saldo=saldo+deposito
					Escribir "Deposito exitoso, saldo nuevo Q.", saldo
				3:
					Limpiar Pantalla
					Escribir sin saltar "Ingrese monto a retirar: Q."
					Leer retiro
					si retiro <=saldo Entonces
						saldo= saldo-retiro
						Escribir "Retiro exitoso, nuevo saldo Q.",saldo
					SiNo
						Escribir "Fondos Insuficiente"
					FinSi
				4:
					Limpiar Pantalla
					Escribir "Gracias por usar el cajero"
				De Otro Modo:
					Escribir "opcion Invalida"
			Fin Segun
		Hasta Que opcion==4
		//Terminar mi programa 
		
		intentos=5
	     SiNo
			intentos=intentos+1
			Escribir "PIN incorrecto, intentos ", intentos, " de 3"
		Fin Si
	Fin Mientras
	
	//Bloqueo de la tarjeta
	si intentos==3 Entonces
		Escribir "Tarjeta bloqueada"
		Escribir "Demasiados intentos fallidos"
	FinSi
	si intentos==3 Entonces
		Escribir ()
	FinSi
	Escribir "Presione una tecla para salir del sistema"
	Esperar Tecla
	
	
	
FinAlgoritmo
