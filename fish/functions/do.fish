# open directory using zoxide 
function do
    set dir (
        zoxide query -l |
        fzf --no-sort
    )

    if test -n "$dir"
        cd $dir
    end
end
