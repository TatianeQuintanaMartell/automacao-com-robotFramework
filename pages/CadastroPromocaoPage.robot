*** Settings ***
Library     SeleniumLibrary
Library     Collections

Resource    ../components/FakerComponent.robot
Resource    ../config/ConfiguraçãoTesteComponent.robot

*** Variables ***
${menuPromoções}                          xpath://*[@id="menu-menuTitlePromotions"]
${criarPromocao}                          xpath:/html/body/div[3]/div/div[2]/div[2]/div/div/nav[1]/div[7]/div/h1

${verificaçãoGeral}                       xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div/button[1]
${seguinteButton}                         xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[2]/button
${listaMontadoras}                        xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/div/button
${selecionarMontadoras}                   xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/div/div[1]/div/div/div/div/label[${MARCA_MONTADORA}]/span[1]/span[1]/input
${listaCategoriasDeVeiculos}              xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/button
${selecionarCategoriasDeVeículos}         xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/div[1]/div/div/div/div/label[${CATEGORIA_VEICULO}]/span[1]/span[1]/input
${preçoPessoaFisica}                      xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/div/div[1]/input
${descontoPessoaFisica}                   xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/div/div[2]/input
${preçoAPP}                               xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[2]/div/div/div[1]/input
${descontoAPP}                            xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[2]/div/div/div[2]/input
${salvarVerificaçãoGeral}                 xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[3]/button
${tipoPessoaFisica}                       xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/div/div[2]/label/span[1]/span[1]/input
${topoEmpresasEMotoristasDeApp}           xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/div/div[3]/label/span[1]/span[1]/input
${preçoSomenteAPP}                        xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/div/div/div[1]/input
${descontoSomentePJ}                      xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[1]/div/div/div[2]/input

${diagnósticoDeDefeitoPorScanner}         xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div/button[2]

${promocionarRevisões}                    xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div/button[3]
${listaMotores}                           xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[2]/div/button
${selecionarMotores}                      xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[2]/div/div[1]/div/div/div/div/label[1]/span[1]/span[1]/input
${listaMotorização}                       xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[3]/div/button
${selecionarMotorização}                  xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div[3]/div/div[1]/div/div/div/div/label[1]/span[1]/span[1]/input


# ${promoPersonalizar}            xpath://*[@id="__next"]/div/div[2]/main/div/div/section/div[4]/div/button[4]



*** Keywords ***
Acessar o menu lateral Promoções, Cadastrar promoções
    Click element   ${menuPromoções}
    Click element   ${criarPromocao}

Selecionar Verificação geral
    Click element   ${verificaçãoGeral}

Selecionar ítens
    Click element       ${seguinteButton}

Informar a data inicio e data fim
    Click element   ${seguinteButton}

Selecionar montadora
    Click element   ${ListaMontadoras}
    Click element   ${selecionarMontadoras}
    Click element   ${seguinteButton}

Preencher Categoria do veículo
    Wait Until Element is Visible    ${listaCategoriasDeVeiculos}
    Click element   ${listaCategoriasDeVeiculos}
    Click element   ${selecionarCategoriasDeVeículos}
    Click element   ${seguinteButton}

Selecionar Pessoa Física, Empresas e Motorista de APP
    Click Element       ${seguinteButton}

Selecionar Pessoa Fisica
    Click Element       ${tipoPessoaFisica}
    Click element       ${seguinteButton}

Selecionar Empresas e Motoristas de APP
    Click Element       ${topoEmpresasEMotoristasDeApp}
    Click Element       ${seguinteButton}

Informar Valor Pessoa Fisica
    Gerar dados Faker
    Input text          ${preçoPessoaFisica}        ${valorFaker}
    Input text          ${descontoPessoaFisica}     ${numZeroAnoveFaker}

Informar Valor Empresas e Motoristas de APP
    Gerar dados Faker
    Input text          ${preçoAPP}              ${valorFaker}
    Input Text          ${descontoAPP}           ${numZeroAnoveFaker}

Informar Valor Empresas e Motoristas de APP e Salvar
    Gerar dados Faker
    Input text          ${preçoSomenteAPP}              ${valorFaker}
    Input Text          ${descontoSomentePJ}            ${numZeroAnoveFaker}
    Click element       ${seguinteButton}

Salvar promoção
    Click element       ${salvarVerificaçãoGeral}

Selecionar Diagnostico por Scanner
    Click element   ${diagnósticoDeDefeitoPorScanner}

Selecionar Promocionar Revisões
    Click element   ${promocionarRevisões}

Selecionar Motor e motorização
    Click element       ${listaMotores}
    # Click element       ${selecionarMotores}
    # Click element       ${listaMotorização}
    # Click element       ${selecionarMotorização}




# Selecionar Personalizar promoção
#     Click element   ${promoPersonalizar}
#
#
#


#
# Preencher Titulo da promoção Categoria e Descrição
#     input text      ${tituloPromoPersonalizada}     ${DETALHE_PROMOÇÃO}
#     input text      ${DescricaoPromo}               ${DETALHE_PROMOÇÃO}
#     Click element   ${categoriaPromoPersonal}
#     Press Keys  None     ENTER
#     Press Keys  None     ENTER
#     Press Keys  None     ENTER
#





# Clicar em Promoções Ativas
#     Click element       ${menuPromoçõesAtiva}
#     Click element       ${menuPromoções}
