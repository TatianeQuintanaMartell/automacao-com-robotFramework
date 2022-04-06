***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/CadastroAtendimentoInfraEcPage.robot
Resource            ../pages/LoginEstabelecimentoComercialPage.robot
Resource            ../pages/SolicitaçãoDeOrçamentosPage.robot

Test Setup          Iniciar teste no Sistema KD
Test Teardown       Finalizar teste

***Test Cases***
Cenário01: Realizar Cadastro de Atendimento e Infraestrutura
    Acessar na pagina inicial Home Faça seu login
    # Selecionar a opção Sou Oficina
    # Informar CNPJ, Nome do Usuário e senha
    # Clicar em logar
    # Fechar PopUp para o portal da TLOG
    # Acessar menu lateral Minha Oficina
    # Selecionar Atendimento e Infraestrutura
    # Preencher Informações e Salvar
