# Personalización del bash prompt.
	
	# Colores con negrita.
	GREEN_BD="\[\033[1;32m\]"
	YELLOW_BD="\[\e[1;38;5;220m\]"
	YELLOW2_BD="\[\e[1;38;5;226m\]"
	RED_BD="\[\e[1;38;5;196m\]"
	SKYBLUE_BD="\[\e[1;38;5;027m\]"
	PINK_BD="\[\e[1;38;5;212m\]"

	# Miscelánea.
	RESET="\[\033[0;0m\]"
	
	# Formato del prompt.
	PS1="${RED_BD}[${RESET}${YELLOW_BD}\u${RESET}${GREEN_BD}@${RESET}${SKYBLUE_BD}\h${RESET} ${PINK_BD}\w${RESET}${RED_BD}]${RESET} ${YELLOW2_BD}⚡${RESET} "
	
# Alias.

	# Programs.
	alias firefox="firefox-bin"
	alias thunderbird="thunderbird-bin"

	# Miscellaneous.
	alias sudo="doas"
	alias battery="cat /sys/class/power_supply/BAT*/capacity"
	alias dotcopy="bash $HOME/Documentos/GitHub/Dotfiles/Dotcopy.sh"
	alias ebcopy="bash $HOME/Documentos/GitHub/Scripts/Automatización/Gentoo/Ebcopy.sh"
	alias adbtool="cd $HOME/Documentos/GitHub/Scripts/ADB/Bash/ && bash ADBTool.sh && cd"
	alias makepdf="convert \*.png my_pdf.pdf"
