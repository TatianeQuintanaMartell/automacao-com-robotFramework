***Settings***
Resource            ../pages/commons/BrowserPage.robot
Resource            ../pages/SolicitarPromocaoPage.robot

Test Setup          Iniciar teste no Sistema KD
Test Teardown       Finalizar teste

***Test Cases***
Cenario01: Solicitar Promoção Tipo Revisão clicando na opção já tenho conta
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço revisão
    Clicar em aproveitar a promoção revisão
    Informar tipo de promoção, descrição e avançar
    Informar Marca, Modelo e a Motorização
    Selecionar possuo conta
    Preencher login e senha
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario02: Solicitar Promoção Tipo Revisão cadastrando usuário
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço revisão
    Clicar em aproveitar a promoção revisão
    Informar tipo de promoção, descrição e avançar
    Informar Marca, Modelo e a Motorização
    Selecionar sou novo motorista
    Preencher nome,email,telefone,senha,confirme sua senha
    Clicar em aceito a polícica de privacidade
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario03: Solicitar Promoção Tipo Revisão com Motorista ja logado
    Clicar no meu faça seu login
    Clicar em sou motorista preender campo email, senha e acessar conta
    Clicar no menu home
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço revisão
    Clicar em aproveitar a promoção revisão
    Informar tipo de promoção, descrição e avançar
    Selecione um veículo na lista
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario04: Solicitar Promoção Tipo Verificação Geral clicando na opção já tenho conta
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço Verificação Geral
    Clicar em aproveitar a promoção verificação geral
    Informar descrição e avançar
    Informar Marca, Modelo e a Motorização Geral
    Selecionar possuo conta geral
    Preencher login e senha promo geral
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair


Cenario05: Solicitar Promoção Tipo Verificação Geral cadastrando usuário
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço Verificação Geral
    Clicar em aproveitar a promoção verificação geral
    Informar descrição e avançar
    Informar Marca, Modelo e a Motorização Geral
    Selecionar sou novo motorista geral
    Preencher nome,email,telefone,senha,confirme sua senha geral
    Clicar em aceito a polícica de privacidade geral
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario06: Solicitar Promoção Tipo Verificação Geral com Motorista ja logado
    Clicar no meu faça seu login
    Clicar em sou motorista preender campo email, senha e acessar conta
    Clicar no menu home
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço Verificação Geral
    Clicar em aproveitar a promoção verificação geral
    Informar descrição e avançar
    Selecione um veículo na lista
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario07: Solicitar Promoção Tipo Diagnóstico de Leitura de Defeito por Scanner clicando na opção já tenho conta
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço Diagnóstico de Leitura de Defeito por Scanner
    Clicar em aproveitar a promoção Diagnóstico de Leitura de Defeito por Scanner
    Informar descrição e avançar
    Informar Marca, Modelo e a Motorização Geral
    Selecionar possuo conta geral
    Preencher login e senha promo geral
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario08: Solicitar Promoção Tipo Diagnóstico de Leitura de Defeito por Scanner cadastrando usuário
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço Diagnóstico de Leitura de Defeito por Scanner
    Clicar em aproveitar a promoção Diagnóstico de Leitura de Defeito por Scanner
    Informar descrição e avançar
    Informar Marca, Modelo e a Motorização Geral
    Selecionar sou novo motorista geral
    Preencher nome,email,telefone,senha,confirme sua senha geral
    Clicar em aceito a polícica de privacidade geral
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario09: Solicitar Promoção Tipo Diagnóstico de Leitura de Defeito por Scanner com Motorista ja logado
    Clicar no meu faça seu login
    Clicar em sou motorista preender campo email, senha e acessar conta
    Clicar no menu home
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço Diagnóstico de Leitura de Defeito por Scanner
    Clicar em aproveitar a promoção Diagnóstico de Leitura de Defeito por Scanner
    Informar descrição e avançar
    Selecione um veículo na lista
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario10: Solicitar Promoção Tipo Outros clicando na opção já tenho conta
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço Outros
    Clicar em aproveitar a promoção Outros
    Informar descrição e avançar
    Informar Marca, Modelo e a Motorização Geral
    Selecionar possuo conta geral
    Preencher login e senha promo geral
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario11: Solicitar Promoção Tipo Outros cadastrando usuário
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço Outros
    Clicar em aproveitar a promoção Outros
    Informar descrição e avançar
    Informar Marca, Modelo e a Motorização Geral
    Selecionar sou novo motorista geral
    Preencher nome,email,telefone,senha,confirme sua senha geral
    Clicar em aceito a polícica de privacidade geral
    Clicar em Avançar
    Selecionar uma foto para upload

    Clicar em enviar
    Clicar no clique aqui
    Em Minhas Manutenções clicar em sair

Cenario12: Solicitar Promoção Tipo Outros com Motorista ja logado
    Clicar no meu faça seu login
    Clicar em sou motorista preender campo email, senha e acessar conta
    Clicar no menu home
    Acessar na Home Promoção
    Selecionar no filtro localização e serviço Outros
    Clicar em aproveitar a promoção Outros
    Informar descrição e avançar
    Selecione um veículo na lista
    Clicar em Avançar
    Selecionar uma foto para upload
    
    Clicar em enviar
    Clicar no clique aqui
