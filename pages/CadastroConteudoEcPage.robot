*** Settings ***
Library     SeleniumLibrary
Resource    ../config/ConfiguraçãoTesteComponent.robot

*** Variables ***
${fotosDaMinhaOficina}        xpath://*[@id="menu-submenuTitlePhotosFromMyEC"]/h1
${salvar}                     xpath://*[@id="__next"]/div/div[2]/main/div/div/div[1]/div[2]/button
${uploadLogomarca}            xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[1]/section/div/input
${uploadFachada}              xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[2]/section/div/input
${uploadInterior}             xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[3]/section/div/input
${uploadSalaDeEspera}         xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[4]/section/div/input
${exemploLogomarca}           xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[1]/details
${exemploFachada}             xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[2]/details
${exemploInterior}            xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[3]/details
${exemploSalaDeEspera}        xpath://*[@id="__next"]/div/div[2]/main/div/div/div[2]/div[4]/details

*** Keywords ***
Acessar Fotos da minha Oficina
    Click Element    ${fotosDaMinhaOficina}

Fazer o upload das fotos da Minha Oficina
    Click Element    ${exemploLogomarca}
    Choose File      ${uploadLogomarca}            ${LOGOMARCA_FOTOS}
    Click Element    ${exemploFachada}
    Choose File      ${uploadFachada}              ${FACHADA_FOTOS}
    Click Element    ${exemploInterior}
    Choose File      ${uploadInterior}             ${INTERIOR_FOTOS}
    Choose File      ${uploadInterior}             ${INTERIOR_FOTOSII}
    Choose File      ${uploadInterior}             ${UPLOAD_PATH}
    Click Element    ${exemploSalaDeEspera}
    Choose File      ${uploadSalaDeEspera}         ${SALA_DE_ESPERA_FOTOS}
    Scroll Element Into View       ${salvar}
    Click Element    ${salvar}
