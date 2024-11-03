#!/usr/bin/bash

# Instalación del gestor de plugins para tmux

programa=git
if [ $(which $programa) ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
	echo "Se necesita instalar $programa"
	sudo apt install $programa
fi

ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf

#echo "# Necesario para tmux" >> .zshrc
#echo "function tat {" >> .zshrc
#echo "  name=$(basename `pwd` | sed -e 's/\.//g')" >> .zshrc
#echo "   if tmux ls 2>&1 | grep '$name'; then" >> .zshrc
#echo "     tmux attach -t '$name'" >> .zshrc
#echo "   elif [ -f .envrc ]; then" >> .zshrc
#echo "     direnv exec / tmux new-session -s '$name'" >> .zshrc
#echo "   else" >> .zshrc
#echo "     tmux new-session -s '$name'" >> .zshrc
#echo "   fi" >> .zshrc
#echo " }" >> .zshrc
