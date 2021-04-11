echo "para rebaixar algum nó manager para worker, o que é preciso para remove-lo, caso fique unreachable, basta fazer um demote nele"
docker node demote HOSTNAME_OR_ID
docker node rm  HOSTNAME_OR_ID

echo "para deixar um nó manager sem se preocupar com a execução de containers, basta executar o comando:"
docker node update --avaibility drain HOSTNAME_OR_ID

echo "uma estrategia melhor entretanto é restringir um serviço para não fazer suas tarefas executarem em um determinado tipo de nó"
docker service update --constraint-add node.role==worker ID_SERVICE

echo "podemos fazer restrições pelo id ou hostname de uma máquina tbm"
docker service update --constraint-add node.id==t76gee19fjs8 ci10k3u7q6ti
docker service update --constraint-add node.hostname==vm4 ci10k3u7q6ti

echo "também remover restrições criadas utilizando o comando de atualização passando a flag --constraint-rm"
docker service update --constraint-rm node.id==t76gee19fjs8 ci10k3u7q6ti
docker service update --constraint-rm node.hostname==vm4 ci10k3u7q6ti