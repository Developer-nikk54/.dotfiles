# run mongo shell
function mongo-shell
    docker exec -it mongodb mongosh \
        -u admin \
        -p admin123 \
        --authenticationDatabase admin
end
