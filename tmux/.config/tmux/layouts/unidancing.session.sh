session_root "~/code/gossi/unidancing"

if initialize_session "UniDancing"; then
  new_window "root"

  window_root "~/code/gossi/unidancing/web"
  new_window "web"
  
  window_root "~/code/gossi/unidancing/gatekeeper"
  new_window "gatekeeper"
  run_cmd "pp dev"

  window_root "~/code/gossi/unidancing/web"
  new_window "tina" 
  run_cmd "pp start:tina"

  window_root "~/code/gossi/unidancing/theme"
  new_window "theme"

  select_window 1

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
