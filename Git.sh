#!/bin/bash
if [ $# -eq 0 ]; then # Se nenhum argumento foi fornecido
	echo "Faltou o argumento, animal"
	exit 1
elif [ $# -eq 1 ]; then # Se passou apenas a mensagem
	git add .
	git commit -m "$1"
	git push
elif [ $# -eq 2 ]; then # Se passou msg e branch (Variação do script base)
	git add .
	git commit -m "$1"
	git push origin $2
fi
