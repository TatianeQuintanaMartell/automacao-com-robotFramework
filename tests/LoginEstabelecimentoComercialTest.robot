***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/LoginEstabelecimentoComercialPage.robot
Resource            ../pages/CadastroDeUsuárioMotoristaPage.robot
Resource            ../pages/CadastroServicosMarcasECPage.robot
Resource            ../pages/CadastroAtendimentoInfraEcPage.robot
Resource            ../pages/CadastroConteudoEcPage.robot
Resource            ../pages/CadastroPromocaoPage.robot
Resource            ../pages/SolicitaçãoDeOrçamentosPage.robot

Test Setup          Iniciar teste no Sistema KD
Test Teardown       Finalizar teste

***Test Cases***
Cenario01: Logar com Estabelecimento Comercial
    Acessar na pagina inicial Home Faça seu login
    Selecionar a opção Sou Oficina
    Informar CNPJ, Nome do Usuário e senha
    Clicar em logar

Cenario02: Logar com Estabelecimento Comercial para Aceitação do termo
    Acessar na pagina inicial Home Faça seu login
    Selecionar a opção Sou Oficina
    Informar CNPJ, Nome do Usuário e senha
    Clicar em logar
    Aceitar o Termo de adesão TiketLog EC
