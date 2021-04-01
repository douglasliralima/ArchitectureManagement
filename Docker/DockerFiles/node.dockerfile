FROM node:latest

COPY . /var/wwww

RUN npm intall

#Podemos settar inclusive variáveis de ambiente
ENV PORT_VALUE=3000

#pasta onde o container estará ao ser inicializado
WORKDIR /var/wwww

#Comando que será executado quando o container executar
ENTRYPOINT ["npm", "start"]

#Porta em que ficará o containre
EXPOSE $PORT_VALUE