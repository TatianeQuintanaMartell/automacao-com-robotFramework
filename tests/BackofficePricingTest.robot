***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/BackofficePricingPage.robot

Test Setup          Iniciar teste no Sistema Backoffice
Test Teardown       Finalizar teste

***Test Cases***
Cenario01: Realizar Cadastro de nova Promoção Por Cidade
    Acessar sistema com usuário e senha
    Acessar Menu
    Acessar Home Management
    Acessar Pricing
    Preencher campos da Nova Promoção
    Preencher Localização
    Criar Promoção

Cenario02: Realizar Cadastro de nova Promoção Por Nome do EC
    Acessar sistema com usuário e senha
    Acessar Menu
    Acessar Home Management
    Acessar Pricing
    Preencher campos da Nova Promoção
    Escolher Estabelecimento Específico
    Preencher Nome do EC
    Criar Promoção

Cenario03: Realizar Cadastro de nova Promoção Por CNPJ do EC
    Acessar sistema com usuário e senha
    Acessar Menu
    Acessar Home Management
    Acessar Pricing
    Preencher campos da Nova Promoção
    Escolher Estabelecimento Específico
    Preencher CNPJ do EC
    Criar Promoção
