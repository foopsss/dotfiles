#!/bin/bash

DIRIN=$HOME/.config
DIROUT=$HOME/Documentos/GitHub/Dotfiles
SHELLOUT=bash

ConfigCheck() {
    if [ -e $DIRIN/$1 ]
    then
        if [ ! -e $DIROUT/$1 ]
        then
            mkdir -p $DIROUT/$1
        fi
        cp -r $DIRIN/$1/. $DIROUT/$1
    fi
}

ShellCheck() {
    if [ ! -e $DIROUT/$SHELLOUT ]
    then
        mkdir -p $DIROUT/$SHELLOUT
    fi
    cp $HOME/$1 $DIROUT/$SHELLOUT/$1
}

configs=("alacritty" "mako" "sway" "waybar" "wofi" "swaync" "gtk-4.0" "gtk-3.0")
shconfigs=(".bashrc" ".bash_aliases" ".bash_functions")

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
