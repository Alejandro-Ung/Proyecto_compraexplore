Algoritmo CalcularCostoTiqueteAereo
	Definir Constante COSTO BOGOTA CARTAGENA = 200000 Como caracter,Constante COSTO BOGOTA-MEDELLIN = 180000, Constante COSTO_BOGOTA_CALI = 220000 Como Caracter;
		Definir Constante COSTO_BOGOTA_BARRANQUILLA = 190000 Como Caracter;
		Definir Constante COSTO_CARTAGENA_BOGOTA = 200000 Como Caracter;
		Definir Constante COSTO_MEDELLIN_BOGOTA = 180000 Como Caracter;
		Definir Constante COSTO_CALI_BOGOTA = 220000 Como Caracter;
		Definir Constante COSTO_BARRANQUILLA_BOGOTA = 190000 Como Caracter;
		Definir Constante COSTO_EXCESO_EQUIPAJE = 2000 Como Caracter;
		Definir Constante LIMITE_EQUIPAJE_PERMITIDO = 20 Como Caracter;
		Definir destino Como Cadena
		Definir pesoEquipaje Como Entero
		Definir costoTiquete Como Real
		Definir costoEquipajeExceso Como Real
		
		// Mostrar el menú de destinos y solicitar al usuario que elija uno
		Mostrar "Seleccione el destino:"
		Mostrar "1. Bogota-Cartagena"
		Mostrar "2. Bogota-Medellin"
		Mostrar "3. Bogota-Cali"
		Mostrar "4. Bogota-Barranquilla"
		Mostrar "5. Cartagena-Bogota"
		Mostrar "6. Medellin-Bogota"
		Mostrar "7. Cali-Bogota"
		Mostrar "8. Barranquilla-Bogota"
		Leer destino
		
		// Solicitar al usuario que ingrese el peso del equipaje
		Mostrar "Ingrese el peso del equipaje (en kilogramos):"
		Leer pesoEquipaje
		
		// Calcular el costo del tiquete según el destino seleccionado
		Segun destino Hacer
				Caso "1"
				costoTiquete = COSTO_BOGOTA_CARTAGENA
				Caso "2"
				costoTiquete = COSTO_BOGOTA_MEDELLIN
				Caso "3"
				costoTiquete = COSTO_BOGOTA_CALI
				Caso "4"
				costoTiquete = COSTO_BOGOTA_BARRANQUILLA
				Caso "5"
				costoTiquete = COSTO_CARTAGENA_BOGOTA
				Caso "6"
				costoTiquete = COSTO_MEDELLIN_BOGOTA
				Caso "7"
				costoTiquete = COSTO_CALI_BOGOTA
				Caso "8"
				costoTiquete = COSTO_BARRANQUILLA_BOGOTA
				De Otro Modo
				Mostrar "Destino no válido"
		Fin Segun
		
		// Calcular el costo del equipaje en exceso, si lo hay
		Si pesoEquipaje > LIMITE_EQUIPAJE_PERMITIDO Entonces
			costoEquipajeExceso = (pesoEquipaje - LIMITE_EQUIPAJE_PERMITIDO) * COSTO_EXCESO_EQUIPAJE
		Sino
			costoEquipajeExceso = 0
		Fin Si
		
		// Calcular el costo total del tiquete sumando el costo del equipaje en exceso, si lo hay
		costoTotal = costoTiquete + costoEquipajeExceso
		
		// Mostrar el costo total del tiquete
		Mostrar "El costo total del tiquete es: $", costoTotal
		
FinAlgoritmo
