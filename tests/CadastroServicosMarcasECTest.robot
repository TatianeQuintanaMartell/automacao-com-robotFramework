***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/CadastroServicosMarcasECPage.robot
Resource            ../pages/LoginEstabelecimentoComercialPage.robot
Resource            ../pages/SolicitaçãoDeOrçamentosPage.robot
Resource            ../pages/CadastroAtendimentoInfraEcPage.robot

Test Setup          Iniciar teste no Sistema KD
Test Teardown       Finalizar teste

***Test Cases***
Cenário01: Realizar cadastro de Serviços e Marcas
    Acessar na pagina inicial Home Faça seu login
    Selecionar a opção Sou Oficina
    Informar CNPJ, Nome do Usuário e senha
    Clicar em logar
    Fechar PopUp para o portal da TLOG
    Acessar menu lateral Minha Oficina
    Acessar Servicos e Marcas
    Informar Serviços, Montadoras, Categoria de Veículos e Salvar
