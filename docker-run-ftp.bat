:: en produccion hay que cambiar "--rm" por "--restart always" para que inicie automaticamente al arrancar docker (reboot).
:: C:\Pruebas\docker\ftp\storage --> es la ruta física (fuera del docker) donde están los archivos.
:: Se inicia con usuario cliente / cli.1717 que tiene permisos totales, hay que ver como dejarlo readonly 
docker run ^
   --rm ^
   -d ^
   -v C:\Pruebas\docker\ftp\storage:/home/vsftpd ^
   -p 20:20 -p 21:21 -p 47400-47470:47400-47470 ^
   -e FTP_USER=cliente ^
   -e FTP_PASS=cli.1717 ^
   -e PASV_ADDRESS=127.0.0.1 ^
   --name ftp ^
   bogem/ftp