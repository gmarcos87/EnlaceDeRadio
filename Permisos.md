El procedimiento es de lo más simple. Consta de 4 pasos simples:

* Copia la plantilla script a/etc/init.d:
    cp /etc/init.d/<nombredescript> /etc/init.d/

*No estoy muy seguro si tenes que hacer  chmod + /etc/init.d/<nombredescript>

* Le das permisos de ejecución --- explicar lo de 7 5 5
    sudo chmod 755 /etc/init.d/<nombredescript>
    insserv /etc/init.d/<nombredescript>

* Finalmente, crea un enlace a /sbin:
    ln -s /etc/init.d/<nombredescript> /sbin/rc<nombredescript>
