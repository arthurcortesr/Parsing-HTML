# Parsing.html
O script parsing_html.sh é um utilitário desenvolvido em Bash para realizar parsing de URLs e resolução de hosts a partir de uma página HTML. Ele fornece uma maneira simples de extrair links da página HTML de um determinado host e resolver os hosts associados.

<br>

---

<br>

## **Modo de uso**
```bash
./parsing_html.sh HOST
```

## **Exemplo**
```bash
./parsing_html.sh businesscorp.com.br
```

![Screenshot_2024-01-11_15-09-26](https://github.com/arthurcortesr/Parsing.html/assets/55396654/2b32182e-41a4-418c-9dca-ca847897859e)

<br>

---

<br>

## **Funcionalidades**

    1. O script verifica se um argumento de HOST foi fornecido. Caso contrário, exibe uma mensagem de uso.
    2. Remove barras finais da URL para evitar problemas com o nome do arquivo.
    3. Faz o download da página HTML do host especificado.
    4. Extrai os hosts das URLs encontradas na página HTML e exibe na saída padrão.
    5. Resolve os hosts utilizando o comando host e exibe os endereços IP correspondentes.

