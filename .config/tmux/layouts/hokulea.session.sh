session_root "~/code/hokulea/hokulea"

if initialize_session "hokulea"; then

  new_window "root"

  window_root "~/code/hokulea/hokulea/foundation"
  new_window "core"
  split_h 50
  run_cmd "cd tokens"
  select_pane 1
  run_cmd "cd core"

  window_root "~/code/hokulea/hokulea/ember"
  new_window "ember"
  split_h 50
  run_cmd "cd test-app"
  select_pane 1
  run_cmd "cd package"

  window_root "~/code/hokulea/hokulea/themes/moana"
  new_window "theme"

  window_root "~/code/hokulea/hokulea/explorer"
  new_window "explorer"
  split_h 50
  select_pane 1

  select_window 1

fi

finalize_and_go_to_session
