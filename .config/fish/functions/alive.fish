function alive --description 'POST to alive.me that I am alive'
    if test -z "$ISALIVEME_TOKEN"
        echo '$ISALIVEME_TOKEN not set, bailing out' 1>&2
    else
        curl -s --header Auth-Token:{$ISALIVEME_TOKEN} https://isalive.me/update > /dev/null &
    end
end
