#!/bin/bash

STARTDIR=$1

for directory in `ls -d */`
do
  dir=$(basename "$directory")
  pattern=([0-9][0-9])-[0-9a-zA-z-]+  # The RegEx pattern to match
  if [[ $dir =~ $pattern ]] ; then  # See if it matches
    currentModuleNumber="10#${BASH_REMATCH[1]}"; # Get the module number (base 10)
    if [[ $currentModuleNumber -ge $STARTDIR ]] ; then # Only start renumbering 
                                                       # when the module number is >= 
                                                       # the parameter value
      newPrefix="00$(($currentModuleNumber + 1))" # Increase the module number
      trimmed=${newPrefix:(-2)}; # Pad any numbers less than 10 with a 0
      mv $dir "$trimmed$(echo $dir | sed -e 's/^..//')"; # Rename the directory
    fi
  else
    echo "${BASH_REMATCH[0]} did not match";
  fi

done