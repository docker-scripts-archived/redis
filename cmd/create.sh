cmd_create_help() {
    cat <<_EOF
    create
        Create the redis container '$CONTAINER'.

_EOF
}

rename_function cmd_create orig_cmd_create
cmd_create() {
    mkdir -p conf.d data run logs
    orig_cmd_create

    # make the command 'redis' global
    mkdir -p $DSDIR/cmd/
    cp $APP_DIR/cmd/redis.sh $DSDIR/cmd/
}
