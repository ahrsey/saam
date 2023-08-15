_saam_complete() {
  local word completions
  word="$1"
  completions="$(\saam ls)"
  reply=( "${(ps:\n:)completions}" )
}

compctl -f -K _saam_complete saam
