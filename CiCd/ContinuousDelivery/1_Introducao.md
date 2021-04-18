#### Introdução

* Alcançando a integração continua, o próximo passo é a entrega cóntinua do que se foi integrado, para o usuário, de forma automatizada.

* Enquanto a parte de integração contínua é algo que envolve muito mais os desenvolvedores, a entrega contínua envolve todos do tipo, por isso os interesses de todos preicsam estar alinhados

* Deploys menores têm menos risco e são mais fáceis de entender quando dá algum problema.

*  Implantações podem ser muito complexas e difíceis, e justamente por isso devemos repetí-las, para deixar o processo seguro e confiável. Também é conhecido como [Frequência reduz a dificuldade](https://martinfowler.com/bliki/FrequencyReducesDifficulty.html).

* É essencial automatizar o máximo possível, desde a criação dos ambientes, instalação do software, configuração e execução dos testes.

* O mundo apanhou muito até chegar em boas práticas para entrega contínua, alguns antipatterns: 
    * Gerenciamento manual de ambientes - Para evitar isso temos um código de criação manual desses ambientes, de forma a destrui-los e reconstrui-los rapidamente
    * Deploy Manual - Deploy ter um manual de como faze-lo, instruções para isso, fazendo isso não ser um conhecimento comum e trazendo Devs e ops se comunicar para isso acontecer.
        * Apenas duas coisas deveriam ser manuais, a escolha da versão que se deve entrar em produção e o botão para fazer o deploy
    * Deploy apenas no fim do ciclo - Quando o deploy só acontece após várias integrações, não fazendo o teste prático e assumindo que as coisas vão funcionar

* No **deploy contínuo**, todas alterações entram em produção, sem nenhuma aprovação humana. A **entrega contínua** depende de uma aprovação humana.

* A **arquitetura do código** e a **testabilidade** dele implicam totalmente na parte de integração contínua e isso está totalmente relacionado com a entrega contínua

Para outros tópicos nesses padrões de projeto para entrega, algumas indicações:

https://www.amazon.com.br/Continuous-Delivery-Deployment-Automation-Addison-Wesley-ebook/dp/B003YMNVC0

https://www.casadocodigo.com.br/products/livro-devops