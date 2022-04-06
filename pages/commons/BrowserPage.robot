*** Settings ***
Library     SeleniumLibrary
Resource    ../../config/ConfiguraçãoBrowserComponent.robot
Resource    ../../config/ConfiguraçãoTesteComponent.robot

*** Keywords ***
Iniciar teste no Sistema KD
    Open Browser         ${URL_HOST}                     ${BROWSER}
    Verificar se o teste será executado no Mobile ou Desktop
    Setar Selenium e Window

Iniciar teste no Sistema Backoffice
    Open Browser         ${URL_BACKOFFICE}               ${BROWSER}
    Setar Width e Height para Desktop
    Setar Selenium e Window

Setar Selenium e Window
    Set Window Size                 ${BROWSER_CUSTOMER_WIDTH}       ${BROWSER_CUSTOMER_HEIGHT}
    set Selenium Implicit wait      ${TIME_TO_WAIT}
    Set Selenium Timeout            ${TIME_OUT}
    Set Selenium Speed              ${TIME_SPEED}

Setar Width e Height para Mobile
    Set Global Variable      ${BROWSER_CUSTOMER_WIDTH}           ${BROWSER_CUSTOMER_WIDTH_MOBILE}
    Set Global Variable      ${BROWSER_CUSTOMER_HEIGHT}          ${BROWSER_CUSTOMER_HEIGHT_MOBILE}

Setar Width e Height para Desktop
    Set Global Variable    ${BROWSER_CUSTOMER_WIDTH}        ${BROWSER_CUSTOMER_WIDTH_DESKTOP}
    Set Global Variable    ${BROWSER_CUSTOMER_HEIGHT}       ${BROWSER_CUSTOMER_HEIGHT_DESKTOP}


Verificar se o teste será executado no Mobile ou Desktop
    Run Keyword If      ${MOBILE_DESKTOP} == 1        Setar Width e Height para Mobile
    ...                 ELSE
    ...                 Setar Width e Height para Desktop

Finalizar teste
    Capture Page Screenshot
    Close Browser
