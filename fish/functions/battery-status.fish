# battery health check
function battery-status --description "Check battery health"

    clear

    set_color --bold bryellow
    echo "󰋽 Initializing battery diagnostics..."
    set_color normal

    sleep 1

    set_color cyan
    echo "󱐋 Scanning power devices..."
    set_color normal

    sleep 1

    set_color magenta
    echo "󰚥 Collecting battery statistics..."
    set_color normal

    sleep 1

    clear

    set_color --bold green
    echo "╭──────────────────────────────╮"
    echo "│      BATTERY INFORMATION     │"
    echo "╰──────────────────────────────╯"
    echo ""
    set_color normal

    upower -i $(upower -e | grep BAT)

    echo ""

    set_color --bold brgreen
    echo " Battery scan complete."
    set_color normal

end
