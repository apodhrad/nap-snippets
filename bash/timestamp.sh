# Seconds since the Epoch
date "+%s"
# Basic timestamp, e.g. 2023-04-04-1009
date "+%Y-%m-%d-%H%M"
date -d @"${SEC_SINCE_EPOCH}" "+%Y-%m-%d-%H%M"
# Computation
date "+%s" -d "30 days ago"
