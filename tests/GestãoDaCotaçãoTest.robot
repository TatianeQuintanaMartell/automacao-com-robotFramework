***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/SolicitaçãoDeOrçamentosPage.robot
Resource            ../pages/LoginEstabelecimentoComercialPage.robot

Test Setup          Iniciar teste no Sistema KD
Test Teardown       Finalizar teste

***Test Cases***
Cenario01: Fazer a Gestão de Cotação Solicitada
    Logar com Motorista e Solicitar Orçamentos
    Logar com estabelecimento Comercial
    Logar como EC
    Acessar Gestão de serviços Pendentes
    Responder Solicitação
    Selecionar Opção faça seu Login
    Clicar em sou Cliente
    Acessar a conta com Email e Senha
    Acessar Agendamentos
    Verificar Resposta da Solicitação
    Agendar Serviço
    Informar a Placa do Veículo
    Confirmar o Agendamento do Serviço
    Logar como EC
    Acessar Gestão de serviços Pendentes
