*** Settings ***


Library    RequestsLibrary
Library    String
Library    FakerLibrary
Library    Collections

*** Variables ***

${password}     1234
${admin}        true


*** Keywords ***
# sessão para criar um novo usuario tal como nome e email sedo gerados de forma aleatória pela library do FakerLibrary
Criar um novo usuario
# adicionando as respectivas variaveis a geração de nome e email aleatorio
    ${Nome_Aleatorio}       FakerLibrary.Name
    ${Email_Aleatorio}      FakerLibrary.Email    ${True}    gmailteste.com   
    #setando as variaveis   
    Set Test Variable    ${Email_Usuario}    ${Email_Aleatorio}
    Set Test Variable    ${Nome_Usuario}     ${Nome_aleatorio}
    Log    ${Email_Usuario}
    Log    ${Nome_Usuario}
   

Cadastrar um usuário criado na ServeRest
    [Arguments]    ${Email_Usuario}    ${Status_code_desejado}     
    ${body}    Create Dictionary
    ...    nome=${Nome_Usuario}    
    ...    email=${Email_Usuario}
    ...    password=${password}
    ...    administrador=${admin}
    Log    ${body}

    criar sessão na ServeRest

    ${resposta}    POST On Session
    ...    alias=ServeRest
    ...    url=/usuarios
    ...    json=${body}
    ...    expected_status=${Status_code_desejado}

    Log    ${resposta.json()}
    IF    ${resposta.status_code} == 201
        Set Test Variable    ${ID_devolvido}    ${resposta.json()["_id"]}
    END
        
    Set Test Variable    ${Resposta_cadastro}    ${resposta.json()}


criar sessão na ServeRest
    ${headers}    Create Dictionary   accept=application/json    Content-Type=application/json
    Create Session    alias=ServeRest    url=https://serverest.dev    headers=${headers}
    
  
Conferir se o usuário foi cadastrado corretamente
    Dictionary Should Contain Item   ${Resposta_cadastro}    message     Cadastro realizado com sucesso 
    Dictionary Should Contain Key    ${Resposta_cadastro}    _id

Repetir o cadastro com mesmo e-mail
    Cadastrar um usuário criado na ServeRest    ${Email_Usuario}    400     
garantir que a mensagem de erro é "${error_message}"
    Dictionary Should Contain Item   ${Resposta_cadastro}    message     ${error_message}
    

consultar os dados do novo usuario
    ${pegando_id_do_usuario}    GET On Session    alias=ServeRest    url=/usuarios/${ID_devolvido}
    Set Test Variable    ${RESPOSTA_pegando_id_do_usuario}    ${pegando_id_do_usuario.json()}
    Log    ${pegando_id_do_usuario.status_code}    
    Log    ${pegando_id_do_usuario.reason}
    Log    ${pegando_id_do_usuario.text}
    Log    ${pegando_id_do_usuario.headers}
    Log    ${pegando_id_do_usuario.elapsed}
    Log    ${pegando_id_do_usuario.content}

conferir dados retornados
    Log    ${RESPOSTA_pegando_id_do_usuario}
    Dictionary Should Contain Item    ${RESPOSTA_pegando_id_do_usuario}    nome               ${Nome_Usuario}
    Dictionary Should Contain Item    ${RESPOSTA_pegando_id_do_usuario}    email              ${Email_Usuario}
    Dictionary Should Contain Item    ${RESPOSTA_pegando_id_do_usuario}    password           ${password}
    Dictionary Should Contain Item    ${RESPOSTA_pegando_id_do_usuario}    administrador      ${admin}
    Dictionary Should Contain Item    ${RESPOSTA_pegando_id_do_usuario}    _id                ${ID_devolvido}



Realizar Login com o usuário
    ${body_Login}    Create Dictionary
       
    ...    email=${Email_Usuario}
    ...    password=${password}

    Log    ${body_Login}
    ${Login_Usuario}     POST On Session    
    ...    alias=ServeRest
    ...    url=/login
    ...    json=${body_Login}
    ...    expected_status=200

    Log    ${Login_Usuario.json()}   
    Set Test Variable    ${Resposta_Login}    ${Login_Usuario.json()}


Conferir se o Login ocorreu com sucesso
    Dictionary Should Contain Item    ${Resposta_Login}    message    Login realizado com sucesso
    Dictionary Should Contain Key     ${Resposta_Login}    authorization    

