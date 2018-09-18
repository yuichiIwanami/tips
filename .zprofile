
# service start
start_service() {
    name=$1
    # [[ $(service ${name} status) =~ '(not running|down)' ]] && sudo service ${name} start
    [[ $(pgrep ${name}) ]] && sudo service ${name} start
}
 
services=(
    ssh
#	postgresql
#	redis-server
)

for sv in ${services[@]}
do
	start_service ${sv} 
done

unsetopt BG_NICE

# wsl
export DISPLAY=:0.0
# uim
export XIM=uim
export XMODIFIERS=@im=uim
#export UIM_CANDWIN_PROG=uim-candwin-gtk
export UIM_CANDWIN_PROG=uim-candwin-qt
export GTK_IM_MODULE=uim
export QT_IM_MODULE=uim

if [[ $SHLVL == 1 ]]; then
  uim-xim &
fi

# start konsole
[[ $(pgrep konsole) ]] || konsole &

# yarn
#export PATH="$PATH:$(yarn global bin)"
