#!/usr/bin/env bash

function word-of-the-day {
  local word=`shuf -n 1 ./sat`
  curl --silent "dict://dict.org/d:$word:wn" | grep -Pv "^\d\d\d "
}

word-of-the-day
