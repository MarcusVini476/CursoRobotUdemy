*** Settings ***
Library    FakerLibrary

*** Variables ***

&{PESSOA}       nome=nome   sobrenome=sobrenome  email=email

*** Test Cases ***

Cenario 01- gerando um e-mail customizado
    [Tags]    e-mail    customização_de_email
    criando o e-mails



*** Keywords ***
criando o e-mails
    dados do usuario    Marcus    Vinicius   
        
    

dados do usuario
    [Arguments]    ${nome}    ${sobrenome}       
    ${palavra_aleatoria}    Numerify    text=#####
    Log    message=${nome}${sobrenome}${palavra_aleatoria}"@testerobot.com"



            