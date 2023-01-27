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
