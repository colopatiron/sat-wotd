#!/usr/bin/env bash

function word-of-the-day {
  local word=`shuf -n 1 ./sat`
  curl --silent "dict://dict.org/d:$word:wn" | grep -Ev "^[[:digit:]][[:digit:]][[:digit:]] |^\.[[:cntrl:]]$"
}

word-of-the-day
