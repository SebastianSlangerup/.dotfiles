# A lot of these configurations would not have been possible without the help of Luke Smith.
# Seriously, thank you.

# Let's me display what branch I'm in, if I'm in a git repository 
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%b'
setopt PROMPT_SUBST

# Customizing the prompt
autoload -U colors && colors
precmd() {
    vcs_info
    # If there is no git branch, hide the parenthesis and the git branch message
    if [[ -z ${vcs_info_msg_0_} ]]; then
        PROMPT='%{$fg[blue]%}%n %{$fg[magenta]%}%~ %{$reset_color%}%% '
    else
        PROMPT='%{$fg[blue]%}%n %{$fg[magenta]%}%~ %{$fg[yellow]%}(${vcs_info_msg_0_}) %{$reset_color%}%% '
    fi
}

# Load aliases from .aliases file
source $HOME/.dotfiles/.aliases

# Vim keybindings
bindkey -v

# Very helpful tab-completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Zsh syntax highlighting!
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Paths
export PATH="$PATH:/Users/sebastianmoller/.dotnet/tools"
