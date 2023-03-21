# ${0} is the 1st argument, i.e. script name
# ${BASH_SOURCE} is the script name which is executed
# ${BASH_SOURCE[0]} is the same as ${BASH_SOURCE}
# ${BASH_SOURCE[1]} is the script name which sourced ${BASH_SOURCE[0]}
# ${BASH_SOURCE[2]} is the script name which sourced ${BASH_SOURCE[1]}

# to avoid execution when sourced
[[ "${BASH_SOURCE[0]}" == "${0}" ]] && main "$@"
