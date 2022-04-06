*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../config/ConfiguraçãoUsuáriosComponent.robot
Resource    ../config/ConfiguraçãoTesteComponent.robot
Resource    ../components/FakerComponent.robot

*** Variables ***
${nome}                         xpath://*[@id="styledlogintextfield-sidebarregister-name-id"]
${celular}                      xpath://*[@id="styledlogintextfield-sidebarregister-phone-id"]
${cpf}                          xpath://*[@id="__next"]/div/div[2]/main/div/div/form/main/div[3]/input
${cep}                          xpath://*[@id="__next"]/div/div[2]/main/div/div/form/main/div[3]/input
${cidade}                       xpath://*[@id="__next"]/div/div[2]/main/div/div/form/main/div[4]/div[2]/div[3]/input
${uf}                           xpath://*[@id="__next"]/div/div[2]/main/div/div/form/main/div[4]/div[2]/div[2]/input
${bairro}                       xpath://*[@id="__next"]/div/div[2]/main/div/div/form/main/div[4]/div[3]/div[1]/input
${logradouro}                   xpath://*[@id="__next"]/div/div[2]/main/div/div/form/main/div[4]/div[3]/div[2]/input
${numero}                       xpath://*[@id="__next"]/div/div[2]/main/div/div/form/main/div[4]/div[3]/div[3]/div[2]/input
${salvar}                       xpath://*[@id="__next"]/div/div[2]/main/div/div/form/main/div[1]/button
${salvarMobileDiv}              xpath://*[@id="__next"]/div/div[2]/main/div/div/form/div
${salvarMobile}                 xpath://*[@id="__next"]/div/div[2]/main/div/div/form/div/button
${mobileSairCadastro}           xpath://*[@id="__next"]/div/div[2]/main/div/div/form/div[2]/div/div[2]/div/svg
${login}                        xpath://*[@id="__next"]/div/div[3]/div/div[2]/div/div[4]/div[1]/label
${souCliente}                   xpath://*[@id="im-client-button-id"]
${naoPossuiConta}               xpath://*[@id="__next"]/div/div[2]/div/div[2]/div/form/div[7]/label
${email}                        xpath://*[@id="styledlogintextfield-sidebarregister-email-id"]
${senha}                        xpath://*[@id="styledlogintextfield-sidebarregister-pass-id"]
${confirmaSenha}                xpath://*[@id="styledlogintextfield-sidebarregister-confirmpass-id"]
${ciarConta}                    xpath://*[@id="styledloginbutton-sidebarregister-create-id"]
${termoAdesao}                  xpath://*[@id="agree-button-user-login-form-id"]
${termoAdesaoNao}               xpath://*[@id="disagree-button-user-login-form-id"]/a
${adicionarVeiculo}             id=menu-menuTitleVehicle
${adicionar}                    xpath://*[@id="restrictsubmitform-header-add-id"]
${abrirCadastro}                xpath://*[@id="panel1bh-header"]/div/div[2]/div[2]/div[2]
${salvarVeiculo}                xpath://*[@id="__next"]/div/div[2]/main/div/div/div/div/div/div/form/button
${placa}                        xpath://*[@id="__next"]/div/div[2]/main/div/div/div/div/div/div/form/input
${popUpSalvar}                  xpath://div[@role='presentation']/div[@role='none presentation']/div[@role='dialog']//button[.='Salvar']
${div2}                         xpath://*[@id="__next"]/div/div[2]/main/div/div/form/main/div[1]
${meuPerfil}                    xpath://*[@id="menu-menuTitleClientProfile"]
${meuPerfilNoMobile}            xpath://div[@role='presentation']/div[3]/div[@class='CustomDiv-sc-1v617p5-0 gbBIIo']/nav[1]/div[2]/div[@class='RestrictMenuMobile__StyledDiv-sc-iga7pb-7 yTibd']
${menuAreaRestritaMobile}       xpath://*[@id="__next"]/div[2]/div[2]/div/header/div/div[2]/button
${menuAreaRestritaMobileDiv}       css=[d='M1\.01597 4\.30847H25\.1588C25\.6717 4\.30847 26\.0874 3\.90275 26\.0874 3\.40222V1\.1366C26\.0874 0\.636063 25\.6717 0\.230347 25\.1588 0\.230347H1\.01597C0\.503112 0\.230347 0\.0874023 0\.636063 0\.0874023 1\.1366V3\.40222C0\.0874023 3\.90275 0\.503112 4\.30847 1\.01597 4\.30847ZM1\.01597 13\.371H25\.1588C25\.6717 13\.371 26\.0874 12\.9653 26\.0874 12\.4647V10\.1991C26\.0874 9\.69856 25\.6717 9\.29285 25\.1588 9\.29285H1\.01597C0\.503112 9\.29285 0\.0874023 9\.69856 0\.0874023 10\.1991V12\.4647C0\.0874023 12\.9653 0\.503112 13\.371 1\.01597 13\.371ZM1\.01597 22\.4335H25\.1588C25\.6717 22\.4335 26\.0874 22\.0278 26\.0874 21\.5272V19\.2616C26\.0874 18\.7611 25\.6717 18\.3553 25\.1588 18\.3553H1\.01597C0\.503112 18\.3553 0\.0874023 18\.7611 0\.0874023 19\.2616V21\.5272C0\.0874023 22\.0278 0\.503112 22\.4335 1\.01597 22\.4335Z']
${menuVeiculosMobile}           xpath:/html/body/div[4]/div[3]/div[2]/nav[1]/div[3]



*** Keywords ***
Clicar em Ainda não possui conta
    Click Element    ${naoPossuiConta}

Informar Email, senha e confirmação de senha
    Gerar dados Faker
    ${emailFormatado}      Catenate        SEPARATOR=      ${wordFaker}        ${DOMINIO}
    Input Text             ${email}              ${emailFormatado}
    Input Text             ${senha}              ${SENHA_MOTORISTA}
    Input Text             ${confirmaSenha}      ${SENHA_MOTORISTA}
    Set Global Variable    ${EMAIL_MOTORISTA}    ${emailFormatado}
    Click Element          ${ciarConta}
    Log To Console         ${EMAIL_MOTORISTA}

Informar nome e celular
    Gerar dados Faker
    Input Text       ${nome}          ${nomeFaker}
    Input Text       ${celular}       ${CELULAR_MOTORISTA}

Aceitar o Termo de adesão TiketLog
    Click Element    ${termoAdesao}

Não Aceitar o Termo de adesão TiketLog
    Click Element    ${termoAdesaoNao}

Realizar o cadastro do Motorista
    Gerar dados Faker
    Run Keyword If  ${MOBILE_DESKTOP} == 1       Clicar menu area restrita no mobile
    Run Keyword If  ${MOBILE_DESKTOP} == 1       Clicar em Meu Perfil no Mobile
    ...                 ELSE
    ...                 Clicar em Meu Perfil no Desktop

    Input Text       ${cpf}           ${cpfFaker}
    Input Text       ${cep}           ${cepFaker}
    Input Text       ${uf}            ${ufFaker}
    Input Text       ${cidade}        ${cidadeFaker}
    Input Text       ${bairro}        ${bairroFaker}
    Input Text       ${logradouro}    ${logradouroFaker}
    Run Keyword If   ${MOBILE_DESKTOP} == 1       Clicar em Salvar no Mobile
    ...                 ELSE
    ...                 Clicar em Salvar no Desktop

Clicar menu area restrita no mobile
    Wait Until Element is Visible    ${menuAreaRestritaMobile}
    Click Element    ${menuAreaRestritaMobile}

Clicar em Meu Perfil no Mobile
    Wait Until Element is Visible    ${meuPerfilNoMobile}
    Click Element    ${meuPerfilNoMobile}

Clicar em Meu Perfil no Desktop
    Click Element    ${meuPerfil}

Clicar em Salvar no Desktop
    Scroll Element Into View    ${div2}
    Click Element    ${salvar}

Clicar em Salvar no Mobile
    Scroll Element Into View    ${salvarMobileDiv}
    Click Element    ${salvarMobile}
    Wait Until Element is Visible    ${menuAreaRestritaMobileDiv}
    Click Element    ${menuAreaRestritaMobileDiv}


Cadastrar Veículo
    Run Keyword If   ${MOBILE_DESKTOP} == 1       Clicar no item de menu Veiculo no Mobile
    ...                 ELSE
    ...                 Clicar no item de menu Veiculo no Desktop

    Click Element   ${placa}
    Input Text      ${placa}              ${PLACA_GERADA}
    Click Element   ${salvarVeiculo}


Clicar no item de menu Veiculo no Mobile
    Wait Until Element is Visible    ${menuVeiculosMobile}
    Click Element   ${menuVeiculosMobile}

Clicar no item de menu Veiculo no Desktop
    Wait Until Element is Visible    ${adicionarVeiculo}
    Click Element   ${adicionarVeiculo}
