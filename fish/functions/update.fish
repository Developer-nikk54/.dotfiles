# update all packages

function update --description "Update all system packages"

    set_color red
    echo "󰒓 Updating APT packages..."
    echo ""
    set_color normal

    if type -q apt
        sudo apt update && sudo apt full-upgrade -y
        sudo apt autoremove -y
        sudo apt autoclean
    end

    set_color red
    echo ""
    echo "󰒓 Updating Flatpak packages..."
    echo ""
    set_color normal

    if type -q flatpak
        flatpak update -y
    end

    set_color red
    echo ""
    echo "󰒓 Updating Homebrew packages..."
    echo ""
    set_color normal

    if type -q brew
        brew update && brew upgrade
        brew cleanup
    end

    set_color red
    echo ""
    echo " Update Successfully Complete."
    echo ""
    set_color normal

end
