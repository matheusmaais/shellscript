#!/usr/bin/env zsh
#Irá extrair usuarios do /etc/passwd, havendo a possibilidade
#de colocar em maiusculo e ordem alfabética
# exemplo: ./listaUsuarios.sh -s -m
# cat /etc/passwd | cut -d : -f 1
#roda um cat e usa o cut para delimitar : filtrando a primeira coluna

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
   $(basename $0)  - [Opções]

    -h - Menu de ajuda
    -v - Versão
    -s - Ordenar a saída
    -m - Coloca em Maiúsculo
"
VERSAO="v1.0"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0

#---- Execução ---- #
# if [ "$1" = "-h" ]; then
#     echo "$MENSAGEM_USO" && exit 0
# fi

# if [ "$1" = "-v" ]; then
#     echo "$VERSAO" && exit 0
# fi

# if [ "$1" = "-s" ]; then
#     echo "$USUARIOS" | sort && exit 0
# fi

# case "$1" in
#     -h) echo "$MENSAGEM_USO" && exit 0 ;;
#     -v) echo "$VERSAO" && exit 0       ;;
#     -s) CHAVE_ORDENA=1                 ;;
#     -m) CHAVE_MAIUSCULO=1              ;;
#      *) echo "$USUARIOS"               ;;
# esac

while test -n "$1"
do
    case "$1" in
     -h) echo "$MENSAGEM_USO" && exit 0  ;;
     -v) echo "$VERSAO" && exit 0        ;;
     -s) CHAVE_ORDENA=1                  ;;
     -m) CHAVE_MAIUSCULO=1               ;;
      *) echo "Opção Invãlida" && exit 1 ;;
    esac
    shift 
done

#[ "$CHAVE_ORDENA" -eq "1" ] && echo USUARIOS= $(echo "$USUARIOS \n" | sort )
#[ "$CHAVE_MAIUSCULO" -eq "1" ] && echo USUARIOS= $(echo "$USUARIOS \n" | tr 'a-z' 'A-Z')

[ $CHAVE_ORDENA -eq 1 ]    && USUARIOS=$(echo  "\n$USUARIOS" | sort)
[ $CHAVE_MAIUSCULO -eq 1 ] && USUARIOS=$(echo  "\n$USUARIOS" | tr [a-z] [A-Z])
echo $USUARIOS
# [ "$CHAVE_ORDENA" -eq "1" ] && echo "$USUARIOS" | sort
# [ "$CHAVE_MAIUSCULO" -eq "1" ] && echo "$USUARIOS" | tr 'a-z' 'A-Z'

