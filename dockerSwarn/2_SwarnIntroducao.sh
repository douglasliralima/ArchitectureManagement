echo "Na máquina que será a manager da aplicação, nos inializamos ela no swarn por esse comando"
echo "É importante ver o ip da máquina virtual e diferencia-lo da sua máquina local na hora de iniciar o swarn"
docker swarm init --advertise-addr IP-DA-MACHINA-HOST

echo "Se quisermos ver se uma máquina está com o swarn ativado, podemos visualiza-lo pelo comando abaixo e procura o estado de swarn:"
docker info


echo "vamos criar duas máquinas virtuais que serão as workers desse sistema"
docker machine create -d virtualbox vm2
docker machine create -d virtualbox vm3

echo "Para faze-la se conectar ao docker, basta utilizar o comando que o swarn nos gera ao usar:"
docker swarm join token worker

echo "Dentro da minha rede, dentro de um nó manager, eu posso visualizar quais são os nós que estão conectados através do comando:"
docker node ls

echo "paara remover um nó do cluster, mesmo que ele seja um worker, o primeiro precisa sair do cluster para ai sim o 
manager retira-lo do cluster"
NÓ WORKER: docker swarn leaver
NÓ MANAGER: docker node rm ID_NODE_WORKER

echo "O manager consegue também acesso a informações de cada um de seus nós, como por exemplo, o ip que ele está operando, através do comando"
docker node ispect HOSTNAME_OR_ID