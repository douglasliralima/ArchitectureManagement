#### Build Automático

* O processo de build é dividido em várias etapas bem definidas

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/CiCd/assets/3_2_1_etapas.png "build steps")

* Quando em integração continua, se vê a necessidade que essas sejam o mais automatizadas possível, de maneira a permitir o continuous integration

* O build deveria ser independente da IDE

* O ideal é que todas essas etapas aconteçam de forma mais simples possível e agnostica possível, como apertar um botão

![alt text](https://raw.githubusercontent.com/douglasliralima/ArchitectureManagement/master/CiCd/assets/3_2_2_book.png "integration button")

* O tempo ideal de build de um projeto é de no máximo 10 minutos

* Idealmente o build deve acontece a cada commit e não a cada x tempo de forma períodica ou agendada

* As vezes a nossa máquina local não é capaz de fazer o build completo, junto de todas as suas etapas, para isso separamos uma máquina para isso (CI Daemon)

* O CI Daemon também garante que os testes rodaram para todo nova adição do projeto, pois o desenvolvedor pode acabar esquecendo ou simplesmente não executando os testes do projeto

* O CI Daemon tem a responsabilidade de sempre checar quando tem novas alterações no repositório e caso elas hajam, ele executará o build e testes completos

* Também é bom termos um dashboard com o resultado dos builds

* Quando o build está quebrado, ele entra como prioridade maior de todas a correção do pipeline: "Nobody has a higher priority task than fixing the build." -Kent Beeck

