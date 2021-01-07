#!/usr/bin/env bash
NOME="Matheus"
echo "$NOME"

NUMERO_1=24
NUMERO_2=45
TOTAL=$((NUMERO_1+NUMERO_2))
echo "$TOTAL"
#########
#########
echo "Parametro_1 = $1"
echo "Parametro_2 = $2"
echo "Todos os parametros = $*"
echo "Quantos parametros? = $#"
echo "Saída do ultimo comando = $?" #0=ok, 1=erro
echo "PID: $$"
echo "O nome do meu script é: $0"