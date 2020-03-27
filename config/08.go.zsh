#compdef _rng rng


function _hello_quietly {
    _arguments \
        "--silent[Dont output anything]"
}

function _hello_loudly {
    _arguments \
        "--repeat=[Repat the <message> any number of times]"
}

function _rng-main {
}

function _rng {
    local line

    _arguments -C \
        '-h[Show help information]' \
        '--h[Show help information]' \
        '1: :(quietly loudly)' \
        '*::arg:->args'
}
