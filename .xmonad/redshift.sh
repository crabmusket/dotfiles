# https://github.com/oneself/xmonad/blob/master/redshift.sh

# Sydney
LOC="-33:151"

if [ -x /usr/bin/redshift ]; then
  redshift -x
  killall redshift
  redshift -l $LOC -t 4500:3700 &
fi
