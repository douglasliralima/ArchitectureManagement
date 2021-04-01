echo "podemos criar volumes manualmente e deixa-los configurados, esses sempre serão pastas criadas na pasta docker, mais fácil de trakear"
docker volume create my-vol

echo "Para usa-lo é igual ao usar um volume comum"
docker container run -it my-vol:/app ubuntu:16.04

echo "Podemos criar uma pasta temporária, essa que fica na ram, que apesar de escassa, é mais rápida"
docker container run -it -tmpfs /app ubuntu:16.04