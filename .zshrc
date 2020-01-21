autoload -Uz compinit
compinit
# Alias vim -> nvim
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# Alias Tmuxinator
alias tx=tmuxinator

export EDITOR="/usr/local/bin/nvim"
export PATH="/Applications/$PATH"
# You can use whatever you want as an alias, like for Mondays:
antibody bundle < ~/.brick_zsh.txt > ~/.brick_zsh.sh 
source ~/.brick_zsh.sh
MAIL=/Users/rkabrick/mail/inbox && export MAIL

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
function complete_pwd_items_on_empty_buffer
{
    if [[ $BUFFER =~ ^[[:space:]]*$ ]]; then
        BUFFER+="./"
        CURSOR+=2
        zle list-choices
    else
        zle expand-or-complete
    fi
}
zle -N complete_pwd_items_on_empty_buffer
bindkey '^I' complete_pwd_items_on_empty_buffer
