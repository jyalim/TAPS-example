#!/usr/bin/env bash
readonly proc="pearc24"
readonly myid="110"
readonly  zip="$proc-$myid.zip"

if [[ -f $zip ]]; then 
  echo "rm $zip"
  rm $zip
fi

zip -r $zip ./Source/ ./pdf/
