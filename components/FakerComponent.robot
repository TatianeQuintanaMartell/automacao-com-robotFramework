*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary   locale=pt_BR

*** Keywords ***
Gerar dados Faker

    ${cepFaker}            FakerLibrary.Postcode
    Set Global Variable    ${cepFaker}

    ${ufFaker}             FakerLibrary.State Abbr
    Set Global Variable    ${ufFaker}

    ${bairroFaker}         FakerLibrary.City Suffix
    Set Global Variable    ${bairroFaker}

    ${numeroFaker}         FakerLibrary.Random Number
    Set Global Variable    ${numeroFaker}

    ${logradouroFaker}     FakerLibrary.Address
    Set Global Variable    ${logradouroFaker}

    ${cidadeFaker}         FakerLibrary.City
    Set Global Variable    ${cidadeFaker}

    ${nomeFaker}           FakerLibrary.Name
    Set Global Variable    ${nomeFaker}

    ${cnpjFaker}           FakerLibrary.Ean
    Set Global Variable    ${cnpjFaker}

    ${wordFaker}           FakerLibrary.Word
    Set Global Variable    ${wordFaker}

    ${valorFaker}          FakerLibrary.Pyint
    Set Global Variable    ${valorFaker}

    ${valor1Faker}          FakerLibrary.Random Int   100  1000
    Set Global Variable    ${valor1Faker}

    ${valor2Faker}          FakerLibrary.Random Int   100  1000
    Set Global Variable    ${valor2Faker}

    ${telefoneFaker}       FakerLibrary.Phone Number
    Set Global Variable    ${telefoneFaker}

    ${textoFaker}          FakerLibrary.Text
    Set Global Variable    ${textoFaker}

    ${cpfFaker}            FakerLibrary.Ssn
    Set Global Variable    ${cpfFaker}

    ${numZeroAnoveFaker}   FakerLibrary.Random Digit Not Null
    Set Global Variable    ${numZeroAnoveFaker}

    ${numRandomicoFaker}   FakerLibrary.Random Int   1  100
    Set Global Variable    ${numRandomicoFaker}

    ${numUmACemFaker}      FakerLibrary.Random Int
    Set Global Variable    ${numUmACemFaker}

    ${placaFaker}          FakerLibrary.License Plate
    Set Global Variable    ${placaFaker}

    ${latitudeFaker}       FakerLibrary.Latitude
    Set Global Variable    ${latitudeFaker}

    ${longitudeFaker}      FakerLibrary.Longitude
    Set Global Variable    ${longitudeFaker}

    ${rgFaker}            FakerLibrary.rg
    Set Global Variable    ${rgFaker}
