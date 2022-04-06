***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/SolicitaçãoDeOrçamentosPage.robot
Resource            ../config/ConfiguraçãoTesteComponent.robot

Test Setup          Iniciar teste no Sistema KD
Test Teardown       Finalizar teste

***Test Cases***
Cenario01: Solicitar Orçamentos clicando na opção já tenho conta
    [tags]   SolicitarOrcamentos
    Acessar na Home Solicitar orcamentos
    Informar Serviço, Localização, Descrição
    Preencher login e senha
    Informar seu veiculo
    # Informar Placa
    # Selecionar já tenho conta
    # Clicar em Continuar novamente
    # Informar quando deseja iniciar o serviço
    # Clicar em enviar
    # Clicar no clique aqui
    # Em Minhas Manutenções clicar em sair

Cenario02: Solicitar Orçamentos clicando na opção sou novo
    [tags]   SolicitarOrcamentos
    Acessar na Home Solicitar orcamentos
    Informar Serviço, Localização, Descrição
    Informar Placa
    Selecionar sou novo
    Preencher nome,email,telefone,senha,confirme sua senha
    Clicar em aceito a polícica de privacidade
    Clicar em Continuar novamente

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario03: Solicitar Orçamentos com Motorista Logado
    [tags]   SolicitarOrcamentos
    Acessar na pagina inicial Home Faça seu login
    Clicar em sou Cliente
    Acessar a conta com Email e Senha
    Acessar Agendamentos
    Ir para Home
    Solicitar Orçamentos
    Informar Serviço, Localização, Descrição
    Informar Veículo
    Clicar em Continuar novamente

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

# Cenario04: Repetição de Cenários
#     Repeat Keyword      ${AMOUNT_OF_TIMES} times      Solicitar Orçamentos com Motorista Logado
