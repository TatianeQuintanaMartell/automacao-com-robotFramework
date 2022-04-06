***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/CadastroDeUsuárioMotoristaPage.robot
Resource            ../pages/SolicitaçãoDeOrçamentosPage.robot

Test Setup          Iniciar teste no Sistema KD
Test Teardown       Finalizar teste

***Test Cases***
Cenario01: Realizar Cadastro de novo usuário Motorista
    Acessar na pagina inicial Home Faça seu login
    Clicar em sou Cliente
    Clicar em Ainda não possui conta
    Informar nome e celular
    Informar Email, senha e confirmação de senha
    Acessar a conta com Email e Senha
    Aceitar o Termo de adesão TiketLog
    Realizar o cadastro do Motorista
    Cadastrar Veículo
    Ir para Home


Cenario02: Realizar Cadastro de novo usuário Motorista sem aceite do termo
    Acessar na pagina inicial Home Faça seu login
    Clicar em sou Cliente
    Clicar em Ainda não possui conta
    Informar nome e celular
    Informar Email, senha e confirmação de senha
    Acessar a conta com Email e Senha
    Não Aceitar o Termo de adesão TiketLog
    Realizar o cadastro do Motorista
    Cadastrar Veículo
    Ir para Home
