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
[ -e ~/.profile ] && . ~/.profile
eval 
eval 
            fuck () {
                TF_PYTHONIOENCODING=$PYTHONIOENCODING;
                export TF_SHELL=zsh;
                export TF_ALIAS=fuck;
                TF_SHELL_ALIASES=$(alias);
                export TF_SHELL_ALIASES;
                TF_HISTORY="$(fc -ln -10)";
                export TF_HISTORY;
                export PYTHONIOENCODING=utf-8;
                TF_CMD=$(
                    thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
                ) && eval $TF_CMD;
                unset TF_HISTORY;
                export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
                test -n "$TF_CMD" && print -s $TF_CMD
            }
        
