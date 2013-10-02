if [[ ! -o interactive ]]; then
    return
fi

compctl -K _java-base java-base

_java-base() {
  local word words completions
  read -cA words
  word="${words[2]}"

  if [ "${#words}" -eq 2 ]; then
    completions="$(java-base commands)"
  else
    completions="$(java-base completions "${word}")"
  fi

  reply=("${(ps:\n:)completions}")
}
