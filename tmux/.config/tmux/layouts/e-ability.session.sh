session_root "~/code/gossi/ember-ability"

if initialize_session "ember-ability"; then

  new_window "root"

  window_root "~/code/gossi/ember-ability/ember-ability"
  new_window "ember-ability"

  window_root "~/code/gossi/ember-ability/test-app"
  new_window "test-app"

  select_window 1

fi

finalize_and_go_to_session
