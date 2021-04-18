## Release Strategies

* Aqui nos queremos dar ainda mais garantia ao deploy da nossa produção, nos já temos bastante segurança a partir das ultimas etapas, principalmente pelo ambiente de homologação, mas podemos diminuir ainda mais o risco

* Era comum no meio dos desenvolvedores utilizar alguns "carimbos" de qualidade do software, como o Pré-Alpha, Alpha, Beta, Release Candidate e Release.

* Hoje em dia utilizamos o pipeline, com etapas sofisticadas com releases durante o desenvolvimento do projeto e temos que o usuário sempre terá um produto funcionando.

* Com deploys incrementais, temos menos o risco associado a cada um deles de forma iterativa.

* Esses deploys incrementais precisam fundamentalmente de uma integração continua funcionando, com todas as técnicas a ela referente

* [Deploy é criar um ambiente, garantir que ele exista de maneira correta, instalar o software e configurá-lo. Já o release é a publicação de fato, o momento em que o cliente utiliza o produto.](https://www.scaledagileframework.com/release-on-demand/)

* Ou seja, o ambiente já vai poder ter algumas funcionalidades, mas o cliente não terá acesso a essas, fazendo isso temos:
    * Sistema não precisa ficar offline no deploy, pois o

### [Blue/Green Deployment](https://martinfowler.com/bliki/BlueGreenDeployment.html)

* Tecnicamente, o deploy já foi realizado, mas temos duas versões: uma antiga(azul) e a nova(verde) que já está em ambiente de produção. 

* Entre as versões há um roteador, então em algum momento podemos modificar o fluxo para o novo ambiente, a nova versão.

* O ambiente velho (blue) fica no ar ainda um bom tempo caso algum problema surja.

![alt text](https://martinfowler.com/bliki/images/blueGreenDeployment/blue_green_deployments.png)

### [Canary Release](https://martinfowler.com/bliki/CanaryRelease.html)

* Ele é praticamente uma evolução do blue/gren deployment, aqui temos um envio parcial para o ambiente azul, em que será monitorado antes da adoção total desses por outros usuários

* Critérios mais profundos podem assim ser analisados pelo canary release, coom o geográfico ou em estratégias de mercado, idade e assim por diante, isso vai variar de acordo com as necessidades do negócio e dados disponíveis sobre os usuários.

![alt text](https://martinfowler.com/bliki/images/canaryRelease/canary-release-2.png)


### Feature Toggles ou feature flags

* aqui é aquele negócio de onde temos uma quantidade de features habilitada para certos usuários e para outros não