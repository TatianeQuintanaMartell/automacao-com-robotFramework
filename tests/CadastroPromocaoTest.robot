***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/CadastroPromocaoPage.robot
Resource            ../pages/LoginEstabelecimentoComercialPage.robot
Resource            ../pages/SolicitaçãoDeOrçamentosPage.robot
Resource            ../pages/CadastroAtendimentoInfraEcPage.robot

Test Setup          Iniciar teste no Sistema KD
Test Teardown       Finalizar teste

***Test Cases***
Cenário01: Acessar a área restrita do EC e cadastrar promoção Verificação Geral para Ambas
    Logar com estabelecimento Comercial
    Fechar PopUp para o portal da TLOG
    Acessar o menu lateral Promoções, Cadastrar promoções
    Selecionar Verificação geral
    Selecionar ítens
    Informar a data inicio e data fim
    Selecionar montadora
    Preencher Categoria do veículo
    Selecionar Pessoa Física, Empresas e Motorista de APP
    Informar Valor Pessoa Fisica
    Informar Valor Empresas e Motoristas de APP
    Salvar promoção

Cenário02: Acessar a área restrita do EC e cadastrar promoção Verificação Geral para Pessoa Física
    Logar com estabelecimento Comercial
    Fechar PopUp para o portal da TLOG
    Acessar o menu lateral Promoções, Cadastrar promoções
    Selecionar Verificação geral
    Selecionar ítens
    Informar a data inicio e data fim
    Selecionar montadora
    Preencher Categoria do veículo
    Selecionar Pessoa Fisica
    Informar Valor Pessoa Fisica
    Salvar promoção

Cenário03: Acessar a área restrita do EC e cadastrar promoção Verificação Geral para Motorista de APP
    Logar com estabelecimento Comercial
    Fechar PopUp para o portal da TLOG
    Acessar o menu lateral Promoções, Cadastrar promoções
    Selecionar Verificação geral
    Selecionar ítens
    Informar a data inicio e data fim
    Selecionar montadora
    Preencher Categoria do veículo
    Selecionar Empresas e Motoristas de APP
    Informar Valor Empresas e Motoristas de APP e Salvar

Cenário04: Acessar a área restrita do EC e cadastrar promoção Diagnostico por Scanner para Ambas
    Logar com estabelecimento Comercial
    Fechar PopUp para o portal da TLOG
    Acessar o menu lateral Promoções, Cadastrar promoções
    Selecionar Diagnostico por Scanner
    Selecionar ítens
    Informar a data inicio e data fim
    Selecionar montadora
    Preencher Categoria do veículo
    Selecionar Pessoa Física, Empresas e Motorista de APP
    Informar Valor Pessoa Fisica
    Informar Valor Empresas e Motoristas de APP
    Salvar promoção

Cenário05: Acessar a área restrita do EC e cadastrar promoção Diagnostico por Scanner para Pessoa Física
    Logar com estabelecimento Comercial
    Fechar PopUp para o portal da TLOG
    Acessar o menu lateral Promoções, Cadastrar promoções
    Selecionar Diagnostico por Scanner
    Selecionar ítens
    Informar a data inicio e data fim
    Selecionar montadora
    Preencher Categoria do veículo
    Selecionar Pessoa Fisica
    Informar Valor Pessoa Fisica
    Salvar promoção

Cenário06: Acessar a área restrita do EC e cadastrar promoção Diagnostico por Scanner para APP
    Logar com estabelecimento Comercial
    Fechar PopUp para o portal da TLOG
    Acessar o menu lateral Promoções, Cadastrar promoções
    Selecionar Diagnostico por Scanner
    Selecionar ítens
    Informar a data inicio e data fim
    Selecionar montadora
    Preencher Categoria do veículo
    Selecionar Empresas e Motoristas de APP
    Informar Valor Empresas e Motoristas de APP e Salvar

Cenário07: Acessar a área restrita do EC e cadastrar promoção do Tipo Revisões para Ambas
    Logar com estabelecimento Comercial
    Fechar PopUp para o portal da TLOG
    Acessar o menu lateral Promoções, Cadastrar promoções
    Selecionar Promocionar Revisões
    Selecionar ítens
    Informar a data inicio e data fim
    Selecionar montadora
    Selecionar Motor e motorização
    # Preencher Categoria do veículo
    # Selecionar Pessoa Física, Empresas e Motorista de APP
    # Informar Valor Pessoa Fisica
    # Informar Valor Empresas e Motoristas de APP
    # Salvar promoção

Cenário06: Acessar a área restrita do EC e cadastrar promoção Personalizada
    Logar com estabelecimento Comercial
    Fechar PopUp para o portal da TLOG
    Acessar o menu lateral Promoções, Cadastrar promoções
    Selecionar Personalizar promoção
    Preencher Titulo da promoção Categoria e Descrição
    Informar Preço atual, desconto PF, desconto PJ Personalizada
    Informar a data inicio e data fim promo Personalizada
    Selecionar montadora, foto e salvar promo personalizada

Cenário07: Cadastrar promoções Geral,Diagnostico,Revisao,Personalizada para novo EC já logado
    # [tags]   CadastroCompletoDoEC
    Logar com estabelecimento Comercial
    Realizar o cadastro de Todas as Promoções

# Cenario08: Repetição de Cenários Cadastro Promo Verificação Geral
#     Repeat Keyword      ${AMOUNT_OF_TIMES} times      Solicitar Orçamentos com Motorista Logado
