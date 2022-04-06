***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/BackofficeCadastroDeECPage.robot
Resource            ../pages/BackofficePricingPage.robot
Resource            ../pages/GestãoDaCotaçãoPage.robot

Test Setup          Iniciar teste no Sistema Backoffice
Test Teardown       Finalizar teste

***Test Cases***
Cenario01: Realizar Cadastro de novo Estabelecimento Comercial
    Acessar sistema com usuário e senha
    Acessar Menu
    Acessar Establishments
    Acessar Adicionar
    Preencher dados validar e salvar
