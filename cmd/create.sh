cmd_create_help() {
    cat <<_EOF
    create
        Create the redis container '$CONTAINER'.

_EOF
}

rename_function cmd_create orig_cmd_create
cmd_create() {
    mkdir -p conf logs
    orig_cmd_create \
        --mount type=bind,src=$(pwd)/conf,dst=/etc/redis \
        --mount type=bind,src=$(pwd)/logs,dst=/var/log/redis
}
