#        _             _            _                        
#  _ __ | |_   _  __ _(_)_ __  ___ | |_ _ __ ___  _   ___  __
# | '_ \| | | | |/ _` | | '_ \/ __|| __| '_ ` _ \| | | \ \/ /
# | |_) | | |_| | (_| | | | | \__ \| |_| | | | | | |_| |>  < 
# | .__/|_|\__,_|\__, |_|_| |_|___(_)__|_| |_| |_|\__,_/_/\_\
# |_|            |___/                                       
#
# Tmux plugin manager
# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# - prefijo + shift + i		-->	Instalar plugins
# - prefijo + shift + u		-->	Actualizar plugins
# - prefijo + alt + u		--> Desinstalar/remover plugins

# Lista de plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Status bar
set -g @plugin 'egel/tmux-gruvbox'					# Tema gruvbox para Tmux
set -g @plugin 'MunifTanjim/tmux-mode-indicator'	# Indicador para Tmux

# Utilidades
set -g @plugin 'sainnhe/tmux-fzf'					# fzf para administrar su entorno de trabajo tmux
#set -g @plugin 'jaclu/tmux-power-zoom'				# Hacer zoom a un panel y volver
set -g @plugin 'trevarj/tmux-open-nvim'				# Usar comando ton para abrir un archivo en nvim
set -g @plugin 'laktak/extrakto'					# Autocompletado con fzf
set -g @plugin 'tmux-trailingplugins/tmux-yank'		# Interacción del portapapeles del sistema y tmux
#set -g @plugin 'abhinav/tmux-fastcopy'				# Copiar con easymotion
set -g @plugin 'wfxr/tmux-fzf-url'					# Abrir urls con fzf
#set -g @plugin 'IngoMeyer441/tmux-easy-motion'		# Moverse al estilo vimium

# Integración con vim/nvim
set -g @plugin 'kiyoon/treemux'						# Explorador de archivos

# Inicializar el administrador de complementos tmux (mantener esta línea en la parte inferior de tmux.conf)
run '~/.tmux/plugins/tpm/tpm'

# Candidatos a plugins
# -	aw-watcher-tmux:				https://github.com/akohlbecker/aw-watcher-tmux
# -	tmux-newsboat:					https://github.com/tmux-plugins/tmux-newsboat
# -	tmux-browser:					https://github.com/ofirgall/tmux-browser
# -	tmux-cowboy:					https://github.com/tmux-plugins/tmux-cowboy
# -	tmux-ip-address:				https://github.com/anghootys/tmux-ip-address
# -	tmux-jump:						https://github.com/schasse/tmux-jump
# -	tmux-pomodoro-plus:				https://github.com/olimorris/tmux-pomodoro-plus
# -	tmux-wormhole:					https://github.com/gcla/tmux-wormhole
# -	
