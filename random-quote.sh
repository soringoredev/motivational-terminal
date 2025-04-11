#!/bin/bash

quotes=("Keep pushing!" "Just code it." "Debug like a ninja." "Think twice, commit once." "Coffee first. Then code.")
random=$(( RANDOM % ${#quotes[@]} ))

echo "${quotes[$random]}"
