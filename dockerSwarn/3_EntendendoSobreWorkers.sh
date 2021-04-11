echo "Para criar um container visivel em todo o cluster, precisamos utilizar do comando service ao invés do run"
docker service create -p 8080:3000 -d IMAGE_NAME

echo "Esse é um comando que só pode ser feito pelos managers do cluster, se quisermos apaga-lo, usamos o comando"
docker service rm ID_SERVICE

echo "se quisermos apagar várias services de uma vez"
docker service rm $(docker service ls -q)

echo "Você pode ver todos os seus serviços com o comando"
docker service ls

echo "Ao fazer isso, o que criamos na verdade é um serviço e não o container rodando de fato, um serviço é como uma receita de bolo a"
echo "ser seguida, usando essa receita de bolo, o container é criado e passado para alguma VM, para ver mais detalhes desse service, 
inclusive em qual vm está rodando, usamos o comando:"
docker service ps ID_SERVICE


echo "Uma coisa importante é que para um cluster do swarn, as portas são globais, e ao tentarmos acessar uma porta de qualquer máquina"
echo "conectado na cluster, o próprio docker tem um sistema de routing mesh interno, que nos faz encontrar o container registrado naquela porta
de forma global, logo se tentarmos usar o comando de create novamente na porta 8080, não será possível"

echo "Agora imagine que o nó que está com o container, faça um rm no container, ou que por algum motivo ele caia, o container cai, mas o
service e a task persistem no cluster, logo se você remove-lo de um nó, ele simplesmente será alocado em um novo, você pode visualizar
essas realocações do container, pelo comando"
docker service ps ID_SERVICE