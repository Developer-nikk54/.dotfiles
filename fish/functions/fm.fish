# yazi file manager

function fm
    set tmp (mktemp -t yazi-cwd.XXXXXX)

    yazi $argv --cwd-file="$tmp"

    if test -f "$tmp"
        set cwd (cat "$tmp")

        if test -n "$cwd"
            cd "$cwd"
            ls
        end

        rm -f "$tmp"
    end
end
