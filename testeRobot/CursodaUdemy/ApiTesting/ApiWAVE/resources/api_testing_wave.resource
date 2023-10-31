*** Settings ***
Library  RequestsLibrary
Library  String
Library  Collections


*** Variables ***
${key_wave_api}     xtQnYbVg3343
${url_analisada}    https://www.uol.com.br/

*** Keywords ***

Cadastrar o usuário criado na wave   
    Criar Sessão na wave
    ${resposta}    GET On Session
    ...            expected_status=200
        


    Log    ${resposta.json()}
Criar Sessão na wave
    
    Create Session    alias=Wave    url=https://wave.webaim.org/api/request?key=${key_wave_api}&reporttype=4&format=xml&url=${url_analisada}   