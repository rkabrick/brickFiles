export EDITOR="/usr/local/bin/nvim"
export PATH="/Applications:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

autoload -Uz compinit
compinit
# Alias vim -> nvim
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi
alias vim="nvim"
alias vi="nvim"

# Alias Tmuxinator
alias tx=tmuxinator

# Alias pip -> pip3
alias pip=/usr/local/bin/pip3.8

# Alias python -> python3.8
alias python=/usr/local/bin/pip3.8

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
source ~/.iterm2_shell_integration.zsh
[ -e ~/.profile ] && . ~/.profile
eval 
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
export CPPFLAGS=-I/usr/local/opt/llvm/include

# opam configuration
test -r /Users/brick/.opam/opam-init/init.zsh && . /Users/brick/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Fuzzy Completion
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/brick/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/brick/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/brick/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/brick/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/python@3.8/bin:$PATH"
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
ctags=/usr/local/bin/ctags

function GenCTags() {
    sh ~/.config/ctags/ctagsGenDeps.sh
}

# SSH Aliases
alias brickHouse='ssh root@45.33.70.138'
alias meatbox='echo "Error: You are not up in the closet"'
alias JayIsGay='echo "I know, dog"'
alias JakeLikesFingysInHisButt='echo "Bro I know its kinda weird"'
alias MattIsAFaggot='echo "Thats crazy, bro"'
