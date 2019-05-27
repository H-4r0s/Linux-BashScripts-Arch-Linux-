#!/bin/bash
#H4r0s
function _menu()
{
  echo 
  echo "Elektu elekton:"
  echo
  echo "1) Konvertu JPG-on al WEBP-o"
  echo "2) Konvertu JPEG-on al WEBP-o"
  echo "3) Konvertu PNG-on al WEBP-o"
  echo "4) Konvertu JPG-on al WEBP-o kaj forigu JPG"
  echo "5) Konvertu JPEG-on al WEBP-o kaj forigu JPEG"
  echo "6) Konvertu PNG-on al WEBP-o kaj forigu PNG"
  echo "7) Eliuru"
}
opc=0
 until [ $opc -eq 7 ]
do
  case $opc in
    1)
      echo "Skribu la labor-dosierujan nomon"
      read H
      mogrify -format webp "$H/*.[jJ][pP][gG]"
      ;;
    2)
      echo "Skribu la labor-dosierujan nomon"
      read H
      mogrify -format webp "$H/*.[jJ][pP][eE][gG]"
      ;;
    3)
      echo "Skribu la labor-dosierujan nomon"
      read H
      mogrify -format webp "$H/*.[pP][nN][gG]"
      ;;
    4)
      echo "Skribu la labor-dosierujan nomon"
      read H 
      mogrify -format webp "$H/*.[jJ][pP][gG]"
      mv "$H/*.[jJ][pP][gG]" /tmp
      rm -rf /tmp/*.[jJ][pP][gG]
      ;;
    5)
      echo "Skribu la labor-dosierujan nomon"
      read H  
      mogrify -format webp "$H/*.[jJ][pP][eE][gG]"
      mv "$H/*.[jJ][pP][eE][gG]" /tmp
      rm -rf /tmp/*.[jJ][pP][eE][gG]    
      ;;
    6)
      echo "Skribu la labor-dosierujan nomon"
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
