#! /bin/bash

random_number=$((RANDOM % 6))

if (($random_number == 0)); then
  feh --bg-fill ~/Pictures/Backgrounds/a_white_light_pole_with_a_jet_trail_in_the_sky.jpg
fi

if (($random_number == 1)); then
  feh --bg-fill ~/Pictures/Backgrounds/heic0206c.tif
fi

if (($random_number == 2)); then
  feh --bg-fill ~/Pictures/Backgrounds/man_mountain.jpg
fi

if (($random_number == 3)); then
  feh --bg-fill ~/Pictures/Backgrounds/moon_venus.jpg
fi

if (($random_number == 4)); then
  feh --bg-fill ~/Pictures/Backgrounds/earth_set.jpg
fi

if (($random_number == 5)); then
  feh --bg-fill ~/Pictures/Backgrounds/moon_cover.jpg
fi
