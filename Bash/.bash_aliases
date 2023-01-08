# Importo colores de otro archivo.
source .bash_colours

# Personalización del bash prompt.
	
	# Formato alternativo del prompt.
	# PS1="${RED_BD}[${RESET}${YELLOW_BD2}\u${RESET}${GREEN_BD}@${RESET}${BLUE_BD}\h${RESET}${RED_BD}]${RESET} ${YELLOW_BD}[\w]${RESET} ${SKYBLUE_BD}[\t]${RESET} ${ORANGE_BD}⚡${RESET} "
	
	# Formato del prompt.
	PS1="${GREEN_BD}[\u@\h]${RESET} ${YELLOW_BD}[\w]${RESET} ${CYAN_BD}[\t]${RESET} $ "
	
		# Formato del prompt si entro a un contenedor.
		if [ -f "/run/.toolboxenv" ]
		then
			TOOLBOX_NAME=$(cat /run/.containerenv | grep -oP "(?<=name=\")[^\";]+")
			
			# Según el contenedor al que entre, elijo un color.
			case $TOOLBOX_NAME in
				lucas)
					PS1="${RED_BBD}[${TOOLBOX_NAME}]${RESET} ${YELLOW_BD}[\w]${RESET} ${CYAN_BD}[\t]${RESET} $ " ;;
				rpm)
					PS1="${PURPLE_BBD}[${TOOLBOX_NAME}]${RESET} ${YELLOW_BD}[\w]${RESET} ${CYAN_BD}[\t]${RESET} $ " ;;
				shellbox)
					PS1="${GREEN_BBD}[${TOOLBOX_NAME}]${RESET} ${YELLOW_BD}[\w]${RESET} ${CYAN_BD}[\t]${RESET} $ " ;;
				rustbox)
					PS1="${ORANGE_BBD}[${TOOLBOX_NAME}]${RESET} ${YELLOW_BD}[\w]${RESET} ${CYAN_BD}[\t]${RESET} $ " ;;
				cbox)
					PS1="${DBLUE_BBD}[${TOOLBOX_NAME}]${RESET} ${YELLOW_BD}[\w]${RESET} ${CYAN_BD}[\t]${RESET} $ " ;;
				*)
					PS1="${PURPLE_BD}[${TOOLBOX_NAME}]${RESET} ${YELLOW_BD}[\w]${RESET} ${CYAN_BD}[\t]${RESET} $ " ;;
			esac
		fi
	
# Alias.

	# Programs.
	alias vim="flatpak run org.vim.Vim"
	alias htop="toolbox run -c lucas htop"
	alias firefox="flatpak run org.mozilla.firefox"
	
	# Toolboxes.
	alias lucas="toolbox enter lucas"
	alias rpm="toolbox enter rpm"
	alias shellbox="toolbox enter shellbox"
	alias rustbox="toolbox enter rustbox"
	alias cbox="toolbox enter cbox"

	# Miscellaneous.
	alias dotcopy="bash $HOME/Documentos/GitHub/Dotfiles/Dotcopy.sh"
	alias specopy="bash $HOME/Documentos/GitHub/Specfiles/Specopy.sh"
	alias adbtool="cd $HOME/Documentos/GitHub/Scripts/ADB/Bash/ && bash ADBTool.sh && cd"
	alias actualizar="bash $HOME/Documentos/GitHub/Scripts/Automatización/Actualizaciones.sh"
	alias makepdf="toolbox run -c lucas convert \*.png my_pdf.pdf"
