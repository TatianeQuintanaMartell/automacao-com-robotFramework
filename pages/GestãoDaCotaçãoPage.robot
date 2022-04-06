*** Settings ***
Library     SeleniumLibrary
Library     String

Resource    ../config/ConfiguraçãoUsuáriosComponent.robot
Resource    ../config/ConfiguraçãoTesteComponent.robot
Resource    ../components/FakerComponent.robot

*** Variables ***
${façaSeuLogin}         xpath:/html//div[@id='__next']//div[@class='StyledComponents__StyledHeader-sc-1qo2khc-0 ejQUsY']/div/div[2]//div[@class='CustomDiv-sc-1v617p5-0 gMpJwE']/label[@class='TLogLabel-sc-3et8lx-0 jDrhjw']
${souOficina}           xpath:/html//label[@id='im-establishment-button-id']
${cnpj}                 xpath:/html/body/div[4]/div[3]/div/form/div/div[2]/input
${nomeEC}               xpath:/html/body/div[4]/div[3]/div/form/div/div[3]/input
${senhaEC}              xpath:/html/body/div[4]/div[3]/div/form/div/div[4]/input
${acessarContaEC}       id=access-your-account-button-id
${gestãoDeServico}      xpath://*[@id="menu-submenuTitlePendingScheduling"]
${servicosPendentes}    xpath://*[@id="__next"]/div/div[2]/div[3]/div/div/div[2]/ul/div[1]/div/a
${cookies}              xpath:/html/body/div[1]/div[2]/div[4]/div[2]/div/button
${responder}            xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div/div[3]/div[1]/button/a
${dataSugerida}         xpath:/html/body/div[4]/div[3]/div/div/div[2]/form/div/div[3]/div[3]/label[1]
${tempoDeEntrega}       xpath://*[@id="mui-component-select-timeToFinish"]
${tempoSelecionado}     xpath://*[@id="menu-timeToFinish"]/div[3]/ul/li[3]
${sairAreaEC}           xpath://*[@id="__next"]/div/div[2]/div[2]/div/div/nav[2]/div[2]
${fecharPopUp}          xpath://*[@id="__next"]/div[2]/div[2]/div/div[2]/button
${verRespostas}         xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[2]/div[4]/div/div
${agendarServico}       xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[3]/div/div/div/div/div[9]/button/a
${placaVeiculo}         xpath:/html/body/div[4]/div[3]/div/div/div[2]/form/div[3]/div[4]/input
${agendar}              xpath:/html/body/div[4]/div[3]/div/div/div[2]/form/div[3]/div[10]/div[2]/button
${labelSolicitacao}     xpath:/html//div[@role='presentation']/div[3]//form/div/label[4]
${sugerirData}          xpath:/html/body/div[@role='presentation']/div[3]/div//form/div/div[4]/div[@role='radiogroup']//label[@class='MuiFormControlLabel-root']/span[1]//input[@name='chosenDate']
${data}                 xpath:/html/body/div[4]/div[3]/div/div/div[2]/form/div/div[4]/div[2]/div[1]/div/div/input
${hora}                 xpath:/html/body/div[4]/div[3]/div/div/div[2]/form/div/div[4]/div[2]/div[2]/div/div[1]
${horaSelecionada}      xpath:/html/body/div[4]/div[3]/div/div/div[2]/form/div/div[4]/div[2]/div[2]/div/div[2]/div[2]/div[2]/div/div/div/div[2]/div/ul/li[37]
${inicioServiço}        xpath://*[@id="mui-component-select-timeToFinish"]
${inicioServiçoPrazo}   xpath://*[@id="menu-timeToFinish"]/div[3]/ul/li[8]
${responsavel}          xpath:/html/body/div[@role='presentation']/div[3]/div//form//input[@name='responsibleBudget']
${preço}                xpath:/html/body/div[@role='presentation']/div[3]//form/div/div[5]/div[@role='radiogroup']/label[1]/span[1]//input[@name='valueOption']
${valor}                xpath:/html/body/div[@role='presentation']/div[3]//form/div/div[5]/div[@role='radiogroup']//input[@name='priceInput']
${infoComplementar}     xpath:/html/body/div[@role='presentation']/div[3]//form//div[@class='CustomDiv-sc-1v617p5-0 dvEKaI']/textarea[@name='answer']
${confirmarRetorno}     xpath:/html/body/div[4]/div[3]/div/div/div[2]/form/div/div[6]/div[2]/div/div/div/div[1]/button/a
${modalPromo}           xpath:/html/body/div[4]/div[3]/div/div/div[3]/button
${orçamentos}           xpath://*[@id="__next"]/div/div[2]/div[2]/div/div/nav[1]/div[7]
${pendentes}            xpath://div[@id='menu-submenuTitlePendingScheduling']/h1[.='Pendentes']

*** Keywords ***
Logar como EC
    ${STATUS}  Run keyword and Return Status        Verificação se há Cookies
    Run keyword if  ${STATUS}                       Clicar no Cookies
    Wait Until Element is Visible    ${façaSeuLogin}
    Click Element    ${façaSeuLogin}
    Click Element    ${souOficina}
    Input Text       ${cnpj}        ${CNPJ_EC}
    Input Text       ${nomeEC}      ${NOME_ESTABELECIMENTO}
    Input Text       ${senhaEC}     ${SENHA_ESTABELECIMENTO}
    Click Element    ${acessarContaEC}

Verificação se há Cookies
    Wait Until Element is Visible    ${cookies}

Clicar no Cookies
    Click Element                    ${cookies}

Acessar Gestão de serviços Pendentes
    ${STATUS}  Run keyword and Return Status        Verificação se há Cookies
    Run keyword if    ${STATUS}                     Clicar no Cookies
    Click Element     ${gestãoDeServico}

Verificação se há Modal da Promo
    Wait Until Element is Visible    ${modalPromo}

Clicar para sair do Modal da Promo
    Click Element                    ${modalPromo}

Responder Solicitação
    ${STATUS}  Run keyword and Return Status        Verificação se há Modal da Promo
    Run keyword if   ${STATUS}                      Clicar para sair do Modal da Promo
    Click Element    ${orçamentos}
    Click Element    ${pendentes}
    Gerar dados Faker
    Click Element                    ${cookies}
    Wait Until Element is Visible    ${responder}
    Click Element                    ${responder}
    Click Element   ${sugerirData}
    Click Element   ${data}
    Press Keys  None     ENTER
    Press Keys  None     ENTER
    Click Element   ${preço}
    Press Keys  None     ESC
    Click Element   ${hora}
    Click Element   ${horaSelecionada}
    Click Element   ${inicioServiço}
    Click Element   ${inicioServiçoPrazo}
    Click Element   ${responsavel}
    Input Text      ${responsavel}  ${nomeFaker}
    Click Element   ${preço}
    Click Element   ${valor}
    Input Text      ${valor}        ${valorFaker}
    Click Element   ${infoComplementar}
    Input Text      ${infoComplementar}         ${INFO_COMPLEMENTAR}
    Click Element   ${confirmarRetorno}
    Click Element                    ${fecharPopUp}
    Wait Until Element is Visible    ${sairAreaEC}
    Double Click Element             ${sairAreaEC}

Verificar Resposta da Solicitação
    Click Element                    ${verRespostas}

Agendar Serviço
    Click Element    ${agendarServico}

Informar a Placa do Veículo
    Input Text    ${placaVeiculo}     ${PLACA_GERADA}

Confirmar o Agendamento do Serviço
    Click Element                    ${agendar}
    Click Element                    ${fecharPopUp}
    Wait Until Element is Visible    ${sairAreaEC}
    Double Click Element             ${sairAreaEC}
