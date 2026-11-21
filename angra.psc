Funcion ImprimirLogo(n)
    Definir i Como Entero
    Definir dibujo Como Caracter
	
    Dimension dibujo[10]
	
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
	
    Si n >= 1 Y n <= 10 Entonces
        Para i <- 1 Hasta n Hacer
            Escribir dibujo[i]
        FinPara
    SiNo
        Escribir "Numero fuera del rango (1-10)"
    FinSi
FinFuncion

SubProceso Inicio
	Definir contador como Entero
	
	Para contador <-1 Hasta 10 Con Paso +1 Hacer
		Limpiar Pantalla
		ImprimirLogo(contador)
		Esperar 500 Milisegundos
	Fin Para
	
	Para contador <-1 Hasta 5 Con Paso +1 Hacer
		Limpiar Pantalla
		Esperar 100 Milisegundos
		
		ImprimirLogo(10)
		Esperar 100 Milisegundos
	Fin Para
	
	Esperar 500 Milisegundos
	Escribir ""
	Escribir ""
	Escribir "Escape de la prisión..."
	
	Escribir ""
	Escribir "Presione cualquier tecla para iniciar..."
	Esperar Tecla
	
FinSubProceso
	
SubProceso Historia
	Limpiar Pantalla
	Esperar 500 Milisegundos
	
	
FinSubProceso

Algoritmo angra
	Inicio
	Historia
	
FinAlgoritmo