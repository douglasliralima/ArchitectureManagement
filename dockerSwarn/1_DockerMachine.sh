echo "Docker machine na verdade aqui será uma ferramenta suplementar, ela servirá para instanciar VMs pequenas com o docker instalado"
echo "para isso basta usar o comando:"
docker machine create -d virtualbox vm1

echo "com isso nos a criamos de forma deteached, para deixa-la running, igual docker, basta dar um start"
docker start vm1

echo "Para se conectar usamos o ssh do docker-machine"
docker-machine ssh vm1