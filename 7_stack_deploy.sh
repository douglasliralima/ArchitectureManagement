echo "Podemos utilizar um arquivo de composição e subir uma pilha de serviços simultaneamente."
docker stack deploy --compose-file NOME_ARQUIVO NOME_STACK
docker stack deploy --compose-file docker-compose.yml vote

echo "podemos visualizar as nossas stacks:"
docker stack ls

echo "podemos remover toda a nossa stack:"
docker stack rm vote

echo "Os volumes são todos locais em nossa aplicação, não existe uma forma de volume compartilhado pelo docker standalone"
echo "para volumes compartilhados entre os nós, olhar: https://hub.docker.com/search?category=volume&q=&type=plugin"