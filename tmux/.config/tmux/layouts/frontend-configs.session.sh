session_root "~/code/gossi/frontend-configs"

if initialize_session "frontend-configs"; then

  new_window "root"

  window_root "~/code/gossi/frontend-configs/packages/eslint"
  new_window "eslint"

  window_root "~/code/gossi/frontend-configs/packages/postcss"
  new_window "postcss"

  window_root "~/code/gossi/frontend-configs/packages/prettier"
  new_window "prettier"

  window_root "~/code/gossi/frontend-configs/packages/stylelint"
  new_window "stylelint"

  window_root "~/code/gossi/frontend-configs/packages/template-lint"
  new_window "template-lint"

  window_root "~/code/gossi/frontend-configs/testing"
  new_window "testing"

  select_window 1

fi

finalize_and_go_to_session
