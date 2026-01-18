if [ -z "$TMUX" ]
then
#    tmux attach -t TMUX || tmux new -s TMUX
  if [[ $(tmux list-sessions) ]]; then 
    tmux attach
  else
    tmux
  fi
fi

