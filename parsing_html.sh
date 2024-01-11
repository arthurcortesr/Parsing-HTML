#!/bin/bash

if [ "$1" == "" ]
then
        echo "Pk's Academy - PARSING"
        echo "Modo de uso: $0 HOST"
        echo "Exemplo: $0 businesscorp.com.br"
else
        url="$1"
        # Remove qualquer barra no final da URL para evitar problemas com o nome do arquivo
        url=$(echo "$url" | sed 's:/$::')
        arquivo_index="$(echo "$url" | awk -F/ '{print $NF}').html"
        wget "$url/" -O "$arquivo_index" 2> /dev/null

        echo
        echo "Buscando Hosts:"
        hosts=$(grep href "$arquivo_index" | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l")
        echo "$hosts" > "$url".txt
        echo "$hosts"

        echo
        echo
        echo

        echo "Resolvendo Hosts:"
        for url in $(cat "$url".txt);
        do
        echo $(host "$url") | grep "has address" | sed 's/has address/--->/';
        done
fi
