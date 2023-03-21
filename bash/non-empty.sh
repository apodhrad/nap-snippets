if [ -z "${FOO}" ]; then
    echo "FOO is unset or set to the empty string"
fi
if [ -z "${FOO+set}" ]; then
    echo "FOO is unset"
fi
if [ -z "${FOO-unset}" ]; then
    echo "FOO is set to the empty string"
fi
if [ -n "${FOO}" ]; then
    echo "FOO is set to a non-empty string"
fi
if [ -n "${FOO+set}" ]; then
    echo "FOO is set, possibly to the empty string"
fi
if [ -n "${FOO-unset}" ]; then
    echo "FOO is either unset or set to a non-empty string"
fi
