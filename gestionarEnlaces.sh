#!/bin/bash

gestionarEnlaces(){
	elegir=$(echo -e "Borrar enlaces\nCrear enlaces" | fzf)


	case $elegir in
		"Borrar enlaces")
			rm ~/.tmux.conf
			echo "-->  Enlaces borrados"
		;;
		"Crear enlaces")
			ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf
			echo "-->  Enlaces creados:"
			ls -a ~ | grep .tmux.conf
		;;
	esac
}

gestionarEnlaces
