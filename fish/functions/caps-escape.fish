# swap capslock key to escape key function
function caps-escape
    echo "=================================="
    echo " Caps Lock / Escape Configuration "
    echo "=================================="
    echo
    echo "1) Caps Lock → Escape"
    echo "2) Restore Default Caps Lock"
    echo "3) Show Current Setting"
    echo "4) Exit"
    echo

    read -P "Choose an option [1-4]: " choice

    switch $choice
        case 1
            gsettings set org.gnome.desktop.input-sources xkb-options "['caps:escape']"
            echo "✓ Caps Lock is now mapped to Escape."

        case 2
            gsettings reset org.gnome.desktop.input-sources xkb-options
            echo "✓ Default keyboard behavior restored."

        case 3
            echo "Current setting:"
            gsettings get org.gnome.desktop.input-sources xkb-options

        case 4
            echo "Exiting..."
            exit 0

        case '*'
            echo "✗ Invalid option."
            exit 1
    end
end
