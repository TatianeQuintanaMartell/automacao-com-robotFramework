*** Settings ***
Library     SeleniumLibrary
Resource    ../config/ConfiguraçãoTesteComponent.robot
Resource    ../config/ConfiguraçãoBrowserComponent.robot

*** Variables ***
${minhaOficina}                     xpath://*[@id="__next"]/div/div[2]/div[2]/div/div/nav[1]/div[4]
${DivDaPopUp}                       xpath:/html/body/div[6]/div[3]/div/div
${fecharPopUp}                      xpath:/html/body/div[6]/div[3]/div/div/div[1]/button
${atendimentoInfraestrutura}        xpath://*[@id="menu-submenuTitleServiceAndInfrastructure"]/h1
${horarioIniSegundaASexta}          xpath://*[@id="__next"]/div/div[2]/main/div/div/div/form/div[3]/div/div/div[1]/div[3]/div[1]/div/div/div/div/input
${horarioFimSegundaASexta}          xpath://*[@id="__next"]/div/div[2]/main/div/div/div/form/div[3]/div/div/div[1]/div[3]/div[3]/div/div/div/div/input
${horarioIniSabado}                 xpath://*[@id="__next"]/div/div[2]/main/div/div/div/form/div[3]/div/div/div[1]/div[5]/div[1]/div/div/div/div/input
${horarioFimSabado}                 xpath://*[@id="__next"]/div/div[2]/main/div/div/div/form/div[3]/div/div/div[1]/div[5]/div[3]/div/div/div/div/input
${salvarAtendimentoInfra}           xpath://*[@id="__next"]/div/div[2]/main/div/div/div/form/div[2]/div/button

*** Keywords ***
Acessar menu lateral Minha Oficina
    Click element             ${minhaOficina}

Fechar PopUp para o portal da TLOG
    Click element             ${DivDaPopUp}
    Wait Until Element Is Visible       ${fecharPopUp}
    Click element             ${fecharPopUp}

Selecionar Atendimento e Infraestrutura
    Click element             ${atendimentoInfraestrutura}

Preencher Informações e Salvar
    Input Text                ${horarioIniSegundaASexta}        ${HORA_INICIAL}
    Input Text                ${horarioFimSegundaASexta}        ${HORA_FINAL}
    Input Text                ${horarioIniSabado}               ${HORA_INICIAL}
    Input Text                ${horarioFimSabado}               ${HORA_FINAL}
    Click element             ${salvarAtendimentoInfra}
