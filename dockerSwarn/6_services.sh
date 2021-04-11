echo "Um service geralmente pode ter vários containers rodando em máquinas distintas, para isso, após executa-lo, basta replica-lo:"
docker service update --replicas 4 ID_CONTAINER

echo "Fazendo isso, pelo routing mesh, essas diversas requisições seriam servidas por outros containers, outro comando que faz o mesmo"
docker service scale ci10k3u7q6ti=5

echo "Em alguns serviços, como serviços de segurança ou monitoramento, queremos que esses estejam rodando em todos os nós"
echo "para isso criamos serviços globais, para isos a unica coisa que precisamos é definir seu modo como global"
docker service create -p 8080:3000 --mode global -d IMAGE_NAME

echo "utilizando-se da rede ingress, de driver overlay. todos os nossos nós podem se comunicar, mas não conseguem referenciar outros
containers pelo nome"
echo "tinhamos esse mesmo problema ao criar containers pelo network default do docker, devido a isso precisamos criar uma rede customizada
do driver overlay e deixar os nossos serviços nessa rede"
docker network create -d overlay my_network

echo "as redes, quando criamos aqui com o drive overlay no Swarm, são criadas de maneira lazy, todos os managers vão saber da existência 
dessa rede, mas os workers só vão ver essa network, a partir do momento em que algum container utilize essa rede dentro desse nó."
docker service create -name servico --network my_overlay --replicate 3 alpine

echo "Podemos conectar containers em escopo local criados com o comando docker container run em redes criadas com esse driver."
docker network create -d overlay --attachable my_overlay