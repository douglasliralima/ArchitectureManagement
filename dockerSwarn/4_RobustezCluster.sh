echo "As configurações de um manager ficam sendo guardadas em uma pasta dentro do docker"
ls /var/lib/docker/swarn

echo "podemos copiar continuamente o conteúdo dessa pasta para uma de backup"
cp -r  /var/lib/docker/swarn backup

echo "Com isso, se em algum momento o nosso manager cair e o cluster morrer, podemos rapidamente reinicia-lo"
cp -r backup/* /var/lib/docker/swarn
docker swarm init --force-new-cluster --advertise-addr IP-DA-MACHINA-HOST

echo "para que adicionar novos managers que ficarão de reservas caso o lider morra, basta seguir as instruções ao uso o comando:"
docker swarm join-token manager
echo "O docker sugere que tenhamos entre 3,5 ou 7 managers em nosso sistema, para evitar um overhead na hora de escolha do lider pelo
algoritmo raft"