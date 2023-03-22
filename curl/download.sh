# download to a file
curl "${URL}" -o "${FILE}"
# download to a file with redirection
curl -L "${URL}" -o "${FILE}"
# download to a file named like the remote file
curl -LO "${URL}"
# show status code only
curl -LI "${URL}" -o /dev/null -w '%{http_code}\n' -s
