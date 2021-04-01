echo "Na máquina que será a manager da aplicação, nos inializamos ela no swarn por esse comando"
echo "É importante ver o ip da máquina virtual e diferencia-lo da sua máquina local na hora de iniciar o swarn"
docker swarm init --advertise-addr IP-DA-MACHINA-HOST

echo "Se quisermos ver se uma máquina está com o swarn ativado, podemos visualiza-lo pelo comando abaixo e procura o estado de swarn:"
docker info