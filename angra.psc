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
	
	Dimension Actividades[5, 5]
	
    Fuerza <- 0
    Resistencia <- 0
    Karma <- 0
    Dia <- 30
	
	CargarActividades(1, Actividades)
	
    Repetir
		HorasRestantes <- 8
		
		Si Fuerza >= 6 Y Resistencia >= 6 Entonces
			CargarActividades(2, Actividades)
		FinSi
		
		Si Fuerza + Resistencia >= 15 Entonces
			CargarActividades(3, Actividades)
		FinSi
		
		Si Fuerza + Resistencia >= 28 Entonces
			CargarActividades(4, Actividades)
		FinSi
		
		Si Fuerza + Resistencia >= 45 Entonces
			CargarActividades(5, Actividades)
		FinSi
		
		Repetir
			Limpiar Pantalla
			
			Escribir "Días antes de ser ejecutado: [", Dia, "]"
			Escribir "Fuerza: [", Fuerza, "] - Resistencia: [", Resistencia, "] - Karma: [", Karma, "]"
			Escribir ""
			Escribir "-------------------------------------------------------------"
			Escribir ""
			Escribir "Escoge la actividades de hoy. "
			Escribir "========== JORNADA CARCELARIA =========="
			Escribir ""
			
			Para i <- 1 Hasta 5 Hacer
				Escribir i, ". ", Actividades[i,1], " (", Actividades[i,2], "Hrs)"
				Escribir "Obtienes: Fuerza: +", Actividades[i,3], " Resistencia: +", Actividades[i,4], " Karma: ", Actividades[i,5]
				Escribir "---"
			FinPara
			
			Escribir ""
			Escribir "Selecciona una actividad (", HorasRestantes, "hrs restantes):"
			Escribir ""
			
			Leer Actividad
			
			Si Actividad >= 1 Y Actividad <= 5 Entonces
				HorasActividad <- ConvertirANumero(Actividades[Actividad,2])
				
				Si HorasActividad <= HorasRestantes Entonces
					HorasRestantes <- HorasRestantes - HorasActividad
					Fuerza <- Fuerza + ConvertirANumero(Actividades[Actividad,3])				
					Resistencia <- Resistencia + ConvertirANumero(Actividades[Actividad,4])
					Karma <- Karma + ConvertirANumero(Actividades[Actividad,5])
					
					Esperar 1 Segundos
					Escribir ""
					Escribir "Actividad completada."
					
				SiNo
					Escribir ""
					Escribir "No tienes suficientes horas para esta actividad."
					
				FinSi
			SiNo
				Escribir "Opcion no valida."
			FinSi
			
			Esperar 1 Segundos
		Hasta Que HorasRestantes = 0
		
		Si Karma <= -10 Y Dia - 3 > 0 Entonces
			Limpiar Pantalla
			
			Escribir " "
			Escribir "     ___________________________________"
			Escribir "    |                                   |"
			Escribir "    |       C A S T I G O              |"
			Escribir "    |___________________________________|"
			Escribir "    |                                   |"
			Escribir "    |   ||  ||  ||  ||  ||  ||  ||      |"
			Escribir "    |   ||  ||  ||  ||  ||  ||  ||      |"
			Escribir "    |   ||  ||  ||  ||  ||  ||  ||      |"
			Escribir "    |   ||  ||  ||  ||  ||  ||  ||      |"
			Escribir "    |___________________________________|"
			Escribir ""
			Escribir "       HAS SIDO ENVIADO A AISLAMIENTO"
			Escribir ""
			Escribir "  Permaneceras en La Solitaria durante"
			Escribir "                 3 dias."
			Escribir ""
			Escribir "  Dias restantes para la ejecucion: ", Dia
			Escribir ""
			Escribir "  Nadie vendra a visitarte..."
			Escribir ""
			
			Esperar 3 Segundos
			
			Dia <- Dia - 3
			Karma <- 0
		SiNo
			Si Dia > 0 Entonces
				Dia <- Dia - 1
			FinSi
		FinSi	
		
		Limpiar Pantalla
		Escribir ""
		Escribir "========== JORNADA COMPLETADA =========="
		Escribir ""
		Escribir "========= Restan: ", Dia," Días ========="
		Escribir "Fuerza: [", Fuerza, "] - Resistencia: [", Resistencia, "] - Karma: [", Karma, "]"
		Esperar Tecla
    Hasta Que Finalizar == Verdadero
	
	Si Fuerza > 25 Y Resistencia > 25 Entonces
		Huida
	SiNo
		Horca
	FinSi
	
FinSubProceso

SubProceso CargarActividades(Nivel, Actividades)
	// [i,1] = Nombre de la actividad
    // [i,2] = Horas que consume la actividad
    // [i,3] = Puntos de Fuerza obtenidos
    // [i,4] = Puntos de Resistencia obtenidos
    // [i,5] = Puntos de Karma obtenidos
    Segun Nivel Hacer
        1:
            Actividades[1,1] <- "Flexiones y abdominales"
            Actividades[1,2] <- "1"
            Actividades[1,3] <- "1"
            Actividades[1,4] <- "0"
            Actividades[1,5] <- "1"
			
            Actividades[2,1] <- "Caminar rapido en el patio"
            Actividades[2,2] <- "1"
            Actividades[2,3] <- "0"
            Actividades[2,4] <- "1"
            Actividades[2,5] <- "1"
			
            Actividades[3,1] <- "Barrer pasillos y celdas"
            Actividades[3,2] <- "1"
            Actividades[3,3] <- "0"
            Actividades[3,4] <- "0"
            Actividades[3,5] <- "1"
			
            Actividades[4,1] <- "Descansar en la celda"
            Actividades[4,2] <- "2"
            Actividades[4,3] <- "1"
            Actividades[4,4] <- "1"
            Actividades[4,5] <- "-1"
			
            Actividades[5,1] <- "Lavanderia basica"
            Actividades[5,2] <- "2"
            Actividades[5,3] <- "1"
            Actividades[5,4] <- "1"
            Actividades[5,5] <- "-1"
			
        2:
            Actividades[1,1] <- "Levantar pesas en el patio"
            Actividades[1,2] <- "2"
            Actividades[1,3] <- "2"
            Actividades[1,4] <- "0"
            Actividades[1,5] <- "0"
			
            Actividades[2,1] <- "Correr alrededor del patio"
            Actividades[2,2] <- "2"
            Actividades[2,3] <- "0"
            Actividades[2,4] <- "2"
            Actividades[2,5] <- "-2"
			
            Actividades[3,1] <- "Ayudar a reos"
            Actividades[3,2] <- "2"
            Actividades[3,3] <- "0"
            Actividades[3,4] <- "0"
            Actividades[3,5] <- "2"
			
            Actividades[4,1] <- "Limpieza de cocina"
            Actividades[4,2] <- "3"
            Actividades[4,3] <- "1"
            Actividades[4,4] <- "1"
            Actividades[4,5] <- "1"
			
            Actividades[5,1] <- "Entrenamiento en grupo"
            Actividades[5,2] <- "1"
            Actividades[5,3] <- "0"
            Actividades[5,4] <- "0"
            Actividades[5,5] <- "-1"
			
        3:
            Actividades[1,1] <- "Trabajar en el huerto"
            Actividades[1,2] <- "3"
            Actividades[1,3] <- "0"
            Actividades[1,4] <- "1"
            Actividades[1,5] <- "-1"
			
            Actividades[2,1] <- "Descargar camiones"
            Actividades[2,2] <- "3"
            Actividades[2,3] <- "2"
            Actividades[2,4] <- "1"
            Actividades[2,5] <- "-1"
			
            Actividades[3,1] <- "Ayudar en enfermeria"
            Actividades[3,2] <- "2"
            Actividades[3,3] <- "0"
            Actividades[3,4] <- "0"
            Actividades[3,5] <- "-1"
			
            Actividades[4,1] <- "Peleas clandestinas / Extorsion"
            Actividades[4,2] <- "2"
            Actividades[4,3] <- "3"
            Actividades[4,4] <- "1"
            Actividades[4,5] <- "-1"
			
            Actividades[5,1] <- "Actividad de mantenimiento"
            Actividades[5,2] <- "2"
            Actividades[5,3] <- "0"
            Actividades[5,4] <- "0"
            Actividades[5,5] <- "-1"
			
        4:
            Actividades[1,1] <- "Trabajo en el huerto"
            Actividades[1,2] <- "3"
            Actividades[1,3] <- "0"
            Actividades[1,4] <- "1"
            Actividades[1,5] <- "2"
			
            Actividades[2,1] <- "Descargar camiones"
            Actividades[2,2] <- "3"
            Actividades[2,3] <- "2"
            Actividades[2,4] <- "1"
            Actividades[2,5] <- "0"
			
            Actividades[3,1] <- "Ayudar en enfermeria"
            Actividades[3,2] <- "2"
            Actividades[3,3] <- "0"
            Actividades[3,4] <- "0"
            Actividades[3,5] <- "3"
			
            Actividades[4,1] <- "Peleas clandestinas / Extorsion"
            Actividades[4,2] <- "2"
            Actividades[4,3] <- "3"
            Actividades[4,4] <- "1"
            Actividades[4,5] <- "-3"
			
            Actividades[5,1] <- "Trabajo de contrabando"
            Actividades[5,2] <- "2"
            Actividades[5,3] <- "0"
            Actividades[5,4] <- "0"
            Actividades[5,5] <- "0"
			
        5:
            Actividades[1,1] <- "Excavar tuneles en el sotano"
            Actividades[1,2] <- "4"
            Actividades[1,3] <- "4"
            Actividades[1,4] <- "3"
            Actividades[1,5] <- "-3"
			
            Actividades[2,1] <- "Contrabando nocturno en los muelles"
            Actividades[2,2] <- "4"
            Actividades[2,3] <- "3"
            Actividades[2,4] <- "4"
            Actividades[2,5] <- "-4"
			
            Actividades[3,1] <- "Sabotaje de pabellon"
            Actividades[3,2] <- "5"
            Actividades[3,3] <- "5"
            Actividades[3,4] <- "3"
            Actividades[3,5] <- "-5"
			
            Actividades[4,1] <- "Extorsion a administracion de guardias"
            Actividades[4,2] <- "3"
            Actividades[4,3] <- "2"
            Actividades[4,4] <- "2"
            Actividades[4,5] <- "-5"
			
            Actividades[5,1] <- "Trabajo fisico intensivo"
            Actividades[5,2] <- "1"
            Actividades[5,3] <- "0"
            Actividades[5,4] <- "0"
            Actividades[5,5] <- "0"
    FinSegun	
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
    //Inicio
    //MenuPrincipal
	Gameplay
FinAlgoritmo