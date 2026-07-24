# run mongo shell
function mongo-shell
    tmux rename-window mongo &&
        docker exec -it mongodb mongosh \
            -u admin \
            -p admin123 \
            --authenticationDatabase admin
end
