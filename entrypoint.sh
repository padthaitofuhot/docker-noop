#!/bin/bash

o() {
  if [ -z "$*" ]; then
    while read -r line; do
      printf "noop> %s\n" "${line}"
    done
  else
    printf '%s\n' "$*" | o
  fi
}

trap_handler() {
  o "Waking up and exiting..."
  exit 0
}

trap trap_handler SIGINT SIGTERM SIGQUIT SIGHUP

o "Your fortune of the run:"
o " "
fortune | o
o " "
o "Going to sleep..."
sleep infinity
