#! /bin/bash

random_number=$((RANDOM % 3))

if (($random_number == 0)); then
  feh --bg-fill ~/Pictures/onyxia.png
fi

if (($random_number == 1)); then
  feh --bg-fill ~/Pictures/lcars.jpg
fi

if (($random_number == 2)); then
  feh --bg-fill ~/Pictures/warhammer_1.jpg
fi
