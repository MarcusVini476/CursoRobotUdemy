*** Settings ***

Library    RequestsLibrary
Library    String
Library    FakerLibrary
Library    Collections


*** Variables ***
${password}     1234
${admin}        true
*** Test Cases ***

Cenario 01 - Criar um Usuario e fazer o Login na ServeReste
    Criar um novo usuario
    Cadastrar um usuário criado na ServeRest    ${Email_Usuario}    201
    Realizar Login com o usuário
    Conferir se o Login ocorreu com sucesso


*** Keywords ***

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

