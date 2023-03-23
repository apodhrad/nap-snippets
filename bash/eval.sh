hello() {
  echo "Hello${1}!"
}
bye() {
  echo "See you!"
}
# eval function
eval $(echo "${1} ${2}")
# eval var assignment
var="FOO"
value="fooo"
eval "${var}=\${value}"
echo "${FOO}"
