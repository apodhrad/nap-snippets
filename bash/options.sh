while [[ $# -gt 0 ]]; do
  local key="$1"
  case $key in
  -n | --name)
      name="$2"
      shift # past argument
      shift # past value
      ;;
  -h | --help) # print usage
      print_usage
      exit
      ;;
  *) # unknown option
      unknown="$1"
      shift
      ;;
  esac
done
