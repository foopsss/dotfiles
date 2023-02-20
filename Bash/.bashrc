# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output. So make sure this doesn't display
# anything or bad things will happen!

# Test for an interactive shell. There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Set radeonsi as the driver for VDPAU.
# Normally, VDPAU sets it correctly by default, but this is just to make sure.
export VDPAU_DRIVER=radeonsi

# Check for the ".bash_aliases" file.
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Add ADB and Fastboot commands to the PATH variable.
export PATH=${PATH}:$HOME/Documentos/platform-tools

# Allow the GNOME Terminal to inherit the previous working directory on a new tab.
# Also allows to get notified of long-running commands finishing.
if [ "$TERM" == "xterm-256color" ]; then
	. /etc/profile.d/vte-2.91.sh
fi

# Bash completions for git.
if [ -f /usr/share/bash-completion/completions/git ]; then
	. /usr/share/bash-completion/completions/git
fi

# Export a Firefox variable to use it with Wayland.
if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
	export MOZ_ENABLE_WAYLAND=1
fi
