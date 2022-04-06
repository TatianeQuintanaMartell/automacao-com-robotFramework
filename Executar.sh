

############# PARA EXECUTAR ESSE ARVIVO  ####################

#  sh arquivo.sh

#######  Executar testes SOLICITAR PROMOÇÕES   ###########

robot -d./log -t"Cenario01: Solicitar Promoção Tipo Revisão clicando na opção já tenho conta" tests
robot -d./log -t"Cenario02: Solicitar Promoção Tipo Revisão cadastrando usuário" tests
robot -d./log -t"Cenario03: Solicitar Promoção Tipo Revisão com Motorista ja logado" tests
robot -d./log -t"Cenario04: Solicitar Promoção Tipo Verificação Geral clicando na opção já tenho conta" tests
robot -d./log -t"Cenario05: Solicitar Promoção Tipo Verificação Geral cadastrando usuário" tests
robot -d./log -t"Cenario06: Solicitar Promoção Tipo Verificação Geral com Motorista ja logado" tests
robot -d./log -t"Cenario07: Solicitar Promoção Tipo Diagnóstico de Leitura de Defeito por Scanner clicando na opção já tenho conta" tests    
robot -d./log -t"Cenario08: Solicitar Promoção Tipo Diagnóstico de Leitura de Defeito por Scanner cadastrando usuário" tests 
robot -d./log -t"Cenario09: Solicitar Promoção Tipo Diagnóstico de Leitura de Defeito por Scanner com Motorista ja logado" tests 
robot -d./log -t"Cenario10: Solicitar Promoção Tipo Outros clicando na opção já tenho conta" tests 
robot -d./log -t"Cenario11: Solicitar Promoção Tipo Outros cadastrando usuário" tests 
robot -d./log -t"Cenario12: Solicitar Promoção Tipo Outros com Motorista ja logado" tests 


########  Executar testes CADASTRO DE PROMOÇÃO     ##########

robot -d./log -t"Cenário01 - Acessar a área restrita do EC e cadastrar promoção Tipo Geral" tests
robot -d./log -t"Cenário02 - Acessar a área restrita do EC e cadastrar promoção Tipo Diagnostico" tests
robot -d./log -t"Cenário03 - Acessar a área restrita do EC e cadastrar promoção Tipo Revisao" tests
robot -d./log -t"Cenário04 - Acessar a área restrita do EC e cadastrar promoção Personalizada" tests


####### Executar testes LOGIN ESTABELECIMENTO COMERCIAL  ########
# robot -d./log -t"Cenario01: Logar informando os dados de um Estabelecimento Comercial" tests


########  Executar testes SOLICITAÇÃO DE SERVIÇO     ##########

#robot -d./log -t"Cenario01 - Solicitar um serviço com usuário ja cadastrado" tests
#robot -d./log -t"Cenario02 - Solicitar um serviço usuario novo" tests






