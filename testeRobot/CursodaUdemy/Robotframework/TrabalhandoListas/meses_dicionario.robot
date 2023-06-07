*** Settings ***

*** Variables ***

@{lista}    janeiro    fevereiro    março    abril    maio    junho    julho    agosto    setembro    outubro    novembro    dezembro

&{meses_e_dias}    janeiro=30    fevereiro=28    março=31    abril=30    maio=31    junho=30    julho=31    agosto=30    setembro=31    outubro=30    novembro=31    dezembro=30    
*** Test Cases ***


Cenario 01 - imprimindo os dias de cada mês
    [Tags]     Listando_dias    Listas

    imprima dias do mês de "janeiro"
    imprima dias do mês de "fevereiro"
    imprima dias do mês de "março"
    imprima dias do mês de "abril"
    imprima dias do mês de "maio"
    imprima dias do mês de "junho"
    imprima dias do mês de "julho"
    imprima dias do mês de "agosto"
    imprima dias do mês de "setembro"
    imprima dias do mês de "outubro"
    imprima dias do mês de "novembro"
    imprima dias do mês de "dezembro"
   
*** Keywords ***

imprima dias do mês de "janeiro"
    Log To Console    message= ${lista[0]} tem ${meses_e_dias.janeiro} dias
imprima dias do mês de "fevereiro"
    Log To Console    message= ${lista[1]} tem ${meses_e_dias.fevereiro} dias
imprima dias do mês de "março"
    Log To Console    message= ${lista[2]} tem ${meses_e_dias.março} dias
imprima dias do mês de "abril"
    Log To Console    message= ${lista[3]} tem ${meses_e_dias.abril} dias
imprima dias do mês de "maio"
    Log To Console    message= ${lista[4]} tem ${meses_e_dias.maio} dias
imprima dias do mês de "junho"
    Log To Console    message= ${lista[5]} tem ${meses_e_dias.junho} dias
imprima dias do mês de "julho"
    Log To Console    message= ${lista[6]} tem ${meses_e_dias.julho} dias
imprima dias do mês de "agosto"
    Log To Console    message= ${lista[7]} tem ${meses_e_dias.agosto} dias
imprima dias do mês de "setembro"
    Log To Console    message= ${lista[8]} tem ${meses_e_dias.setembro} dias
imprima dias do mês de "outubro"
    Log To Console    message= ${lista[9]} tem ${meses_e_dias.outubro} dias
imprima dias do mês de "novembro"    
    Log To Console    message= ${lista[10]} tem ${meses_e_dias.novembro} dias
imprima dias do mês de "dezembro"
    Log To Console    message= ${lista[11]} tem ${meses_e_dias.dezembro} dias
   