if [ -z "$HERDR_ENV" ]
then
  if command -v herdr >/dev/null 2>&1; then
    herdr
  fi
fi
