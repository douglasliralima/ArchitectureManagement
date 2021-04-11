<h3> Branchs e Continuous Delivery </h3>
<hr>

* Vimos que a maioria dos workflows com git, trabalham a partir de uma feature que recebe sua própria branch

* Isso leva a features muito complexas que podem demorar para entrar no ambiente de produção

* O ideal é termos uma boa granularidade de features, entretanto, isso nem sempre é possível, como em um refactor, por exemplo.

* Existem algumas estratégias para podermos ajustar isso

<h4> Feature Flag </h4>
<hr>

* Nos colocamos como que um botão em nossa aplicação, que desabilita certa funcionalidade quando o código vai para a produção

* O código vai continuar sendo parte da codebase, mas esse será produzido em baby steps em um ciclo de vida mais curto para cada pequena entrega

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/ContinuousDelivery/assets/1_HROSl2j8Ib7keDGF6_8PTQ.jpeg "feature flags")

* [Mais detalhes sobre como implementar esse tipo de operação, basta clciar aqui](https://martinfowler.com/articles/feature-toggles.html) 

<h4> Branch by Abstraction </h4>
<hr>

* Essa é uma técnica para mudanças maiores a se ter no software, que permita você continuar lançando versões do projeto, enquanto as mudanças continuam em progresso.

* Isso tudo é feito pela criação de uma classe abstrata que encapsula as interações no código e o contínuo desenvolvimento da nova funcionalidade, quando a classe de abstração está completa.

* Nos começamos com várias partes do nosso sistema dependendo de uma parte do código.

![alt text](https://martinfowler.com/bliki/images/branch-by-abstraction/step-1.png "Branch by Abstraction step 1")

* Então criamos uma camada de abstração que encapsua a interação entre a parte do cliente e a parte que está para ser substituida, e refazemos a conexão para passar por ela agora, para aquele cliente.

![alt text](https://martinfowler.com/bliki/images/branch-by-abstraction/step-2.png "Branch by Abstraction step 2")

* Nos então gradualmente movemos todos os clientes a usarem essa classe de abstração.

![alt text](https://martinfowler.com/bliki/images/branch-by-abstraction/step-3.png "Branch by Abstraction step 3")

* Com isso feito, podemos ir criando a nova classe, de forma a ir servindo os clientes e cada vez mais necessitar do legado.

![alt text](https://martinfowler.com/bliki/images/branch-by-abstraction/step-4.png "Branch by Abstraction step 4")

* Até que finalmente esteja tudo completo

![alt text](https://martinfowler.com/bliki/images/branch-by-abstraction/step-5.png "Branch by Abstraction step 5")

* [Fonte e mais detalhes](https://martinfowler.com/bliki/BranchByAbstraction.html) 
