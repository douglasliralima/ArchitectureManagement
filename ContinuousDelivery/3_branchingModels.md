<h3> Conceitos gerais </h3>
<hr>

* A medida que vamos avançando o nosso projeto, ao trabalharmos com git, é comum que criemos ramificações do projeto, que estejam focadas no desenvolvimento de uma nova atividade.

* Temos geralmente uma nomenclatura para as branchs que são vistas em todos os modelos

* **Temporários (branches locais)** - São branches localizados apenas na máquina local e deverão se extiguir, são utilizados para organizar fluxos de trabalho e depois realizar o commit.

* **Feature Branches** - São utilizados para implementar funcionalidades ou orientar tarefas.

* **Historical Branches (mastaer e develop)** - As alterações ficam organizadas em commits baseados na cronologia no caso de um projeto de software.

* **Environment Branches (Staging e Production)** - Existem branches que são baseados no ambiente, isto é, em que espaço é realizado o deploy.

* **Maintenance Branches (Release e Hotfix)** - Temos, ainda, os branches de manutenção do sistema.

<h3> Modelos </h3>
<hr>

<h4> trunck based Development </h4>
* Para mais detalhes acessar a [referencia para nomenclatura de branchs mais frequentes](https://nvie.com/posts/a-successful-git-branching-model/)

* O mais visualmente simples dos modelos, mas que demanda um time mais maduro, é o trunk based model, que se estabelece em uma única branch, mais detalhes podem ser encontrados [aqui](https://trunkbaseddevelopment.com/)

![alt text](https://trunkbaseddevelopment.com/trunk1b.png "trunk based model")

<h4 a = "https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow"> future branch workflow </h4>

https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow

* Um exemplo é o future branch workflow, em que para cada nova funcionalidade, é criada uma branch, chamada feature, essa que então vai para a master

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/ContinuousDelivery/assets/2_2_1_feeeature.png "future branch workflow")

* Algo muito comum é fazer isso através de pull requests, esses que são muito usados para fazer uma analise de código e resolver problemas de compatibilidade.

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/ContinuousDelivery/assets/2_2_2_pul%2Brequest.png "pull requests")

* Nos temos um outro modelo chamado gitlab flow, nele nos temos tamém branchs de ambientes

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/ContinuousDelivery/assets/2_2_3_ramificacoes.png "gitlab flow")

* Entretanto o modelo mais consolidade é o gitflow, esse que junta todas as boas práticas em um único modelo:

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/ContinuousDelivery/assets/2_2_4_git.png "gitflow")