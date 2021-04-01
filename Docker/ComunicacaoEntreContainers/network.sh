#Se a gente criar uma network, ao criar container dentro dessa rede, podemos comunicar um com o outro usando o nome do container
#para criar uma network é bem simples, basta definir seu driver e um nome para ela

docker network create --driver bridge minha-rede

#Agora imaginemos que temos esses dois containers rodando
docker run -it --name meu-container-de-ubuntu --network minha-rede ubuntu

docker run -it --name segundo-ubuntu --network minha-rede ubuntu

#dentro do "segundo-ubuntu" poderiamos colocar:
ping meu-container-de-ubuntu #ele acha, pois ambos estão numa mesma rede interna