# 2021-1 - Sexta Noite - Turma 42
Repositório da disciplina "Programação Avançada em Orientação à Objetos"

---

## Preparação do ambiente

1. Verificar se você possui o JRE instalado em sua máquina
    - Abrir o terminal e digitar "java -version"
    - Não pode dar erro (tipo, comando não reconhecido)
    - Se der algum erro, baixar e instalar o java de: https://www.java.com
<br>
2. Baixar e instalar o Netbeans 8.2, com JDK
    - Link: [CLIQUE AQUI](https://drive.google.com/drive/u/1/folders/1C7avj8cxH5XjOsM9wOS3CgR8WY3jRCTS)
    - Baixar a versão correta para seu Sistema Operacional (32 ou 62bit)
    - Instalar normalmente: CUIDADO: A pasta de instalação (netbeans e JDK) não pode conter espaços nem caracteres especiais
<br>
3. Instalar os plug-ins do JEE
  - Após a instalação, clicar em "Ferramentas" -> "Plug-ins"
  - Clicar na guia "Plugins disponíveis", e buscar pelo termo "Java EE"
  - Selecionar:
    - Java EE Base
    - EJB e EAR
  - Clicar no botão "Instalar"
  - Aceitar os termos de licença e instalar normalmente.
  - Clicar para reiniciar o Netbeans
<br>
4. Testar o Netbeans para projetos JEE
  - Clicar em "Arquivo" -> "Novo projeto"
  - Verificar se em "Catergoria" aparece "Java Web"
  - Somente isso. Não é necessário criar o projeto neste ponto
<br>
5. Instalação do Glassfish
  - Baixar o glassfish "Web Profile" [DESTE LINK](https://javaee.github.io/glassfish/download)
  - Extrais para um local seguro (recomendação/exemplo: "C:\glassfish5")
  - Checar se dentro dessa pasta há três pastas e um readme
  - No Netbeans, clicar em "Janela" -> "Serviços" (clique para fechar a aba "Página inicial")
  - Em servidores, clicar com o botão direito e "Adicionar Servidor"
  - Selecionar "Glassfish Server" e clicar em próximo
  - Clicar no botão "Procurar". Selecionar o caminho onde o Glassfish foi extraído (apenas selecionar a pasta RAIZ do Glassfish)
  - Clicar em próximo
  - Trocar a porta: Trocar "domain1" para "domain2" (por exemplo). Desmarcar "default" e colcoar as portas 4849 e 8081 respectivamente (fazemos isso pois vocês possuem aula de Oracle que utiliza um Glassfish na mesma porta e pode dar conflito)
  - Finalizar
  - Clicar em "Não" ao ser exibida a mensagem de "Mostrar relatório"
  - Para testar, clicar com o botão direito no Glassfish e "Iniciar"
  - Se o sistema operacional pedir permissão para o "defender" (usuários de Windows), permitir
<br>
6. Alterar a pasta de instalaçao do JavaDB
  - Na mesma tela de serviços, expandir "Bancos de dados"
  - Clicar com o botão direito em "JavaDB" -> "Propriedades"
  - No primeiro campo, procurar a pasta do Glassfish e seleciona a pasta interna "javadb"
  - Clicar em Ok

Pronto! :D
