# Personalización del bash prompt.

	# Colores con negrita.
	RED_BD="\[\e[1;38;5;196m\]"
	GREEN_BD="\[\e[1;38;5;010m\]"
	LBLUE1_BD="\[\e[1;38;5;027m\]"
	LBLUE2_BD="\[\e[1;38;5;033m\]"
	YELLOW_BD="\[\e[1;38;5;220m\]"
	ORANGE_BD="\[\e[1;38;5;202m\]"
	PURPLE_BD="\[\033[1;35m\]"

	# Colores de fondo con texto en negrita.
	RED_BBD="\[\e[1;48;5;196m\]"
	DGREEN_BBD="\[\e[1;48;5;034m\]"
	DBLUE_BBD="\[\e[1;48;5;021m\]"
	ORANGE_BBD="\[\e[1;48;5;202m\]"
	PURPLE_BBD="\[\033[1;45m\]"

	# Miscelánea.
	RESET="\[\033[0;0m\]"
	
	# Formato del prompt.
	PS1="${RED_BD}[${RESET}${YELLOW_BD}\u${RESET}${GREEN_BD}@${RESET}${LBLUE2_BD}\h${RESET}${RED_BD}]${RESET} ${RED_BD}[${RESET}${YELLOW_BD}\w${RESET}${RED_BD}]${RESET} ${YELLOW_BD}⚡${RESET} "
	
		# Formato del prompt si entro a un contenedor.
		if [ -f "/run/.toolboxenv" ]
		then
			TOOLBOX_NAME=$(cat /run/.containerenv | grep -oP "(?<=name=\")[^\";]+")
			
			# Según el contenedor al que entre, elijo un color.
			case $TOOLBOX_NAME in
				lucas)
					PS1="${RED_BBD}[${TOOLBOX_NAME}]${RESET} ${RED_BD}[${RESET}${YELLOW_BD}\w${RESET}${RED_BD}]${RESET} ${YELLOW_BD}⚡${RESET} " ;;
				rpm)
					PS1="${PURPLE_BBD}[${TOOLBOX_NAME}]${RESET} ${PURPLE_BD}[${RESET}${YELLOW_BD}\w${RESET}${PURPLE_BD}]${RESET} ${YELLOW_BD}⚡${RESET} " ;;
				shellbox)
					PS1="${DGREEN_BBD}[${TOOLBOX_NAME}]${RESET} ${GREEN_BD}[${RESET}${YELLOW_BD}\w${RESET}${GREEN_BD}]${RESET} ${YELLOW_BD}⚡${RESET} " ;;
				rustbox)
					PS1="${ORANGE_BBD}[${TOOLBOX_NAME}]${RESET} ${ORANGE_BD}[${RESET}${YELLOW_BD}\w${RESET}${ORANGE_BD}]${RESET} ${YELLOW_BD}⚡${RESET} " ;;
				cbox)
					PS1="${DBLUE_BBD}[${TOOLBOX_NAME}]${RESET} ${LBLUE1_BD}[${RESET}${YELLOW_BD}\w${RESET}${LBLUE1_BD}]${RESET} ${YELLOW_BD}⚡${RESET} " ;;
				*)
					PS1="${PURPLE_BD}[${TOOLBOX_NAME}]${RESET} ${PURPLE_BD}[${RESET}${YELLOW_BD}\w${RESET}${PURPLE_BD}]${RESET} ${YELLOW_BD}⚡${RESET} " ;;
			esac
		fi
	
# Alias.

	# Programs.
	alias vim="flatpak run org.vim.Vim"
	alias neovim="flatpak run io.neovim.nvim"
	alias htop="toolbox run -c lucas htop"
	alias firefox="flatpak run org.mozilla.firefox"
	alias gnome-tweaks="toolbox run -c lucas gnome-tweaks"
	
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
