main() {
  echo "main code"
}

# to avoid execution when sourced
[[ "${BASH_SOURCE[0]}" == "${0}" ]] && main "$@"
