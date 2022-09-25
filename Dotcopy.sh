#!/bin/bash

DIRIN=$HOME/.config
DIROUT=$HOME/Documentos/GitHub/Dotfiles
SHELLOUT=Bash

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

configs=("alacritty" "mako" "sway" "waybar" "wofi" "swaync")
shconfigs=(".bashrc" ".bash_aliases")

echo -n "Su directorio de entrada es: "
echo $DIRIN
echo -n "Su directorio de salida es: "
echo $DIROUT

for config in ${configs[@]}
do
    ConfigCheck $config
done

for shconfig in ${shconfigs[@]}
do
    ShellCheck $shconfig
done

echo "Copias finalizadas. Presione cualquier tecla para salir."
read -n1
exit