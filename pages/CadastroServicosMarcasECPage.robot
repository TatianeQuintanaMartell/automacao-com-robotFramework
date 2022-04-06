*** Settings ***
Library     SeleniumLibrary
Resource    ../config/ConfiguraçãoTesteComponent.robot

*** Variables ***
${MenuServicosMarcas}                     xpath://*[@id="menu-submenuTitleServices"]
${abrirOpcoesDeServico}                   xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/button
${SelecionarServico}                      xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[1]/div/div/div/div/label[${SERVICOS}]/span[1]/span[1]/input
${abrirOpcoesDeMontadoras}                xpath://*[@id="__next"]/div/div[2]/main/div/div/div[3]/button
${SelecionarMontadora}                    xpath://*[@id="__next"]/div/div[2]/main/div/div/div[3]/div[1]/div/div/div/div/label[${MARCA_MONTADORA}]/span[1]/span[1]/input
${abrirOpcoesDeCategoriaDeVeiculos}       xpath://*[@id="__next"]/div/div[2]/main/div/div/div[4]/button
${SelecionarCategoriaDeVeiculos}          xpath://*[@id="__next"]/div/div[2]/main/div/div/div[4]/div[1]/div/div/div/div/label[${CATEGORIA_VEICULO}]/span[1]/span[1]/input
${botãoSalvar}                            xpath://*[@id="__next"]/div/div[2]/main/div/div/div[1]/div[2]/button

*** Keywords ***
Acessar Servicos e Marcas
    Click element       ${MenuServicosMarcas}

Informar Serviços, Montadoras, Categoria de Veículos e Salvar
    Click element       ${abrirOpcoesDeServico}
    Click Element       ${SelecionarServico}
    Click element       ${abrirOpcoesDeMontadoras}
    Click Element       ${SelecionarMontadora}
    Click element       ${abrirOpcoesDeCategoriaDeVeiculos}
    Click Element       ${SelecionarCategoriaDeVeiculos}
    Click element       ${MenuServicosMarcas}
    Wait Until Element Is Visible       ${botãoSalvar}
    Scroll Element Into View       ${botãoSalvar}
    Click Element       ${botãoSalvar} 
