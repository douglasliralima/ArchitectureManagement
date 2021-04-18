## Pipeline Stages

### Commit Stage

* Aqui é onde desboca todo os conceitos de integração continua

* A partir dessa etapa nos começamos a rodar os testes de unidade(pois são os mais rápidos) e a buildar o artefato

* Para o desenvolvedor começar a desenvolver outra coisa, ele deve esperar essa parte estar completa

* Ela deveria rodar em uns 10 minutos, devido a parar um desenvolvedor, se começar a ficar lento essa etapa, ela deveria ser paralelizada para maior otimização.

* Para testes serem rápidos, em tese esses não podem ser muito voltados a interface, banco de dados ou qlqr outra coisa async

### Automated Acceptance Test Stage

* Aqui nos queremos testar toda a aplicação e ver se essa atende aos requisitos de negócio.

* Esses são os testes de comportamento do sistema.

* Mais caros e difíceis de manter, apesar de manter a qualidade e funcionamento do sistema.

* Passos:
    1. Configurar o ambiente
    2. Deploy a aplicação
    3. Smoke tests
    4. Rodar totalidade de testes

* Resultado é um relatório dos testes e noficação para a equipe se os testes passaram ou não.

* Os requisitos precisam ser bem claros para que tenhamos bons testes

* Esses testes são bem caros e devido a isso é sugerido começar um projeto desde o inicio com isso em mente

* Desempenho não é o mais importante aqui

### Homologação ou UAT(User Acceptance Test)

* Aqui é para ver se a aplicação está de acordo com o desejado pelo cliente;

* Aqui é um usuário ou beta tester, usa a nossa aplicação e vê se está na perspectiva que ele quer;

* Ele pode aceitar certas etapas, entretanto, adicionar um "mas" naquela entrega;

* É aqui que garantimos a frase do manifesto ágil **"Our highest priority is to satisfy the customer through early and continuous delivery of valuable software"**;

* Ambiente de homologação deve ser identico ao de produção;

* É legal a equipe participar desse processo em conjunto ao cliente;

### Capacity Testing Stage

* Em paralelo a homologação, podemos executar o "Capacity Testing Stage". Aqui vamos garantir que o software realmente suporta a quantidade de requisições, transações e acessos de usuários.

* Os testes devem fazer parte do desenvolvimento do software e ser aplicados em ciclos. Aqui, é importante definir métricas claras e monitorar o sistema.

* Graças aos seus custos eles acontecem em conjunto a homologação, pois assim não acontecem a cada commit.

* Realizar isso é bastante complexo, temos todo um ferramental e técnicas diferentes focadas apenas nessa etapa

* Os testes de carga buscam descobrir qual é a real capacidade do nosso sistema, ou seja, seu baseline.

* A partir do nosso baseline, podemos idealizar projeçoes de onde queremos chegar, analisando bottlenecks ou quaisquer outras situações para alcançar uma nova baseline.

* Esses testes são mais caros em sua infraestrutura também, pois estão no mesmo ambiente que está o de produção.

* As vezes nos gravamos um conjunto de requisições que aconteceram em grande volume e fazemos replay daquela situação

* Ferramental: JMeter, Getling, Webbload, Apache Bench, LoadNinja