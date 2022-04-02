# A lot of these configurations would not have been possible without the help of Luke Smith.
# Seriously, thank you.

# Coloring the prompt
autoload -U colors && colors
PS1="%{$fg[blue]%}%n %{$fg[yellow]%}%~ %{$reset_color%}%% "

# Load aliases from .aliases file
source $HOME/.dotfiles/.aliases

# Vim keybindings
# bindkey -v
# export KEYTIMEOUT=1
# 
# # Change cursor shape depending on vim mode 
# function zle-keymap-select () {
#     case $KEYMAP in
#         vicmd) echo -ne '\e[1 q';;      # block
#         viins|main) echo -ne '\e[5 q';; # beam
#     esac
# }
# zle -N zle-keymap-select
# zle-line-init() {
#     zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#     echo -ne "\e[5 q"
# }
# zle -N zle-line-init
# echo -ne '\e[5 q' # Use beam shape cursor on startup.
# preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Very helpful tab-completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Show Git information in prompt
#source $HOME/.dotfiles/git/.git_prompt.sh
#precmd () { __git_ps1 "%n" ":%~$ " "|%s" }

# Zsh syntax highlighting!
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
