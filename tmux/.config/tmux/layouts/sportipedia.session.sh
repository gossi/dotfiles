session_root "~/code/gossi/sportipedia"

if initialize_session "Sportipedia"; then
  new_window "root"

  #window_root "~/code/gossi/sportipedia/services/auth"
  #new_window "\"Service: Auth\""
  #run_cmd "pp dev"

  window_root "~/code/gossi/sportipedia/services"
  new_window "Services"
  split_h 50
  run_cmd "cd api"
  select_pane 1
  run_cmd "cd auth && pp dev"

  window_root "~/code/gossi/sportipedia/support"
  new_window "Support"

  window_root "~/code/gossi/sportipedia/apps"
  new_window "Apps"
  split_h 50
  run_cmd "cd admin"
  select_pane 1
  run_cmd "cd catalog"

  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
