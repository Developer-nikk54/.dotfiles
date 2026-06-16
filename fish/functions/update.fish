# update all packages

function update --description "Update all system packages"

    # uncomment for apt packages used for ubuntu based distro
    # set_color red
    # echo "󰒓 Updating apt packages..."
    # echo ""
    # set_color normal
    #
    # if type -q apt
    #     sudo apt update && sudo apt full-upgrade -y
    #     sudo apt autoremove -y
    #     sudo apt autoclean
    # end
    #

    set_color red
    echo "󰒓 Updating dnf packages..."
    echo ""
    set_color normal

    if type -q dnf
        sudo dnf upgrade --refresh -y
        sudo dnf autoremove -y
        sudo dnf clean all
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
