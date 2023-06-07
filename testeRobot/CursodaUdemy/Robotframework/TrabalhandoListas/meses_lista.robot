*** Settings ***

*** Variables ***

@{lista}    janeiro    fevereiro    março    abril    maio    junho    julho    agosto    setembro    outubro    novembro    dezembro
*** Test Cases ***

Cenario 01 - imprimindo os meses do ano
    [Tags]     Listando_meses    Listas

    imprima mês de "janeiro"
    imprima mês de "fevereiro"
    imprima mês de "março"
    imprima mês de "abril"
    imprima mês de "maio"
    imprima mês de "junho"
    imprima mês de "julho"
    imprima mês de "agosto"
    imprima mês de "setembro"
    imprima mês de "outubro"
    imprima mês de "novembro"
    imprima mês de "dezembro"


*** Keywords ***


imprima mês de "janeiro"
    Log To Console    message=${lista[0]}
imprima mês de "fevereiro"
     Log To Console    message=${lista[1]}
imprima mês de "março"
     Log To Console    message=${lista[2]}
imprima mês de "abril"
     Log To Console    message=${lista[3]}
imprima mês de "maio"
     Log To Console    message=${lista[4]}
imprima mês de "junho"
     Log To Console    message=${lista[5]}
imprima mês de "julho"
     Log To Console    message=${lista[6]}
imprima mês de "agosto"
     Log To Console    message=${lista[7]}
imprima mês de "setembro"
     Log To Console    message=${lista[8]}
imprima mês de "outubro"
     Log To Console    message=${lista[9]}
imprima mês de "novembro"
     Log To Console    message=${lista[10]}
imprima mês de "dezembro" 
     Log To Console    message=${lista[11]}  



   