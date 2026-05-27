# fzf file search and open in neovim
function fo # fs = file search in fzf
    set file (fzf)

    if test -z "$file"
        return
    end

    nvim $file
end
