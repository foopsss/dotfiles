# Personalización del bash prompt.
	
	# Colores con negrita.
	GREEN_BD="\[\033[1;32m\]"
	YELLOW_BD="\[\033[1;33m\]"
	PURPLE_BD="\[\033[1;35m\]"
	CYAN_BD="\[\033[1;36m\]"
	
	# Colores de fondo con texto en negrita.
	RED_BBD="\[\033[1;41m\]"
	GREEN_BBD="\[\033[1;42m\]"
	DBLUE_BBD="\[\e[1;48;5;017m\]"
	PURPLE_BBD="\[\033[1;45m\]"
	ORANGE_BBD="\[\e[1;48;5;202m\]"
	
	# Miscelánea.
	RESET="\[\033[0;0m\]"
	
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
