#!/bin/bash

Passwd(){
	echo "Nome do Usuario: $1"
	echo "Senha: $2"
	echo "Uid: $3"
	echo "Gid: $4"
	echo "Comentários: $5"
	echo "Diretório home: $6"
	echo "Shell padrão: $7"
}

IFS=':'  # variável IFS definida
while read nome senha uid gid comentario home shell_padrao
do
	Passwd "$nome" "$senha" "$uid" "$gid" "$comentario" "$home" "$shell_padrao"
	echo
done


# Use assim:
# ./password_ifs.sh < /etc/passwd


