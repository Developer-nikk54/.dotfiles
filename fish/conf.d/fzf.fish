# initializaion fzf at shell startup time
# FZF GLOBAL CONFIG (Fish)
set -Ux FZF_DEFAULT_OPTS "
--style full \
--preview 'fzf-preview.sh {}' \
--bind 'focus:transform-header:file \
--brief {}' \
--border=rounded \
--layout=reverse-list \
--info=right \
--separator=── \
--input-label-pos=1 \
--color=dark,pointer:#99c1f1 \
"

fzf --fish | source
