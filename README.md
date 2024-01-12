# Parsing.html
O script ```parsing_html.sh``` é um utilitário desenvolvido em Bash para realizar parsing de URLs e resolução de hosts a partir de uma página HTML. Ele fornece uma maneira simples de extrair links da página HTML de um determinado host e resolver os hosts associados.

Este repositório também possui o arquivo [melhorias](https://github.com/arthurcortesr/Parsing-HTML/blob/main/melhorias.md) que é usado para adicionar anotações de possíveis melhorias a serem implementadas no no script.

<br>

---

<br>

## **Modo de uso**
```bash
./parsing_html.sh <host>
```

## **Exemplo**
```bash
./parsing_html.sh businesscorp.com.br
```

## **Exemplo de saída**

```bash
Buscando Hosts:
subdominio1.businesscorp.com.br
subdominio2.businesscorp.com.br
...

Resolvendo Hosts:
subdominio1.businesscorp.com.br ---> 192.168.1.1, 192.168.1.2
subdominio2.businesscorp.com.br ---> 192.168.1.3, 192.168.1.4
...
```

<br>

---

<br>

## **Funcionalidades**

1. O script verifica se um argumento de HOST foi fornecido. Caso contrário, exibe uma mensagem de uso.
2. Remove barras finais da URL para evitar problemas com o nome do arquivo.
3. Faz o download da página HTML do host especificado.
4. Extrai os hosts das URLs encontradas na página HTML e exibe na saída padrão.
5. Resolve os hosts utilizando o comando host e exibe os endereços IP correspondentes.

<br>

---

<br>

## **Observações**

1. O script salva os hosts extraídos em um arquivo de texto chamado HOST.txt.
2. A resolução de hosts é realizada utilizando o comando host e exibe os endereços IP correspondentes.

<br>

---

<br>

## **Avisos**

1. Este script é destinado para fins educacionais e deve ser usado em ambientes controlados e autorizados.
2. O uso inadequado do script pode violar os Termos de Serviço de websites e políticas de segurança. Certifique-se de ter permissão antes de executar em qualquer site externo.




















