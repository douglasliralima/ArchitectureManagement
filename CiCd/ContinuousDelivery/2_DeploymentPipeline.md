## Deployment Pipeline

### Boas práticas gerais

* Aqui gostariamos de fazer também um botão de release, assim como fizemos com o botão de integração, mas precisamos ter atenção que o pipeline de deploy pode ter algumas etapas não automatizaveis.

* O Pipeline deveria ser a única forma de chegar em deploy e para isso ele precisa ser rápido.

* O Build deveria ser executado apenas uma vez, registrando aquele artefato para ser usado posteriormente.

* O Build em sí deveria ser independente do ambiente.

* O ambiente de produção deveria ser o mais similar possível ao ambiente de homologação e desenvolvimento.

* Idealmente, criamos todo o ambiente do zero, para não levar nenhuma "sujeira" de instalações e testes anteriores.

* Cada etapa garante a segurança do que foi produzido e esse pipeline

### Etapas clássicas do deploy:

#### Build --> Unit Test --> Aceitação Automatizada --> Homologação --> Produção

1. Build

O começo de tudo é build, isto é o desenvolvedor vai construir o software.

2. Testes de aceitação automatizados

Depois da construção do software são executados os testes necessários. Por meio dos testes criamos relatórios sobre a qualidade do sistema. Se alguma etapa falhar ela é congelada por aqui e o artefato não é promovido.

3. Homologação UAT 

A próxima etapa caso tudo ocorra como o esperado - é a promoção do artefato. Este é o ambiente classico de User Acceptance Testing(UAT), ou simplesmente homologação. Nesta fase não executados os testes mais complexos que não podem ser automatizados.

4. Produção

Depois da aprovação manual, iremos para o ambiente de produção, em que o artefato será de fato produzido de maneira segura.

### Deploys especializados

* O deploy é bastante singular de cada empresa, podendo variar bastante, veja:

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/CiCd/assets/3_1_1_pipe.png)

* Veja aqui uma decrição mais sofisticada, que denota os retornos de feedback e o congelamento do processo de deploy, caso ocorram problemas em alguma das etapas

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/CiCd/assets/3_1_2_wiki.png)

* Para cada commit novo devemos construir e testar o software