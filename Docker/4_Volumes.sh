echo "Para deixar os dados persistente devemos usar Volumes"
echo "que volumes salvos não ficam no container e sim no Docker Host em caminho aleatório ou especificado"

docker run -v CAMINHO_VOLUME_LOCAL:CAMINHO_VOLUME_CONTAINER NOME_DA_IMAGEM

echo "Com isso, dentro do container, o que temos é apenas uma pasta ponteiro"

echo "Podemos também, em nosso volume, dizer um working directory, que é justamente a pasta onde será executado algum comando"
docker run -p 8080:3000 -v "$(pwd)/var/www" -w "/var/www" -d node npm start