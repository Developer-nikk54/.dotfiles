# fzf file search and read using bat
function fr # fs = file search in fzf
    set file (fzf)

    if test -z "$file"
        return
    end

    bat $file
    echo "./$file"
end
