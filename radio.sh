#!/bin/sh
 
#programa=/home/radiovoces/.mplayer   #HOME del programa a ejecutar
startup=/bin/startup.sh   #código para iniciar el programa
shutdown=/bin/shutdown.sh #código para parar el programa
 
start(){
 echo -n $"Starting service: "
 $startup
 RETVAL=$?
 echo
}
 
stop(){
 echo -n $"Stopping service: "
 $shutdown
 RETVAL=$?
 echo
}
 
restart(){
 stop
 sleep 10
 start
}
 
# Dependiento del parametro que se le pase
#start - stop - restart ejecuta la función correspondiente.
case "$1" in
start)
 start
 ;;
stop)
 stop

 ;;
restart)
 restart
 ;;
*)
 echo $"Usar: $0 {start|stop|restart}"
 exit 1
esac
 
exit 0
