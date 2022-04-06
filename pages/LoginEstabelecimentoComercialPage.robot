*** Settings ***
Library     SeleniumLibrary

Resource    ../config/ConfiguraçãoUsuáriosComponent.robot
Resource    BackofficeCadastroDeECPage.robot

*** Variables ***
${FacaSeuLogin}                 xpath://*[@id="__next"]/div/div[3]/div[2]/div[3]/div[1]/label
${SouOficina}                   xpath://*[@id="im-establishment-button-id"]
${CodUsuario}                   xpath://*[@id="__next"]/div/div[2]/div/div[2]/form/div/div[2]/input
${NomeUsuarioEC}                xpath://*[@id="__next"]/div/div[2]/div/div[2]/form/div/div[3]/input
${SenhaEstabelecimento}         xpath://*[@id="__next"]/div/div[2]/div/div[2]/form/div/div[4]/input
${AcessarContaEC}               xpath://*[@id="access-your-account-button-id"]
${termoAdesãoEC}                xpath://*[@id="agree-button-establishment-login-form-id"]/a
${menuMob}                      xpath://*[@id="__next"]/div/header/div/div[2]/div/button

*** Keywords ***
Acessar na Home Faça seu Login
    # if Set Window Size <>  400 e 640 Aqui verificar se é mobile para clicar no elemento de abrir o menu
    #     Click Element   ${menuMob}
    # else
    Click Element   ${FacaSeuLogin}
    Click Element   ${FacaSeuLogin}

Selecionar a opção Sou Oficina
    Click Element   ${SouOficina}

Informar CNPJ, Nome do Usuário e senha
    Input Text       ${CodUsuario}             ${CNPJ_EC}
    Input Text       ${NomeUsuarioEC}          ${NOME_ESTABELECIMENTO}
    Input Text       ${SenhaEstabelecimento}   ${SENHA_ESTABELECIMENTO}

Informar CNPJ, Nome do Usuário e senha do novo EC criado no Backoffice
    Input Text       ${CodUsuario}             ${cnpjFormatado}
    Input Text       ${NomeUsuarioEC}          ${nomeECFormatado}
    Input Text       ${SenhaEstabelecimento}   ${SENHA_ESTABELECIMENTO}

Clicar em logar
    Click Element   ${AcessarContaEC}

Aceitar o Termo de adesão TiketLog EC
    Click Element    ${termoAdesãoEC}

Logar com estabelecimento Comercial
    Acessar na pagina inicial Home Faça seu login
    Selecionar a opção Sou Oficina
    Informar CNPJ, Nome do Usuário e senha
    Clicar em logar

Logar com novo EC criado no Backoffice
    Acessar na Home Faça seu Login
    Selecionar a opção Sou Oficina
    Informar CNPJ, Nome do Usuário e senha do novo EC criado bo Backoffice
    Clicar em logar
