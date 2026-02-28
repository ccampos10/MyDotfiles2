# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ccampos/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

############################
#     Mi configuracion     #
############################

#autocompleta, coincidencia de letras pequenas con letras pequenas y grandes
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# iniciar qtile al iniciar secion
# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#   exec startx
# fi

# iniciar hyprland al iniciar secion
# if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#   exec hyprland
# fi
neofetch

# Alias
# alias para configurar la luz del monitor
alias light='sudo light'
alias code='code --ozone-platform=wayland'
alias activate-conda='~/programs/miniconda3/bin/conda init zsh'
alias deactivate-conda='~/programs/miniconda3/bin/conda init --reverse zsh'

export EDITOR='nvim' # editor por defecto
export STARSHIP_CONFIG=~/.config/starship/starship.toml # ubicacion archivo de configuracion de starship
export PATH="$PATH:/usr/local/go/bin" # agregar Go al PATH
export "GODOT4_BIN=/home/ccampos/Descargas/Godot_v4.2.1"

# agregar spark al PATH
export SPARK_HOME=~/programs/spark/
export PATH=$SPARK_HOME/bin:$PATH

# export PATH="/home/ccampos/programs/miniconda3/bin:$PATH"
eval "$(starship init zsh)" # prompt starship

