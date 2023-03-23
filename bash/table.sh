# basic table
cat "${results}" | column -t
# with separator
cat "${results}" | column -t -s ','
# with output separator
cat "${results}" | column -t -s ',' -o '|'
