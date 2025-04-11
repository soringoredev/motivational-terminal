#!/bin/bash

function show_help() {
  echo "Usage: ./random-quote.sh"
  echo "Prints a random motivational quote in the terminal."
  echo "Version 1.1"
}

function random_quote() {
  quotes=("Keep pushing!" "Just code it." "Debug like a ninja." "Think twice, commit once." "Coffee first. Then code.")
  random=$(( RANDOM % ${#quotes[@]} ))
  echo -e "\e[1;32m${quotes[$random]}\e[0m"
}

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  show_help
else
  random_quote
fi
