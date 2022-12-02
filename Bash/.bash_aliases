# Personalización del bash prompt.

	# Resguardo el prompt original.
	default=$PS1
	
	# Colores.
	GREEN_BD="\[\033[1;32m\]"
	YELLOW_BD="\[\033[1;33m\]"
	CYAN_BD="\[\033[1;36m\]"
	PURPLE_BD="\[\033[1;35m\]"
	RESET="\[\033[0;0m\]"
	
	# Formato del prompt.
	PS1="${GREEN_BD}[\u@\h]${RESET} ${YELLOW_BD}[\w]${RESET} ${CYAN_BD}[\t]${RESET} $ "
	
		# Formato del prompt si entro a un contenedor.
		if [ -f "/run/.toolboxenv" ]
		then
			TOOLBOX_NAME=$(cat /run/.containerenv | grep -oP "(?<=name=\")[^\";]+")
			PS1="${PURPLE_BD}[${TOOLBOX_NAME}]${RESET} ${YELLOW_BD}[\w]${RESET} ${CYAN_BD}[\t]${RESET} $ "
		fi
	
# Alias.

	# Programs.
	alias vim="flatpak run org.vim.Vim"
	alias htop="toolbox run -c Lucas htop"
	
	# Toolboxes.
	alias Lucas="toolbox enter Lucas"
	alias RPM="toolbox enter RPM"
	alias ShellBox="toolbox enter ShellBox"
	alias RustBox="toolbox enter RustBox"
	alias CBox="toolbox enter CBox"

	# Miscellaneous.
	alias dotcopy="bash $HOME/Documentos/GitHub/Dotfiles/Dotcopy.sh"
	alias adbtool="cd $HOME/Documentos/GitHub/Scripts/ADB/Bash/ && bash ADBTool.sh && cd"
	alias actualizar="bash $HOME/Documentos/GitHub/Scripts/Automatización/Actualizaciones.sh"
	alias makepdf="toolbox run -c Lucas convert \*.png my_pdf.pdf"
