Funcion ImprimirLogo(n)
    Definir i Como Entero
    Definir dibujo Como Caracter
	
    Dimension dibujo[13]
	
    dibujo[1] <- "         _                                           _"
    dibujo[2] <- "        / \                                         / \"
    dibujo[3] <- "       /   \     |\    |    /-----\    |-----\     /   \"
    dibujo[4] <- "   ___/_____\____| \   |   /           |      |___/_____\___"
    dibujo[5] <- "  ---/-------\---|  \  |  |     ---\   |-----/---/-------\---"
    dibujo[6] <- "    /         \  |   \ |   \       |   |    \   /         \"
    dibujo[7] <- "   /           \ |    \|    \_____/    |     \ /           \"
    dibujo[8] <- "  /             \ \                 \ /                 /   \"
    dibujo[9] <- "                 \ \_________________/ \_______________/"
    dibujo[10] <- "                  \_________________/   \_____________/"
	dibujo[11] <- ""
	dibujo[12] <- ""
	dibujo[13] <- "Escape de la prisión de máxima seguridad Ilha Grande"
	
    Si n >= 1 Y n <= 13 Entonces
        Para i <- 1 Hasta n Hacer
            Escribir dibujo[i]
        FinPara
    SiNo
        Escribir "Número fuera del rango (1-13)."
    FinSi
FinFuncion

SubProceso Inicio
    Definir Contador Como Entero
	
    Para Contador <- 1 Hasta 13 Con Paso 1 Hacer
        Limpiar Pantalla
        ImprimirLogo(Contador)
        Esperar 500 Milisegundos
    FinPara
	
    Para Contador <- 1 Hasta 5 Con Paso 1 Hacer
        Limpiar Pantalla
        Esperar 100 Milisegundos
		
        ImprimirLogo(13)
		
        Esperar 100 Milisegundos
    FinPara
	
    Esperar 2 Segundos
FinSubProceso

SubProceso Historia
    Definir Contador Como Entero
    Definir Prologo Como Caracter
	
    Dimension Prologo[15]
	
	Prologo[1] <- ""
    Prologo[2] <- "---- PRÓLOGO ----"
	Prologo[3] <- ""
	Prologo[4] <- "Eres el almirante Odalberto Mendes, el mejor legionario de la Marina de Brasil, rumbo a una expedicion."
	Prologo[5] <- "Durante el viaje, el barco en el que viajabas fue sorprendido por una violenta tormenta,"
	Prologo[6] <- "que termino hundiendolo junto con toda su tripulacion..."
	Prologo[7] <- ""
	Prologo[8] <- "Al dia siguiente, despiertas con la ropa rasgada y cubierto de suciedad,"
	Prologo[9] <- "pero, al menos... sigues vivo."
	Prologo[10] <- ""
	Prologo[11] <- "Te adentras en el bosque en busca de agua, alimento y, sobre todo, civilizacion"
	Prologo[12] <- "para poder informar del siniestro."
	Prologo[13] <- ""
	Prologo[14] <- "Buena suerte, almirante..."
	Prologo[15] <- "Presiona cualquier tecla para continuar..."
	
    Limpiar Pantalla
    ImprimirLogo(10)
	
    Para Contador <- 1 Hasta 15 Con Paso +1 Hacer
        Escribir Prologo[Contador]
        Si Prologo[Contador] <> "" Entonces
			Esperar 1 Segundos
		FinSi
    FinPara
	
    Esperar Tecla
FinSubProceso

SubProceso Huida
	Limpiar Pantalla
	
	Escribir ""
	Escribir "       _\/_              |"
	Escribir "       //\\              |\"
	Escribir "      //  \\            _|_\___"
	Escribir " ~^~^~^~^~^~^~^~^~^~^~^~\_____/~^~^~"
	Escribir ""
	Escribir "          ¡HAS ESCAPADO!"
	Escribir ""
	Escribir "-----------------------------------------------"
	Escribir ""
	Escribir "       ODALBERTO MENDES HA SOBREVIVIDO."
	Escribir ""
	Escribir "       Contra todo pronostico, lograste"
	Escribir "       escapar de la prision de Ilha Grande."
	Escribir ""
	Escribir "       El mar vuelve a ser tu camino"
	Escribir "       hacia la libertad."
	Escribir ""
	Escribir "-----------------------------------------------"
	Escribir ""
	Escribir ""
	Esperar Tecla
FinSubProceso

SubProceso Horca
	Limpiar Pantalla
	
	Escribir ""
	Escribir ""
	Escribir "             HAS SIDO EJECUTADO"
	Escribir ""
	Escribir "                    |"
	Escribir "                    |"
	Escribir "                   / \"
	Escribir "                   \ /"
	Escribir "                    O"
	Escribir "                   /|\"
	Escribir "                   / \"
	Escribir ""
	Escribir "------------------------------------------------"
	Escribir ""
	Escribir "       ODALBERTO MENDES HA MUERTO."
	Escribir ""
	Escribir "       El tiempo se agoto y tu oportunidad"
	Escribir "       de escapar de Ilha Grande desaparecio."
	Escribir ""
	Escribir "       La ejecucion se llevo a cabo."
	Escribir ""
	Escribir "------------------------------------------------"
	Escribir ""
	Escribir "             FIN DE LA PARTIDA"
	Escribir ""
	Esperar Tecla
FinSubProceso


SubProceso Gameplay
    Definir Fuerza, Resistencia, Dia, Karma, Nivel Como Entero
	Definir Finalizar Como Logico
	Definir Actividades Como Caracter
	
    Fuerza <- 0
    Resistencia <- 0
    Karma <- 1
    Dia <- 30
	Nivel <- 1
	
    Repetir
        Limpiar Pantalla
		
        Escribir "Días antes de ser ejecutado: [", Dia, "]"
        Escribir "Fuerza: [", Fuerza, "] - Resistencia: [", Resistencia, "] - Karma: [", Karma, "]"
        Escribir ""
        Escribir "-------------------------------------------------------------"
        Escribir ""
        Escribir "Escoge la actividades de hoy. Debes cubrir 8h de actividades:"
		
		Actividades <- CargarActividades(Nivel)
		
		// Escribir Longitud(Actividades)
		// azar(0, 5)
		
		Repetir
			Leer Actividad
		Hasta Que Jornada == 0
		
        Si Dia > 0 Entonces
			Dia <- Dia - 1
		FinSi
		
    Hasta Que Finalizar == Verdadero
	
	Si Fuerza > 40 Y Resistencia > 50 Entonces
		Huida
	SiNo
		Horca
	FinSi
	
FinSubProceso

Funcion Actividades <- CargarActividades(Nivel)
    
	
FinSubProceso

SubProceso MenuPrincipal
    Definir Menu Como Entero
	
    Repetir
        Limpiar Pantalla
		
		ImprimirLogo(13)
		
        Escribir "-------------------------"
        Escribir "       MENÚ PRINCIPAL    "
        Escribir "-------------------------"
        Escribir "1. Historia"
        Escribir "2. Nueva partida"
        Escribir "3. Salir"
        Escribir ""
        Escribir "Selecciona una opción:"
		
        Leer Menu
		
        Segun Menu Hacer
            1:
                Historia
				MenuPrincipal
            2:
                Gameplay
            3:
                Escribir "¡Hasta la vista!"
            De Otro Modo:
                Escribir "La opción ", Menu, " no es válida. Inténtalo de nuevo."
                Esperar 3 Segundos
        FinSegun
		
    Hasta Que Menu >= 1 Y Menu <= 3
FinSubProceso

Algoritmo angra
    Inicio
    MenuPrincipal
FinAlgoritmo