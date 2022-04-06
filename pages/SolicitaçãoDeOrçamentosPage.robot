*** Settings ***
Library     SeleniumLibrary

Resource    ../config/ConfiguraçãoTesteComponent.robot
Resource    ../config/ConfiguraçãoUsuáriosComponent.robot
Resource    ../components/FakerComponent.robot

*** Variables ***
${ClicaremContinuarnovamente}     xpath://*[@id="buttonNext"]
${buttonSolicitarOrcamentos}      xpath://*[@id="__next"]/div/div[2]/div[2]/div[1]/label
${buttonServiço}                  xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/form/div[1]/div[2]/div

${serviçoOpções}                  xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/form/div[1]/div[3]/div/div/div/div/div/div/div[1]/div[2]/div

${serviçoAcessórios}              xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/form/div[1]/div[3]/div/div/div/div/div/div/div[2]/div[${SERVICOS}]/label/span[1]/span[1]/input


# xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div/div/div/div/div/div/div[2]/div[${SERVICOS}]/label

${localização}                    xpath://*[@id='react-select-2-input']
${detalheSuaSolicitação}          xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/form/div[1]/div[6]/textarea

${buttonContinuar}                xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/form/div[2]/button
${buttonContinuarEmVeiculo}                xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/div[2]/button

${naoInformarData}                xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/div[1]/div/div[2]/span/span[1]/input
${buttonAgendarServiço}           xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/div[2]/button


${marca}                          xpath:/html/body/div[4]/div[3]/div/div/form/div[7]/div[2]/div/div[2]
${inputMarca}                     xpath://*[@id="menu-brandId"]/div[3]/ul/li[13]
${modeloCar}                      xpath:/html/body/div[4]/div[3]/div/div/form/div[7]/div[3]/div[1]/input
${motorização}                    xpath:/html/body/div[4]/div[3]/div/div/form/div[7]/div[3]/div[2]/input
${jáTenhoConta}                   xpath:/html/body/div[4]/div[3]/div/div/form/div[8]/div[2]/label[2]/span[2]/div
${souNovo}                        xpath:/html/body/div[4]/div[3]/div/div/form/div[8]/div[2]/label[1]/span[2]/div
${login}                          xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/main/div/form/input[1]
${senha}                          xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/main/div/form/input[2]
${buttonEntrar}                   xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/main/div/form/div/button


${enviar}                         xpath:/html/body/div[4]/div[3]/div/div/div[3]/div[6]/button
${cliqueAqui}                     xpath:/html/body/div[4]/div[3]/div/div/div[3]/div[2]/label/label[2]
${finalizarSolicitação}           xpath://div[@id='menu-menuTitleLogout']/div/div
${nome}                           xpath:/html/body/div[4]/div[3]/div/div/form/div[8]/div[3]/div[2]/input
${emailNovoMotorista}             xpath:/html/body/div[4]/div[3]/div/div/form/div[8]/div[3]/div[3]/input
${telefone}                       xpath:/html/body/div[4]/div[3]/div/div/form/div[8]/div[3]/div[4]/input
${senhaNovoMotorista}             xpath:/html/body/div[4]/div[3]/div/div/form/div[8]/div[3]/div[5]/input
${confirmeSuaSenha}               xpath:/html/body/div[4]/div[3]/div/div/form/div[8]/div[3]/div[6]/input
${politicaProvacidade}            xpath:/html/body/div[4]/div[3]/div/div/form/div[8]/div[3]/div[7]/span/span[1]/input
${façaSeuLogin}                   xpath://*[@id="__next"]/div/div[2]/div[2]/div[3]/div[1]/label
${souCliente}                     xpath://*[@id="im-client-button-id"]
${logarComEmail}                  xpath://*[@id="login-form-email-input-id"]
${logarComSenha}                  xpath://*[@id="login-form-pass-input-id"]
${acessarConta}                   xpath:/html//button[@id='login-form-login-button-id']
${home}                           xpath://div[@id='menu-menuTitleHome']/h1[.='Página inicial']
${homeMobile}                     css=[d='M1\.01597 4\.30847H25\.1588C25\.6717 4\.30847 26\.0874 3\.90275 26\.0874 3\.40222V1\.1366C26\.0874 0\.636063 25\.6717 0\.230347 25\.1588 0\.230347H1\.01597C0\.503112 0\.230347 0\.0874023 0\.636063 0\.0874023 1\.1366V3\.40222C0\.0874023 3\.90275 0\.503112 4\.30847 1\.01597 4\.30847ZM1\.01597 13\.371H25\.1588C25\.6717 13\.371 26\.0874 12\.9653 26\.0874 12\.4647V10\.1991C26\.0874 9\.69856 25\.6717 9\.29285 25\.1588 9\.29285H1\.01597C0\.503112 9\.29285 0\.0874023 9\.69856 0\.0874023 10\.1991V12\.4647C0\.0874023 12\.9653 0\.503112 13\.371 1\.01597 13\.371ZM1\.01597 22\.4335H25\.1588C25\.6717 22\.4335 26\.0874 22\.0278 26\.0874 21\.5272V19\.2616C26\.0874 18\.7611 25\.6717 18\.3553 25\.1588 18\.3553H1\.01597C0\.503112 18\.3553 0\.0874023 18\.7611 0\.0874023 19\.2616V21\.5272C0\.0874023 22\.0278 0\.503112 22\.4335 1\.01597 22\.4335Z']

${veiculo}                        xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/div[1]/div[3]/div[1]/div/div/div[2]/div/div/div/div
${buttonContinuar}                xpath:/html/body/div[5]/div[3]/div[4]/div/div[2]/div[2]/button

${veiculoSelecionado}             xpath://*[@id="menu-vehicle"]/div[3]/ul/li[2]
${agendamento}                    xpath://div[@id='menu-menuTitleMySchedules']/h1[.='Manutenções']
${minhasManutenções}              xpath://div[@id='menu-submenuTitleFollowSchedule']/h1[.='Minhas manutenções']
${aceitarCookies}                 xpath:/html/body/div[1]/div[2]/div[4]/div[2]/div/button
${placa}                          xpath:/html/body/div[@role='presentation']/div[3]//form//input[@name='plate']
${façaSeuLoginMobile}             xpath://*[@id="__next"]/div/header/div/div[2]/div/button

${souClienteMobile}               xpath://*[@id="im-driver-button-id"]/span/div

*** Keywords ***
Acessar na Home Solicitar orcamentos
    Click Element       ${buttonSolicitarOrcamentos}
    Click Element       ${buttonSolicitarOrcamentos}

Informar Serviço, Localização, Descrição
    Selecionar serviço
    Preencher localização
    Preencher detalhe sua Solicitação
    Clicar em Continuar
    Click Element      ${naoInformarData}
    Click Element      ${buttonAgendarServiço}

Selecionar serviço
    Click Element      ${buttonServiço}
    Click Element      ${serviçoOpções}
    Click Element      ${serviçoAcessórios}

Preencher localização
    Click Element    ${localização}
    Input Text       ${localização}    ${LOCALIZACAO}
    Press Keys  None     ENTER
    Press Keys  None     TAB

Clicar em Continuar
    Click Element    ${buttonContinuar}

Informar Placa
    Input Text      ${placa}       ${PLACA_GERADA}

Informar Marca, Modelo, Motorização
    Selecionar a marca
    Preencher modelo
    Preencher motorização

Informar Veículo
    Informar seu veiculo
    # Clicar em Continuar

Informar seu veiculo
    Click Element    ${veiculo}
    Click Element    ${buttonContinuarEmVeiculo}

Selecionar a marca
    Click Element    ${marca}
    Click Element    ${inputMarca}

Preencher modelo
    Wait Until Element is Visible    ${modeloCar}
    Input Text       ${modeloCar}    ${MODELO}

Preencher motorização
    Wait Until Element is Visible    ${motorização}
    Input Text       ${motorização}   ${MOTORIZACAO}

# Selecionar já tenho conta
#     Wait Until Element is Visible    ${jáTenhoConta}
#     Click Element    ${jáTenhoConta}

Preencher login e senha
    Click Element    ${login}
    Input Text       ${login}   ${EMAIL_MOTORISTA}
    Click Element    ${senha}
    Input Text       ${senha}   ${SENHA_MOTORISTA}
    Click Element    ${buttonEntrar}


Acessar a conta com Email e Senha
    Click Element    ${logarComEmail}
    Input Text       ${logarComEmail}   ${EMAIL_MOTORISTA}
    Click Element    ${logarComSenha}
    Input Text       ${logarComSenha}   ${SENHA_MOTORISTA}
    Clicar em Acessar a Conta

Clicar em Continuar novamente
    Click Element    ${ClicaremContinuarnovamente}

Clicar em enviar
    Click Element    ${enviar}

Clicar no clique aqui
    Click Element    ${cliqueAqui}

Em Minhas Manutenções clicar em sair
    Wait Until Element is Visible    ${finalizarSolicitação}
    Click Element                    ${finalizarSolicitação}

Selecionar sou novo
    Click Element    ${souNovo}

Preencher nome,email,telefone,senha,confirme sua senha
    Gerar dados Faker
    ${emailFormatado}          Catenate        SEPARATOR=      ${wordFaker}        ${DOMINIO}
    Input Text             ${nome}                ${nomeFaker}
    Input Text             ${emailNovoMotorista}  ${emailFormatado}
    Set Global Variable    ${EMAIL_MOTORISTA}     ${emailFormatado}
    Input Text             ${telefone}            ${telefoneFaker}
    Input Text             ${senhaNovoMotorista}  ${SENHA_MOTORISTA}
    Input Text             ${confirmeSuaSenha}    ${SENHA_MOTORISTA}
    Set Global Variable    ${SENHA_MOTORISTA}

Preencher detalhe sua Solicitação
    Click Element    ${detalheSuaSolicitação}
    Input Text       ${detalheSuaSolicitação}   ${DETALHE_SOLICITAÇÃO}

Clicar em aceito a polícica de privacidade
    Click Element    ${politicaProvacidade}

Selecionar Opção faça seu Login
    Wait Until Element is Visible    ${façaSeuLogin}
    Click Element                    ${façaSeuLogin}

Acessar na pagina inicial Home Faça seu login
    ${STATUS}  Run keyword and Return Status        Verificação se há Cookies
    Run keyword if  ${STATUS}                       Clicar no Cookies
    Run Keyword If  ${MOBILE_DESKTOP} == 1       Clicar Faça seu Login para Mobile
    ...                 ELSE
    ...                 Clicar Faça seu Login para Desktop

Clicar Faça seu Login para Desktop
    Wait Until Element is Visible    ${façaSeuLogin}
    Click Element                    ${façaSeuLogin}

Clicar Faça seu Login para Mobile
    Wait Until Element is Visible    ${façaSeuLoginMobile}
    Click Element                    ${façaSeuLoginMobile}

Verificação se há Cookies
    Wait Until Element is Visible    ${aceitarCookies}

Clicar no Cookies
    Click Element                    ${aceitarCookies}

Clicar em sou Cliente
    Run Keyword If  ${MOBILE_DESKTOP} == 1       Clicar sou cliente Mobile
    ...                 ELSE
    ...                 Clicar sou cliente Desktop

Clicar sou cliente Desktop
    Wait Until Element is Visible    ${souCliente}
    Click Element    ${souCliente}

Clicar sou cliente Mobile
    Wait Until Element is Visible    ${souClienteMobile}
    Click Element    ${souClienteMobile}

Clicar em Acessar a Conta
    Wait Until Element is Visible    ${acessarConta}
    Click Element    ${acessarConta}

Ir para Home
    Run Keyword If  ${MOBILE_DESKTOP} == 1       Ir para Home no Mobile
    ...                 ELSE
    ...                 Ir para Home no Desktop

Ir para Home no Desktop
    Wait Until Element is Visible    ${home}
    Click Element                    ${home}

Ir para Home no Mobile
    Wait Until Element is Visible    ${homeMobile}
    Click Element                    ${homeMobile}

Solicitar Orçamentos
  Click Element    ${buttonSolicitarOrcamentos}

Acessar Agendamentos
    Click Element    ${agendamento}
    Click Element    ${minhasManutenções}

Logar com Motorista e Solicitar Orçamentos
    Acessar na pagina inicial Home Faça seu login
    Clicar em sou Cliente
    Acessar a conta com Email e Senha
    Acessar Agendamentos
    Ir para Home
    Solicitar Orçamentos
    Informar Serviço, Localização, Descrição
    Informar Veículo
    Clicar em Continuar novamente
    Informar quando deseja iniciar o serviço
    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair
