#!/usr/bin/env bash
VAR=""
VAR2=""

if [[ "$VAR" = "$VAR2" ]]; then
    echo "São iguais"
fi

if [[ "$VAR" = "$VAR2" ]]
then
    echo "São iguais"
fi

if  test "$VAR" =  "$VAR2"
then 
    echo "São iguais"
fi

if [ "$VAR" =  "$VAR2" ]
then    
    echo "São iguais"
fi

[ "$VAR" =  "$VAR2" ] && echo "São Iguais" #se true executa
[ "$VAR" =  "$VAR2" ] || echo "São Iguais" #se false executa

# Str1 = Str2 Retorna true se as Strings são iguais
# Str1 != Str2 Retorna true se as Strings não são iguais
# -n Str1 Retorna true se a String não é null
# -z Str1 Retorna true se a String é null
# Comparação Numérica Descrição
# expr1 -eq expr2 Retorna true se os valores são iguais
# expr1 -ne expr2 Retorna true se os valores não são iguais
# expr1 -gt expr2 Retorna true se o expr1 é maior que o expr2
# expr1 -ge expr2 Retorna true se o expr1 é maior ou igual ao expr2
# expr1 -lt expr2 Retorna true se o expr1 é menor que o expr2
# expr1 -le expr2 Retorna trues se o expr1 é menor ou igual ao expr2
# ! expr1 Nega o resultado da expressão (se for true vira false e vice-versa)
# Condicionais de arquivos Descrição
# -d file Retorna se for um diretório
# -e file Retorna true se o arquivo existir
# -f file Retorna true se o arquivo existir (-f é mais usado porque é mais portável)
# -g file Retorna true se o GID estiver habilitado no arquivo
# -r file Retorna true se o arquivo tiver permissão de leitura
# -s file Retorna true se o arquivo tiver um tamanho diferente de zero
# -u Retorna true se o UID estiver habilitado no arquivo
# -w Retorna true se o arquivo tiver permissão de escrita
# -x Reteorna true se o arquivo tiver permissão de execução