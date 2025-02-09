session_root "~/code/hokulea/aria-voyager"

if initialize_session "aria-voyager"; then

  new_window "root"
  
  window_root "~/code/hokulea/aria-voyager/packages/aria-voyager"
  new_window "aria-voyager"

  window_root "~/code/hokulea/aria-voyager/packages/ember-aria-voyager"
  new_window "ember"
  split_h 50
  run_cmd "cd test-app"
  select_pane 1
  run_cmd "cd package"

  select_window 1

fi

finalize_and_go_to_session
