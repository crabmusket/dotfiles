#!/bin/sh
# https://gist.github.com/pimeys/3772190

iwconfig eth2 2>&1 | grep -q no\ wireless\ extensions\. && {
  echo wired
  exit 0
}

essid=`nmcli -t -f active,ssid dev wifi | egrep '^yes' | cut -d\' -f2`
stngth=`nmcli -t -f active,ssid,signal dev wifi|grep yes|cut -d':' -f3`
bars=`expr $stngth / 10`

case $bars in
  0)  bar='-----' ;;
  1)  bar='|----' ;;
  2)  bar='|----' ;;
  3)  bar='||---' ;;
  4)  bar='||---' ;;
  5)  bar='|||--' ;;
  6)  bar='|||--' ;;
  7)  bar='||||-' ;;
  8)  bar='||||-' ;;
  9)  bar='||||-' ;;
  10) bar='|||||' ;;
  *)  bar='--?--' ;;
esac

echo $essid $bar

exit 0
