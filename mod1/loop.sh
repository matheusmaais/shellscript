#!/usr/bin/env bash
echo "==== for 1"
for (( i=0; i<10; i++ )); do
    echo $i
done

####
echo "==== for 2 (SEQ)"
for i in $(seq 0 10); do #i=0, i até 10
    echo $i
done


####
echo "==== for 3 (array)"
Frutas=(
    'Laranja'
    'Ameixa'
    'Abacaxi'
    'Melancia'
)
for i in "${Frutas[@]}"; do #array usa ${nome[index]} começa em 0.. @ = até o fim
    echo $i
done

####
echo "==== for 4 (while)"
contador=0
while [[ contador -lt ${#Frutas[@]} ]]; do
    echo $contador
    contador=$(($contador+1)) #contador++ todo: verificar se existe outra forma de incremento
done

#total de indices de um array = ${#array[@]}
total=0
total=${#Frutas[@]}
echo "Existem $total frutas"