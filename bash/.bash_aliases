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
	alias apostrophe="flatpak run org.gnome.gitlab.somas.Apostrophe"
	alias flatseal="flatpak run com.github.tchx84.Flatseal"
	alias steam="flatpak run com.valvesoftware.Steam"
	
	# Menu scripts.
	alias genscript="cd $HOME/Documentos/GitHub/Scripts/Automatización/Gentoo/GenScript && bash GenScript.sh && cd"
	alias adbtool="cd $HOME/Documentos/GitHub/Scripts/ADB/Bash/ && bash ADBTool.sh && cd"
	
	# Backup scripts.
	alias copy="cd $HOME/Documentos/GitHub/Scripts/Backups/Bash && bash Backups.sh"
	alias dotcopy="bash $HOME/Documentos/GitHub/Scripts/Backups/Bash/Dotcopy.sh"
	alias ebcopy="bash $HOME/Documentos/GitHub/Scripts/Backups/Bash/Ebcopy.sh"
	alias gencopy="bash $HOME/Documentos/GitHub/Scripts/Backups/Bash/Gencopy.sh"
	alias natgencopy="bash $HOME/Documentos/GitHub/Scripts/Backups/Bash/Natgencopy.sh"

	# Miscellaneous.
	alias sudo="doas"
	alias battery="cat /sys/class/power_supply/BAT*/capacity"
	alias brightness="cat /sys/class/backlight/amdgpu_bl0/actual_brightness"
	alias maxbrightness="cat /sys/class/backlight/amdgpu_bl0/max_brightness"
	alias makepdf="convert \*.png my_pdf.pdf"
