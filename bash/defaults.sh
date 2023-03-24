unset EGGS
echo 1 ${EGGS-spam}   # 1 spam
echo 2 ${EGGS:-spam}  # 2 spam

EGGS=
echo 3 ${EGGS-spam}   # 3
echo 4 ${EGGS:-spam}  # 4 spam

EGGS=cheese
echo 5 ${EGGS-spam}   # 5 cheese
echo 6 ${EGGS:-spam}  # 6 cheese
