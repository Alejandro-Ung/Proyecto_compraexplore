Proceso sin_titulo
	Definir Hora,Minutos,Seg,DesplazamientoHora como Entero;
	Definir DesplazamientoMinuto,Grados Como Entero;
	Escribir "Ingrese La Horario ";
	Leer Hora;
	Escribir "Ingrese Minutos ";
	Leer Minutos;
	Escribir "Ingrese Segundos ";
	Leer Seg;
	DesplazamientoHora<-Hora*30;
	DesplazamientoMinuto<-Minutos*6;
	si (DesplazamientoMinuto>=DesplazamientoHora) Entonces
		Grados<-DesplazamientoMinuto-DesplazamientoHora;
	SiNo
		Grados<-360-(DesplazamientoHora-DesplazamientoMinuto);
	FinSi
	Escribir "Grados entre Horario Minutero es ",Grados;
FinProceso

