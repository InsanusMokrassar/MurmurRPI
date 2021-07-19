#!/bin/bash

function assert_success() {
    "${@}"
    local status=${?}
    if [ ${status} -ne 0 ]; then
        echo "### Error ${status} at: ${BASH_LINENO[*]} ###"
        exit ${status}
    fi
}

version="latest"

assert_success docker build -t murmur:$version ./
assert_success docker tag murmur:$version insanusmokrassar/murmur:$version
assert_success docker push insanusmokrassar/murmur:$version
