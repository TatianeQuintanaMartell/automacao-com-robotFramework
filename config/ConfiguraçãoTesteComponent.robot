*** Variables ***
# ${LOCALIZACAO}              Rua Bento Gonçalves, 300, Santa Maria, Rio Grande do Sul, Brasil
# ${LOCALIZACAO}             Avenida Praia de Belas, 576, Porto Alegre, Rio Grande do Sul, Brasil
${LOCALIZACAO}             Rua Almirante Gonçalves, Bagé, Rio Grande do Sul, Brasil
# ${LOCALIZACAO}             Bagé, Rio Grande do Sul, Brasil

${NUM_ENDEREÇO}             576

${MOBILE_DESKTOP}           5
# 1-mobile,  qualquer outro valor faz desktop

${PLACA_GERADA}             NDR7152

${DETALHE_SOLICITAÇÃO}      Por favor, solicito orçamento e prazo de entrega para os serviços informados. Aguardo retorno./Teste Automatizado

${DETALHE_PROMOÇÃO}        Bagé/Ambas/Aceitar para Ambas

${PUBLICO_ALVO_PROMOÇÃO}         3
# 1-person only,2-company only,3-person and companies     para Aplicativo de Mobilidade Urbana

${PROMO_CREATE_DRAFT}         2
# 1-Save promotion to continue editing later, 2-Create Promotion

${CATEGORIA_VEICULO}         2
# 1-Todas, 2-Passeio Leve, 3-Pickups, 4-Van

${INFO_COMPLEMENTAR}        Informações preenchidas por Automação

${TIPO_DE_ESTABELECIMENTO}  2
# 1-Concessionária,2-Oficina Mecânica,3-Oficina de Motos,4-Auto Vidros,5-Borracharia,6-Loja de Pneus
# 7-Chaveiro,8-Acessórios,9-Serviços de Vistoria,10-Auto-Elétrica,11-Lavagem,12-Funilaria e Pintura,13-Guincho

${SERVICOS}                 2
### Escolha  um serviço que deseja cadastrar em sua pagina: (1 para todos somente para cadastro de serviços e marcas) 2 = Acessórios  3 = Alinhamento e Balanceamento  4 = Ar Condicionado  5 = Arrefecimento  6 = Bateria 7 = Borracharia 8 = Caixa de Câmbio
# 9 = Chassi 10 = Diferencial 11 = Direção Hidráulica 12 = Eixo 13 = Elétrica 14 = Embreagem --> demais opções visualizar no site

${MARCA_MONTADORA}            2
## Escolha a marca que deseja cadastrar em sua pagina:  Para Promo todas as marcas = 1  /   ACURA 2 = ADAMO 3 = ADLY 4 = AGRALE 5 = ALFA ROMEO
# 6 = AM GEN  7 = AMAZONAS 8 = AMERICAR 9 =APRILIA 10 = ARIEL 11 = ASTON MARTIN 12 = ATALA 13 = AUTOGLASS ... 100

${UPLOAD_PATH}              /home/tatianemartell/Fotos/novaFotoPromo.jpeg
# promocao4.jpeg   promoCnpj.jpg    OficinaMecanica.jpeg (nude)      promo100.png    promo10.png  novafotoparaCards.jpeg

${LOGOMARCA_FOTOS}          /home/tatianemartell/Fotos/logomarca.jpeg
${FACHADA_FOTOS}            /home/tatianemartell/Fotos/fachada.jpeg
${INTERIOR_FOTOS}           /home/tatianemartell/Fotos/interior.jpeg
${INTERIOR_FOTOSII}         /home/tatianemartell/Fotos/promo10.jpeg
${SALA_DE_ESPERA_FOTOS}     /home/tatianemartell/Fotos/salaDeEsperaTop.jpeg

${MASSA_DE_DADOS}       2
# 1-FakerLibrary, 2-Criado por QA

${CELULAR_MOTORISTA}       51983108310
${CELULAR_EC}              51983108310

${DOMINIO}              .robotframework@yopmail.com

${LOGIN_MOTORISTA}    E-MAIL
# Opções de Login como Motorista: E-MAIL, FACEBOOK, GOOGLE

${DATA_INICIAL}       22032022
${DATA_FINAL}         30042022

${HORA_INICIAL}       0800
${HORA_FINAL}         1800
