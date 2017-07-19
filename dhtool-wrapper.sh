#!/bin/sh
if [ $# -eq 0 ]; then
  /usr/bin/dhtool
elif [ $# -gt 2 ]; then
  printf '[ERROR] This container requires one or two arguments.\n        Run the container with no arguments for help.\n'
else
  if printf "${@}" | grep '\-h' &> /dev/null; then
    /usr/bin/dhtool
  else
    /usr/bin/dhtool ${@} 2>&1 >/dev/null
  fi
fi
