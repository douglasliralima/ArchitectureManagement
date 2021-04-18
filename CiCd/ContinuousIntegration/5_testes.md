### Testes e integração contínua

* Nos não podemos ter acesso a um ambiente de integração contínua sem que hajam testes automatizados

* Temos entregas tão recorrentes que apenas a partir deles podemos garantir uma qualidade mínima em nosso produto

* Testes devem ser executados sempre antes de um commit

* TDD pode ajudar, mas não é essencial, o que importa é o desempenho desses testes para assegurar a integração contínua

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/CiCd/assets/3_1_1_design.png "Tdd e integração contínua")

* Normalmente nos gostariamos dos nossos testes divido dessa forma:

![alt text](https://3fxtqy18kygf3on3bu39kh93-wpengine.netdna-ssl.com/wp-content/uploads/2020/01/test-automation-pyramid.jpg "Pyramid test")

* **Testes de unidade** - são os que mais deveriam existir em nosso código e eles testariam funcionalidades atômicas do nosso código, como métodos especificos

* **Testes de integração** - São os testes que veriam se as partes do nosso código que são constituidas da composição de métodos atômicos, por isso seu nome, pois ele testa se a integração entre códigos está correta

* **E2E Tests** - Também chamados de testes de UI, são os testes feitos em toda a nossa aplicação, que vão testar as exatas ações que um cliente faria com o nosso projeto, seja ele qual for

![alt text](https://www.xenonstack.com/images/insights/xenonstack-what-is-smoke-testing.png "smoke test")

* **Smoke Test**: conjunto de testes (bem menor do que o conjunto de teste de aceitação, que vai configurar posteriormente em uma regressão) com o intuito de validar se os pontos mais importantes da aplicação continuam funcionando após as alterações.

* **Teste de Aceitação**: São os testes funcionais que conhecemos. Em um contexto ágil eles são chamados de aceitação ao invés de funcional, pela ótica que adotamos a estes testes, que vão tanto validar a aplicação funcionalmente como validar também da ótica de um usuário (fazer uma venda completa, por exemplo). Estes testes são mais demorados para a execução, mesmo automatizada, pois são um conjunto, as vezes, muito grande de testes e, consequentemente, demorando mais para executar e prover um feedback mais rápido.

* O ideal é que esses testes venham sendo desenvolvidos com o tempo, para evitar esse tipo de comportamento

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/CiCd/assets/3_1_1_design.png "Test design")