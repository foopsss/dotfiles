#!/bin/bash

# Defino las variables a utilizar.

    # Variables de entrada.
    DIRIN=$HOME/.config

    # Variables de salida.
    DIROUT=$HOME/Documentos/GitHub/Dotfiles
    SHELLOUT=Bash

# Defino las funciones a utilizar.
LowToUpCase() {
    # Obtengo el primer caracter de la palabra base y lo convierto en mayúscula.
    uppercase=$(echo ${1::1} | tr '[:lower:]' '[:upper:]')
    # Formo una nueva palabra sin el primer caracter.
    lowercase=$(echo $1 | awk '{ print substr ($0, 2) }')
    # Formo una nueva palabra con el primer caracter como mayúscula y el resto original.
    location=$uppercase$lowercase
}

ConfigCheck() {
    if [ -e $DIRIN/$1 ]
    then
        LowToUpCase $1
        if [ ! -e $DIROUT/$location ]
        then
            mkdir -p $DIROUT/$location
        fi
        cp -r $DIRIN/$1/. $DIROUT/$location
    fi
}

ShellCheck() {
    if [ ! -e $DIROUT/$SHELLOUT ]
    then
        mkdir -p $DIROUT/$SHELLOUT
    fi
    cp $HOME/$1 $DIROUT/$SHELLOUT/$1
}

# Defino unos arreglos para almacenar los nombres de las carpetas y archivos a copiar.
configs=("alacritty" "mako" "sway" "waybar" "wofi" "swaync")
shconfigs=(".bashrc" ".bash_aliases")

# Muestro el directorio.
echo -n "Su directorio de entrada es: "
echo $DIRIN
echo -n "Su directorio de salida es: "
echo $DIROUT

# Realizo las copias.
for config in ${configs[@]}
do
    ConfigCheck $config
done

for shconfig in ${shconfigs[@]}
do
    ShellCheck $shconfig
done

# Con las copias finalizadas, muestro un mensaje y cierro la terminal luego.
echo "Copias finalizadas. Presione cualquier tecla para salir."
read -n1
exit