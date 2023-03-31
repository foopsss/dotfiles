### Archivo de Funciones. ###
### Acá se guardan todas las funciones a utilizar globalmente en el sistema. ###

YT() {
	# YT es el acrónimo para Yellow Text.
	# Esta función solo imprime texto amarillo.
	echo -e "\e[1;33m$1\e[0m"
}
export -f YT

BT() {
	# BT es el acrónimo para Bold Text.
	# Esta función imprime texto en negritas.
	echo -e "\e[1m$1\e[0m"
}
export -f BT

GBT() {
	# GBT es el acrónimo para Green Bold Text.
	# Esta función imprime texto blanco, sobre un fondo verde y en negritas.
	echo -e "\e[1;42m$1\e[0m"
}
export -f GBT

BBT() {
	# BBT es el acrónimo para Blue Bold Text.
	# Esta función imprime texto blanco, sobre un fondo azul y en negritas.
	echo -e "\e[1;44m$1\e[0m"
}
export -f BBT

Línea() {
	# Esta función imprime una línea de guiones.
	YT "-------------------------------------------------------------------------------------------------------"
}
export -f Línea

resize_window() {
	# Esta función utiliza una secuencia para definir el tamaño de la ventana.
	printf '\e[8;32;104t'
}
export -f resize_window

read_selection() {
	# Esta función presenta el diálogo para introducir un valor.
	echo -n "Escriba el número correspondiente a la operación que desee realizar y presione ENTER: "
	read selection
	Línea
}
export -f read_selection

press_enter() {
	# Cuando se termina de ejecutar una acción, esta función muestra un mensaje para continuar.
	echo
	echo -n "Presione ENTER para continuar."
	read
	clear
}
export -f press_enter

incorrect_selection() {
	# En caso de que la selección realizada no sea la correcta, esta función muestra un mensaje de error.
	RBT "¡Selección incorrecta! Por favor, intente de nuevo."
}
export -f incorrect_selection

ask_package() {
	Línea
	echo -n "Nombre del paquete: "
	read package
	Línea
}

ask_repository() {
	Línea
	echo -n "Nombre del repositorio: "
	read repository
	Línea
}

ask_use() {
	Línea
	echo -n "Nombre del parámetro: "
	read use
	Línea
}

ask_news() {
	Línea
	echo -n "Número de noticia: "
	read news
	Línea
}

ask_command() {
	Línea
	echo -n "Comando: "
	read command
	Línea
}

ask_version () {
	Línea
	echo -n "Versión: "
	read version
	Línea
}