#  ▓▓▓▓▓▓▓▓▓▓ 
# ░▓ Author ▓ Abdullah <https://abdullah.today/> 
# ░▓▓▓▓▓▓▓▓▓▓ 
# ░░░░░░░░░░ 


# Start X at login    
    

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/ttyv0 ]]; then
  exec startx 
  :
elif [[ $(tty) != /dev/ttyv0 ]]; then
  #sudo loadkeys $HOME/.loadkeysrc
  tmux has-session -t $USER || tmux new-session -t $USER && tmux attach-session -t $USER
fi
