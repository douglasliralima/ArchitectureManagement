echo "Para que um container possa executar em background, sem ficar preso ao seu terminal, usamos a porta -d"
docker run -d dockersample/static-site

echo "De forma a podermos nos comunicas com as portas alocadas pelo docker para o container, podemos defini-las pela flag -P"
docker run -d -P dockersample/static-site

echo "Para definir essa porta, basta a flag ser minuscula"
docker run -d -p 12345:80 dockersample/static-site


echo "Podemos ver mais espeficamente essas portas pelo comando port"
docker port ContainerId

echo "podemos também definir um nome para o container, de forma a ele não ser esses numeros maluco"
docker run -d -P --name example-de-nome dockersample/static-site

echo "para definirmos uma variável de ambiente que pode ser usado por aquele container, basta a flag e"
docker run -d -P -e AUHTOR="Douglas Lima" dockersample/static-site