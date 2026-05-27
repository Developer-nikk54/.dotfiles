alias reload="source ~/.bashrc"
# others important settings
# homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

# starship prompt
eval "$(starship init bash)"

# fastfetch
alias fastfetch="fastfetch --config ~/.config/fastfetch/presets/custom.jsonc"
fastfetch

# enable vim commands for terminal
set -o vi

# -------------------------------------------------------------------------------------------------
# os settings
# alias
alias clr="clear"

# default text editor
export EDITOR=nvim
#:export VISUAL=nvim
#:export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
# -------------------------------------------------------------------------------------------------

# zoxide init
eval "$(zoxide init bash)"

# tmux
alias tmux-start="tmux new-session -A -s main"
if [ -z "$TMUX" ] && [ -n "$PS1" ]; then
  tmux-start
fi

# yazi
f() {
  local tmp="$(mktemp -t yazi-cwd.XXXXXX)"
  yazi "$@" --cwd-file="$tmp"
  if [ -f "$tmp" ]; then
    local cwd
    cwd="$(cat "$tmp")"
    [ -n "$cwd" ] && cd "$cwd"
    rm -f "$tmp"
  fi
}

# broot
# alias br="broot"
