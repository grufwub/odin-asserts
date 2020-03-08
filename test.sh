#!/bin/sh

print_exit() {
    printf '!!! %s\n' "$1"
    exit "$2"
}

test_print() {
    local expected="$1"
    shift 1

    echo ""
    echo "Testing: $@"

    "$@"
    [ $? -ne $expected ] && print_exit 'Failed test!' 1
}

odin build test.odin -out=test || print_exit 'Failed to compile!' 1
printf 'Compiled test.odin!\n'

test_print 133 ./test

unset print_exit test_print

printf '\nAll tests passed! :)\n'