level=`amixer get 'Master' | egrep -o "[0-9]+%"`
status=`amixer get 'Master' | egrep -o "\[(on|off)\]"`
echo Vol: ${level} ${status}
