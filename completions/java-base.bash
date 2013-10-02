_java-base() {
  COMPREPLY=()
  local word="${COMP_WORDS[COMP_CWORD]}"

  if [ "$COMP_CWORD" -eq 1 ]; then
    COMPREPLY=( $(compgen -W "$(java-base commands)" -- "$word") )
  else
    local command="${COMP_WORDS[1]}"
    local completions="$(java-base completions "$command")"
    COMPREPLY=( $(compgen -W "$completions" -- "$word") )
  fi
}

complete -F _java-base java-base
