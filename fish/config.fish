# -------------------------------------------------
# Vim mode in terminal
# -------------------------------------------------
set -g fish_greeting
fish_vi_key_bindings
# set fish_vi_force_cursor 1
set -U fish_cursor_default block
set -U fish_cursor_insert line
set -U fish_cursor_replace_one underscore
set -U fish_cursor_visual block
set -U fish_color_selection --background=brblack --foreground=red


# tmux
function tmux-start
    tmux new-session -A -s main
end

if not set -q TMUX; and status is-interactive
    tmux-start
end


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

# -------------------------------------------------
# default editor
# -------------------------------------------------
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx PATH $PATH /opt/nvim-linux-x86_64/bin

# commands that run only when terminal is open otherwise not
if status is-interactive
    # Commands to run in interactive sessions can go here
    # chafa -s 20x20 ~/.config/fastfetch/images/01.png
    myfetch
end
