#!/bin/bash
#H4r0s
function _menu()
{
  echo 
  echo "Select an option:"
  echo
  echo "1) Convert JPG to WEBP"
  echo "2) Convert JPEG to WEBP"
  echo "3) Convert PNG to WEBP"
  echo "4) Convert JPG to WEBP and Delete JPG files"
  echo "5) Convert JPEG to WEBP and Delete JPEG files"
  echo "6) Convert PNG to Webp and Delete PNG files"
  echo "7) Exit"
}
opc=0
 until [ $opc -eq 7 ]
do
  case $opc in
    1)
      echo "type the path to the working folder"
      read H
      mogrify -format webp "$H/*.[jJ][pP][gG]"
      ;;
    2)
      echo "type the path to the working folder"
      read H
      mogrify -format webp "$H/*.[jJ][pP][eE][gG]"
      ;;
    3)
      echo "type the path to the working folder"
      read H
      mogrify -format webp "$H/*.[pP][nN][gG]"
      ;;
    4)
      echo "type the path to the working folder"
      read H 
      mogrify -format webp "$H/*.[jJ][pP][gG]"
      mv "$H/*.[jJ][pP][gG]" /tmp
      rm -rf /tmp/*.[jJ][pP][gG]
      ;;
    5)
      echo "type the path to the working folder"
      read H  
      mogrify -format webp "$H/*.[jJ][pP][eE][gG]"
      mv "$H/*.[jJ][pP][eE][gG]" /tmp
      rm -rf /tmp/*.[jJ][pP][eE][gG]    
      ;;
    6)
      echo "type the path to the working folder"
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
