*** Settings ***
Library     SeleniumLibrary
Resource    ../config/ConfiguraçãoUsuáriosComponent.robot
Resource    ../config/ConfiguraçãoTesteComponent.robot
Resource    ../components/FakerComponent.robot

*** Variables ***
${usuarioBackoffice}        xpath://*[@id="root"]/form/div/div/div[3]/div/input
${passwordBackoffice}       xpath://*[@id="root"]/form/div/div/div[4]/div/input
${botaoAcesseSuaConta}      xpath://*[@id="root"]/form/div/div/div[5]/div/button
${acessarMenu}              xpath://*[@id="Capa_1"]
${homeManagement}           xpath://*[@id="root"]/div[2]/div/div/ul/div[2]/li/button/span[1]
${pricing}                  xpath://*[@id="root"]/div[2]/div/div/ul/div[2]/div/div/div/ul/div[8]/li/div/a/span[1]
${promotionName}            name=name
${startDate}                xpath://*[@id="root"]/div[2]/main/div[1]/form/div[1]/div[1]/div[3]/div[1]/div[2]/div/div/input
${endDate}                  xpath://*[@id="root"]/div[2]/main/div[1]/form/div[1]/div[1]/div[3]/div[2]/div[2]/div/div/input
${vehicleCategory}          xpath:/html//div[@id='mui-component-select-vehicleTypeCategoriesList']
${categoriaDoVeiculo}       xpath://div[@id='menu-vehicleTypeCategoriesList']//ul[@role='listbox']/li[${CATEGORIA_VEICULO}]
${categoriaPasseio}         xpath://div[@id='menu-vehicleTypeCategoriesList']//ul[@role='listbox']/li[2]
${categoriaVan}             xpath://div[@id='menu-vehicleTypeCategoriesList']//ul[@role='listbox']/li[4]
${categoriaPickup}          xpath://div[@id='menu-vehicleTypeCategoriesList']//ul[@role='listbox']/li[3]
${listOfBrands}             xpath:/html//div[@id='mui-component-select-carmakersList']
${listBrands}               xpath://div[@id='menu-carmakersList']//ul[@role='listbox']/li[${MARCA_MONTADORA}]
${promotionValue}           css=[name='averageValue']
${valueForPerson}           css=[name='personValue']
${valueForAppDrivers}       css=[name='companyValue']
${promotionDescription}     xpath:/html//div[@id='root']/div[2]//form//textarea[@name='description']
${uploadPhoto}              id=contained-button-file
${explainingPromotion}      css=textarea[name='explanation']
${caminho}                  xpath:/html//div[@id='root']/div[2]//form//a[@href='blob:http://portaloficinas-backoffice.qa.zallpylabs.com/acc37cda-6aed-4bdf-a5d3-d6bc0d717cad']
${city}                     xpath:/html//div[@id='root']/div[2]/main/div[1]/form//div[@role='radiogroup']/div[1]/div/div[2]/div/div/div/div[1]/div[.='Enter the name of the city.']
${creatPromotion}           xpath://*[@id="root"]/div[2]/main/div[1]/form/div[2]/button[${PROMO_CREATE_DRAFT}]
${publicoAlvo}              xpath://*[@id="root"]/div[2]/main/div[1]/form/div[1]/div[1]/div[7]/div[${PUBLICO_ALVO_PROMOÇÃO}]/label/span[1]/span[1]/input
${layoutPerson}             xpath://*[@id="root"]/div[2]/main/div[1]/form/div[1]/div[2]/div/div/div/div[1]/button[1]
${layoutCompany}            xpath://*[@id="root"]/div[2]/main/div[1]/form/div[1]/div[2]/div/div/div/div[1]/button[2]
${internalObs}              css=textarea[name='internalObservation']
${ecEspecificoPromo}        xpath://*[@id="root"]/div[2]/main/div[1]/form/div[1]/div[1]/div[10]/div[5]/div[2]/div[2]/label/span[1]/span[1]/input
${nomeCnpjEc}               xpath://*[@id="root"]/div[2]/main/div[1]/form/div[1]/div[1]/div[10]/div[5]/div[2]/div[2]/div[2]/div/input
${checkAll}                 xpath://*[@id="root"]/div[2]/main/div[1]/form/div[1]/div[1]/div[10]/div[5]/div[2]/div[2]/div[2]/div[3]/div/label[1]/span[1]/span[1]/input
${abreOpções}               xpath://*[@id="root"]/div[2]/main/div[1]/form/div[1]/div[1]/div[10]/div[5]/div[2]/div[2]/div[2]/div[1]/div[2]
${serviceOptions}           xpath://*[@id="mui-component-select-serviceTypesList"]
${serviceSelect}            xpath://*[@id="menu-serviceTypesList"]/div[3]/ul/li[${SERVICOS}]

*** Keywords ***
Acessar sistema com usuário e senha
    Input Text      ${usuarioBackoffice}    ${EMAIL_BACKOFFICE}
    Input Text      ${passwordBackoffice}   ${SENHA_BACKOFFICE}
    Wait Until Element Is Visible       ${botaoAcesseSuaConta}
    Click Element   ${botaoAcesseSuaConta}

Acessar Menu
    Click Element    ${acessarMenu}

Acessar Home Management
    Click Element    ${homeManagement}

Acessar Pricing
    Wait Until Element Is Visible       ${pricing}
    Scroll Element Into View            ${pricing}
    Click Element                       ${pricing}

Preencher campos da Nova Promoção
    Gerar dados Faker
    Wait Until Element is Visible    ${promotionName}
    Click Element                    ${promotionName}
    ${promoçãoFormatada}         Catenate        SEPARATOR=      ${wordFaker}        ${DETALHE_PROMOÇÃO}
    Input Text                       ${promotionName}    ${DETALHE_PROMOÇÃO}
    Selecionar Serviço
    Input Text                    ${startDate}      ${DATA_INICIAL}
    Input Text                    ${endDate}        ${DATA_FINAL}
    Click Element                 ${vehicleCategory}

    Run Keyword If      ${CATEGORIA_VEICULO} == 1      Selecionar todas as Categorias
    ...                 ELSE
    ...                 Selecionar Categoria Específica

    Press Keys  None     TAB
    Click Element                    ${listOfBrands}
    Click Element                    ${listBrands}
    Press Keys  None     TAB
    Input Text                       ${promotionValue}          ${valorFaker}
    Click Element                    ${publicoAlvo}

    Run Keyword If  ${PUBLICO_ALVO_PROMOÇÃO} == 1       Informar valor de cpf
    ...             ELSE IF
    ...             ${PUBLICO_ALVO_PROMOÇÃO} == 2       Informar valor de cnpj
    ...             ELSE IF
    ...             ${PUBLICO_ALVO_PROMOÇÃO} == 3       Informar valor para cpf e cnpj

Preencher Localização
    Wait Until Element is Visible    ${city}
    Click Element                    ${city}
    Press Keys  None                 ${LOCALIZACAO}
    Press Keys  None     ENTER
    Press Keys  None     TAB

Escolher Estabelecimento Específico
    Click Element                    ${ecEspecificoPromo}

Preencher Nome do EC
    Wait Until Element is Visible    ${nomeCnpjEc}
    Input Text    ${nomeCnpjEc}      ${NOME_ESTABELECIMENTO}
    Click Element                    ${checkAll}
    Press Keys  None     ENTER
    Press Keys  None     TAB

Preencher CNPJ do EC
    Wait Until Element is Visible    ${nomeCnpjEc}
    Input Text    ${nomeCnpjEc}      ${CNPJ_EC}
    Click Element                    ${checkAll}
    Press Keys  None     ENTER
    Press Keys  None     TAB

Informar valor de cpf
    Input Text                       ${valueForPerson}     ${valor1Faker}
    Click Element                    ${layoutPerson}

Informar valor de cnpj
    Input Text                       ${valueForAppDrivers}         ${valor2Faker}
    Click Element                    ${layoutCompany}

Informar valor para cpf e cnpj
    Informar valor de cpf
    Informar valor de cnpj

Criar Promoção
    Gerar dados Faker
    Input Text                       ${promotionDescription}   ${textoFaker}
    Input Text                       ${internalObs}            ${INFO_COMPLEMENTAR}
    Choose File                      ${uploadPhoto}            ${UPLOAD_PATH}
    Input Text                       ${explainingPromotion}    ${textoFaker}
    Click Element                    ${creatPromotion}

Selecionar todas as Categorias
    Click Element       ${categoriaPasseio}
    Click Element       ${categoriaPickup}
    Click Element       ${categoriaVan}

Selecionar Categoria Específica
    Click Element       ${categoriaDoVeiculo}

Selecionar Serviço
    Click Element       ${serviceOptions}
    Click Element       ${serviceSelect}
    Press Keys  None     TAB
