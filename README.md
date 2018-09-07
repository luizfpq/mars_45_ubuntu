# Mars_45_Ubuntu

Conjunto de instalação e configuração para o Mars 4.5 no Ubuntu ou outras distribuições utilizando openJDK

O MARS (MIPS Assembler and Runtime Simulator) é como o nome diz, um simlador em tempo de execução da arquitetura MIPS

Apesar de ser desenvolvido em Java com o intuito de ser multi plataforma, a aplicação sofre uma incompatibilidade com o parâmetro
assistive_technologies do arquivo accessibility.properties do openjdk.

A solução mais simples para essa problemática é comentar a linha referente ao parâmetro no arquivo supracitado.

Contudo, para facilitar o uso da aplicação, decidi criar um bash para facilitar a instalação.