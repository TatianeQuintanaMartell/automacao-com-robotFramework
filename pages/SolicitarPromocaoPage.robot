*** Settings ***
Library     SeleniumLibrary
Library     String
Resource    ../config/ConfiguraçãoTesteComponent.robot
Resource    ../config/ConfiguraçãoUsuáriosComponent.robot

Resource    ../components/FakerComponent.robot

*** Variables ***
${buttonPromocao}                   xpath://*[@id="__next"]/div/div[3]/div/div[2]/div/div[2]/label
${localiza}                         xpath://*[@id="react-select-3-input"]
${categoria}                        xpath://*[@id="__next"]/div/div[4]/div[2]/div[1]/div/div/div/div[2]/div/div[1]/div/div[1]/div[1]
${TipoPromo}                        xpath://*[@id="__next"]/div/div[4]/div[2]/div[1]/div/div/div/div[3]/div/div[1]/div
${aproveitar}                       xpath://*[@id="search-promotions-card-887-joybutton-promotion-button-id"]
${TipoRevisaoBasica}                xpath:///span[contains(text(),'Revisão básica')]
${TipoRevisaoPremiun}               xpath://span[contains(text(),'Revisão premium')]
${ServicoDiagnostico}               xpath://*[@id="__next"]/div/div[4]/div[2]/div[1]/div/div/div/div[3]/div/div[2]/div[2]/div[1]
${SelecaoPromoRevisao}              xpath://*[@id="search-promotions-card-887-joybutton-promotion-button-id"]
${SelecaoPromoGeral}                xpath://*[@id="search-promotions-card-885-joybutton-promotion-button-id"]
${SelecaoPromoDiagnostico}          xpath://*[@id="search-promotions-card-886-joybutton-promotion-button-id"]
${SelecaoPromoOutros}               xpath://*[@id="search-promotions-card-888-joybutton-promotion-button-id"]
${DescriçãoRevisao}                 xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[2]/div/textarea[1]
${DescriçãoGeral}                   xpath://body/div[4]/div[3]/div[1]/div[1]/form[1]/div[3]/div[1]/div[1]/textarea[1]
${ButtonAvancar}                    xpath://*[@id="buttonNext"]
${PlacaVeiculo}                     xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[2]/div[1]/input
${PlacaVeiculoGeral}                xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[2]/div[2]/div[1]/input
${MarcaVeiculo}                     xpath://*[@id="mui-component-select-brandId"]
${SelecaoMarca}                     xpath://*[@id="menu-brandId"]/div[3]/ul/li[25]
${ModeloVeiculo}                    xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[3]/div[1]/input
${ModeloVeiculoGeral}               xpath://body/div[4]/div[3]/div[1]/div[1]/form[1]/div[3]/div[2]/div[3]/div[1]/input[1]
${MotorVeiculo}                     xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[3]/div[2]/input
${MotorVeiculoGeral}                xpath://body/div[4]/div[3]/div[1]/div[1]/form[1]/div[3]/div[2]/div[3]/div[2]/input[1]
${logarComEmailMotorista}           xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[3]/div[2]/input
${logarComEmailMotoristaGeral}      xpath://body/div[4]/div[3]/div[1]/div[1]/form[1]/div[3]/div[3]/div[3]/div[2]/input[1]
${JaTenhoConta}                     xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[2]/label[2]/span[1]/span[1]/input
${JaTenhoContaGeral}                xpath://body/div[4]/div[3]/div[1]/div[1]/form[1]/div[3]/div[3]/div[2]/label[2]/span[1]/span[1]/input[1]
${SouNovoMotorista}                 xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[2]/label[1]/span[2]/div
${SouNovoMotoristaGeral}            xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[2]/label[1]/span[1]/span[1]/input
${UploadPromocao}                   xpath:/html//div[@role='presentation']/div[3]//form//input[@type='file']
${logarComSenhaMotorista}           xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[3]/div[3]/input

${ButtonEnviar}                     xpath:/html/body/div[4]/div[3]/div/div/form/div/div[6]/button/a
${ClicarAqui}                       xpath:/html/body/div[4]/div[3]/div/div/div[5]/div[2]/label/label[2]
${SairMotorista}                    xpath://*[@id="menu-menuTitleLogout"]/h1
${NomeMotoristaRevisao}             xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[3]/div[2]/input
${EmailMotoristaRevisao}            xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[3]/div[3]/input
${TelMotoristaRevisao}              xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[3]/div[4]/input
${SenhaMotoristaRevisao}            xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[3]/div[5]/input
${ConfirmeSenhaRevisao}             xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[3]/div[6]/input
${NomeMotoristaGeral}               xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[3]/div[2]/input
${EmailMotoristaGeral}              xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[3]/div[3]/input
${TelMotoristaGeral}                xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[3]/div[4]/input
${SenhaMotoristaGeral}              xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[3]/div[5]/input
${ConfirmeSenhaGeral}               xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[3]/div[6]/input
${AceitarPolicticaGeral}            xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[3]/div[3]/div[7]/span/span[1]/input
${AceitarPolitica}                  xpath:/html/body/div[4]/div[3]/div/div/form/div[3]/div[4]/div[3]/div[7]/span/span[1]/input
${FacaSeuLogin}                     xpath://*[@id="__next"]/div/div[3]/div/div[2]/div/div[4]/div[1]/label
${SouClienteMotorista}              xpath://*[@id="im-client-button-id"]
${EmailLoginMotorista}              xpath://*[@id="login-form-email-input-id"]
${SenhaLoginMotorista}              xpath://*[@id="login-form-pass-input-id"]
${logarComSenhaMotoristaGeral}      xpath://body/div[4]/div[3]/div[1]/div[1]/form[1]/div[3]/div[3]/div[3]/div[3]/input[1]
${AcessarContaMotorista}            xpath://*[@id="login-form-login-button-id"]
${MenuHome}                         xpath://*[@id="menu-menuTitleHome"]/h1
${MeuVeículo}                       xpath://*[@id="mui-component-select-vehicle"]
${SelecaoVeiculo}                   xpath://*[@id="menu-vehicle"]/div[3]/ul/li[22]

*** Keywords ***
Clicar no meu faça seu login
    Click Element   ${FacaSeuLogin}
    Click Element   ${FacaSeuLogin}

Clicar em sou motorista preender campo email, senha e acessar conta
    Click Element   ${SouClienteMotorista}
    Input Text      ${EmailLoginMotorista}     ${EMAIL_MOTORISTA}
    Input Text      ${SenhaLoginMotorista}     ${SENHA_MOTORISTA}
    Click Element   ${AcessarContaMotorista}

Clicar no menu home
    Click Element   ${MenuHome}

Acessar na Home Promoção
    Click Element   ${buttonPromocao}

Selecionar no filtro localização e serviço revisão
    Preencher localização
    Click Element   ${TipoPromo}
    Press Keys      ${TipoPromo}     ARROW_DOWN
    Press Keys  None     ARROW_DOWN
    Press Keys  None     ARROW_DOWN
    Press Keys  None     ENTER

Selecionar no filtro localização e serviço Verificação Geral
    Preencher localização
    Click Element   ${TipoPromo}
    Press Keys  None     ENTER

Selecionar no filtro localização e serviço Diagnóstico de Leitura de Defeito por Scanner
    Preencher localização
    Click Element   ${TipoPromo}
    Press Keys  None     ARROW_DOWN
    Press Keys  None     ENTER

Selecionar no filtro localização e serviço Outros
    Preencher localização
    Click Element      ${TipoPromo}
    Press Keys  None     ARROW_DOWN
    Press Keys  None     ARROW_DOWN
    Press Keys  None     ARROW_DOWN
    Press Keys  None     ENTER

Clicar em aproveitar a promoção revisão
    Click Element   ${SelecaoPromoRevisao}

Clicar em aproveitar a promoção verificação geral
    Click Element   ${SelecaoPromoGeral}

Clicar em aproveitar a promoção Diagnóstico de Leitura de Defeito por Scanner
    Click Element   ${SelecaoPromoDiagnostico}

Clicar em aproveitar a promoção Outros
    Click Element   ${SelecaoPromoOutros}

Informar tipo de promoção, descrição e avançar
    Click Element   ${TipoRevisaoPremiun}
    input Text      ${DescriçãoRevisao}     ${DETALHE_SOLICITAÇÃO}
    Clicar em Avançar

Informar descrição e avançar
    input Text      ${DescriçãoGeral}     ${DETALHE_SOLICITAÇÃO}
    Clicar em Avançar

Selecione um veículo na lista
    Click Element   ${MeuVeículo}
    Click Element   ${SelecaoVeiculo}

Informar Marca, Modelo e a Motorização
    Wait Until Element is Visible    ${PlacaVeiculo}
    Input Text    ${PlacaVeiculo}    ${PLACA_GERADA}

Informar Marca, Modelo e a Motorização Geral
    Input Text    ${PlacaVeiculoGeral}    ${PLACA_GERADA}

Clicar em Avançar
    Click Element    ${ButtonAvancar}

Selecionar possuo conta
    Click Element   ${JaTenhoConta}

Selecionar possuo conta geral
    Click Element   ${JaTenhoContaGeral}

Preencher login e senha
    Input Text       ${logarComEmailMotorista}   ${EMAIL_MOTORISTA}
    Input Text       ${logarComSenhaMotorista}   ${SENHA_MOTORISTA}

Preencher login e senha promo geral
    Input Text       ${logarComEmailMotoristaGeral}    ${EMAIL_MOTORISTA}
    Input Text       ${logarComSenhaMotoristaGeral}    ${SENHA_MOTORISTA}

Selecionar sou novo motorista
    Click Element   ${SouNovoMotorista}

Selecionar sou novo motorista geral
    Click Element   ${SouNovoMotoristaGeral}

Preencher nome,email,telefone,senha,confirme sua senha
    Gerar dados Faker
    Input Text       ${NomeMotoristaRevisao}     ${nomeFaker}
    Input Text       ${EmailMotoristaRevisao}    ${emailFaker}
    Input Text       ${TelMotoristaRevisao}      ${telefoneFaker}
    Input Text       ${SenhaMotoristaRevisao}    ${SENHA_MOTORISTA}
    Input Text       ${ConfirmeSenhaRevisao}     ${SENHA_MOTORISTA}

Preencher nome,email,telefone,senha,confirme sua senha geral
    Gerar dados Faker
    Input Text       ${NomeMotoristaGeral}      ${nomeFaker}
    Input Text       ${EmailMotoristaGeral}     ${emailFaker}
    Input Text       ${TelMotoristaGeral}       ${telefoneFaker}
    Input Text       ${SenhaMotoristaGeral}     ${SENHA_MOTORISTA}
    Input Text       ${ConfirmeSenhaGeral}      ${SENHA_MOTORISTA}

Clicar em aceito a polícica de privacidade
    Click Element   ${AceitarPolitica}

Clicar em aceito a polícica de privacidade geral
    Click Element   ${AceitarPolicticaGeral}

Selecionar uma foto para upload
    Choose File                ${UploadPromocao}        ${UPLOAD_PATH}

Informar quando deseja iniciar o serviço
    Wait Until Element is Visible    ${IniciarServico}
    Click Element                    ${IniciarServico}
    Click Element                    ${IniciarServico}

Clicar em enviar
    Click Element   ${ButtonEnviar}

Clicar no clique aqui
    Click Element   ${ClicarAqui}

Em Minhas Manutenções clicar em sair
    Click Element   ${SairMotorista}

Preencher localização
    Click Element    ${localiza}
    Input Text       ${localiza}    ${LOCALIZACAO}
    Press Keys  None     ENTER
