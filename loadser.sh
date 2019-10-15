xterm -e netcat -l -p 6969 &
kkk=!1
python par.py ROUTERS.lst
wait $kkk
