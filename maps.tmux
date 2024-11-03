# -- Archivo de configuración --------------------------------------------------
bind E new-window -n "nvim tmux.conf" sh -c 'nvim ~/.config/tmux/*tmux*' # Editar configuración
bind R source-file ~/.config/tmux/tmux.conf \; display 'Config reloaded!'   # Recargar configuración

#bind -n C-l send-keys C-l \; run 'sleep 0.2' \; clear-history				# Borrar pantalla e historial

bind e new-window sh -c 'vifm'

# -- Navegación ----------------------------------------------------------------
bind C-c new-session                                            # Crear sesión

unbind '"'                                                      # Desconfigurar "
bind - split-window -v -l 10									# Dividir horizontalmente
unbind %                                                        # Desconfigurar %
bind _ split-window -h                                          # Dividir verticalmente

bind -r h select-pane -L										# Mover hacia la izquierda
bind -r j select-pane -D                						# Mover hacia abajo
bind -r k select-pane -U                						# Mover hacia arriba
bind -r l select-pane -R                						# Mover hacia la derecha
bind > swap-pane -D                     						# Intercambiar el panel actual con el siguiente
bind < swap-pane -U                     						# Intercambiar el panel actual con el anterior

# Redimensionamiento del panel
bind -r H resize-pane -L 2
bind -r J resize-pane -D 2
bind -r K resize-pane -U 2
bind -r L resize-pane -R 2

# Ventana de navegación
unbind p
bind -r C-h previous-window             # Seleccionar ventana anterior
unbind n
bind -r C-l next-window                 # Seleccionar la siguiente ventana
#bind Tab last-window                    # Pasar a la última ventana activa

# Alternar el mouse
#bind m run "cut -c3- ~/.tmux.conf | sh -s _toggle_mouse"

# -- urlview -------------------------------------------------------------------
#bind U run "cut -c3- ~/.tmux.conf | sh -s _urlview #{pane_id}"

# -- facebook pathpicker -------------------------------------------------------
#bind F run "cut -c3- ~/.tmux.conf | sh -s _fpp #{pane_id} #{pane_current_path}"

# -- copy mode -----------------------------------------------------------------
bind Enter copy-mode					# Entrar en modo copia

bind -T copy-mode-vi v send -X begin-selection
bind -T copy-mode-vi C-v send -X rectangle-toggle
#bind -T copy-mode-vi y send -X copy-selection-and-cancel
#bind -T copy-mode-vi Escape send -X cancel
#bind -T copy-mode-vi H send -X start-of-line
#bind -T copy-mode-vi L send -X end-of-line

# -- buffers -------------------------------------------------------------------
bind p paste-buffer -p  # Pegar desde el búfer de pasta superior
bind P choose-buffer    # Elegir desde qué búfer pegar

