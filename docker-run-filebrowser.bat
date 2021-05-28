:: en produccion hay que cambiar "--rm" por "--restart always" para que inicie automaticamente al arrancar docker (reboot).
:: C:\Pruebas\docker\ftp\storage                  --> es la ruta donde están los archivos.
:: C:\Pruebas\docker\ftp\config\filebrowser.db    --> es la base sqlite de configuración, si se copia esta, ya existe usuario admin / cli,2del para administracion
:: C:\Pruebas\docker\ftp\config\.filebrowser.json --> archivo de parametros, debe existir y se puede copiar este.
docker run ^
   -d ^
   --rm ^
   -v C:\Pruebas\docker\ftp\storage:/srv ^
   -v C:\Pruebas\docker\ftp\config\filebrowser.db:/database.db ^
   -v C:\Pruebas\docker\ftp\config\.filebrowser.json:/.filebrowser.json ^
   -p 80:80 ^
   --name filebrowser ^
   filebrowser/filebrowser