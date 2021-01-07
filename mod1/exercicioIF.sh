#!/usr/bin/env bash
if [[ "$1" -gt 10 ]]
then   
    echo "$1 é maior que 10 e seu PID é: $$"
    echo "Nome do Script: $0"
else
    echo "$1 é menor que 10 e seu PID é: $$"
fi
## ou
[ $1 -gt 10 ] && echo "Nome do Script: $0 | PID de execução: $$"

