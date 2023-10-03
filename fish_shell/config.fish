
# banner
set fish_greeting

# color
set fish_pager_color_prefix '555' '--bold' '--underline'

# fzf
set -x FZF_DEFAULT_OPTS '--height=50%'

# alias
alias ls='ls -hF --color=tty'                 # classify files in colour
alias la='ls -a'
alias ll='ls -l'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'
# alias L='\| less'
# alias G='| grep'


# variables
set -x MAMBA_NO_BANNER 1

# anyenv
# set -Ux PATH $HOME/.anyenv/bin $PATH
set -Ux fish_user_paths $HOME/.anyenv/bin $fish_user_paths
# anyenv init
# eval "$(anyenv init -)"
# status --is-interactive; and source (anyenv init -|psub)
# test "$(which anyenv)"; or status --is-interactive && source (anyenv init -|psub)

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source
# nodenv
set -Ux NODENV_ROOT $HOME/.anyenv/envs/nodenv
set -x PATH $NODENV_ROOT/bin $PATH
# export PATH=$NODENV_ROOT/shims:$PATH
#export PATH=$HOME/.nodenv/bin:$PATH
#eval "$(nodenv init -)"
eval (nodenv init - | source)
