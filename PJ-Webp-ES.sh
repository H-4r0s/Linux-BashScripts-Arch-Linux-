#!/bin/bash
#H4r0s
function _menu()
{
  echo 
  echo "Selecciona una opcion:"
  echo
  echo "1) Convertir JPG a WEBP"
  echo "2) Convertir JPEG a WEBP"
  echo "3) Convertir PNG a WEBP"
  echo "4) Convertir JPG a WEBP y borrar archivos JPG"
  echo "5) Convertir JPEG a WEBP y borrar archivos JPEG"
  echo "6) Convertir PNG a WEBP y borrar archivos PNG"
  echo "7) Salir"
}
opc=0
 until [ $opc -eq 7 ]
do
  case $opc in
    1)
      echo "Teclee el nombre de la carpeta a trabajar"
      read H
      mogrify -format webp "$H/*.[jJ][pP][gG]"
      ;;
    2)
      echo "Teclee el nombre de la carpeta a trabajar"
      read H
      mogrify -format webp "$H/*.[jJ][pP][eE][gG]"
      ;;
    3)
      echo "Teclee el nombre de la carpeta a trabajar"
      read H
      mogrify -format webp "$H/*.[pP][nN][gG]"
      ;;
    4)
      echo "Teclee el nombre de la carpeta a trabajar"
      read H 
      mogrify -format webp "$H/*.[jJ][pP][gG]"
      mv "$H/*.[jJ][pP][gG]" /tmp
      rm -rf /tmp/*.[jJ][pP][gG]
      ;;
    5)
      echo "Teclee el nombre de la carpeta a trabajar"
      read H  
      mogrify -format webp "$H/*.[jJ][pP][eE][gG]"
      mv "$H/*.[jJ][pP][eE][gG]" /tmp
      rm -rf /tmp/*.[jJ][pP][eE][gG]    
      ;;
    6)
      echo "Teclee el nombre de la carpeta a trabajar"
      read H  
      mogrify -format webp "/tmp/*.[pP][nN][gG]"
      mv "$H/*.[pP][nN][gG]" /tmp
      rm -rf /tmp/*.[pP][nN][gG]
      ;;
    *) 
      _menu
      ;;
    )
  esac
  read opc
done
