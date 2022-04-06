*** Settings ***
Library     SeleniumLibrary
Library     String
Library     DatabaseLibrary
Resource    ../components/FakerComponent.robot
Resource    ../config/ConfiguraçãoTesteComponent.robot

*** Variables ***
${establishments}               xpath://*[@id="root"]/div[2]/div/div/ul/div[1]/li/div/a
${adicionar}                    css=.MuiFab-label [focusable]
${fantasyName}                  xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[1]/div/div[1]/div/div/input
${corporateName}                xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[1]/div/div[2]/div/div/input
${cnpj}                         xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[1]/div/div[3]/div/div/input
${establishmentType}            xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[1]/div/div[4]/div/div/select
${tipoEstabelecEscolhido}       xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[1]/div/div[4]/div/div/select/option[@value="${TIPO_DE_ESTABELECIMENTO}"]
${elegibleYes}                  xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[1]/div/div[7]/div/fieldset/div/label[1]/span[1]/span[1]/input
${zipCode}                      xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[3]/div/div[2]/div/div/input
${country}                      xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[3]/div/div[4]/div/div/input
${city}                         xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[3]/div/div[5]/div/div/input
${neighborhood}                 xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[3]/div/div[6]/div/div/input
${street}                       xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[3]/div/div[7]/div/div/input
${number}                       xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[3]/div/div[8]/div/div/input
${salvarCadastro}               xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[7]/div/div[2]/button
${latitude}                     xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[3]/div/div[10]/div/div/input
${longitude}                    xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[3]/div/div[11]/div/div/input
${location}                     xpath://*[@id="react-select-3-input"]
${ownerNome}                    xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[5]/div/div[1]/div/div/input
${ownerEmail}                   xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[5]/div/div[2]/div/div/input
${ownerFone}                    xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[5]/div/div[3]/div/div/input
${ownerRg}                      xpath://*[@id="root"]/div[2]/main/div[1]/div/form/div/div[5]/div/div[4]/div[1]/div/div/input

*** Keywords ***
Acessar Establishments
    Click Element    ${establishments}

Acessar Adicionar
    Click Element    ${adicionar}

Preencher dados validar e salvar
    Gerar dados Faker
    ${emailFormatado}      Catenate        SEPARATOR=      ${wordFaker}        ${DOMINIO}
    ${nomeECFormatado}     Catenate        SEPARATOR=      Estabelecimento Comercial/         ${nomeFaker}
    ${cnpjFormatado}       Catenate        SEPARATOR=      ${cnpjFaker}        4
    Input Text             ${fantasyName}                  ${nomeECFormatado}
    Set Global Variable    ${nomeECFormatado}
    Input Text             ${corporateName}                ${nomeFaker}
    Input Text             ${cnpj}                         ${cnpjFormatado}
    Log To Console         ${cnpjFormatado}
    Log To Console         ${nomeECFormatado}
    Set Global Variable    ${cnpjFormatado}
    Click Element          ${EstablishmentType}
    Click Element          ${tipo_Estabelec_escolhido}
    Press Keys             None     ESC
    Click Element          ${elegibleYes}
    Input Text             ${location}          ${LOCALIZACAO}
    Press Keys             None                 ENTER
    Press Keys             None                 TAB
    Input Text             ${number}            ${NUM_ENDEREÇO}
    Input Text             ${ownerNome}    ${nomeFaker}
    Input Text             ${ownerEmail}   ${emailFormatado}
    Input Text             ${ownerFone}    ${CELULAR_EC} 
    Input Text             ${ownerRg}      ${rgFaker}
    Click Element          ${salvarCadastro}
