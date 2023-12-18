*** Settings ***
Library    ./Libraries/ChamaPrint.py

*** Variables ***

${Nome}    João Cleber
${Idade}    23
${Signo}    Touro
${Qualquer_palavra}    gabriel

*** Test Cases ***


Caso 01: Criando um Humano, insira Nome, idade e signo para a Library funcionar
    Vamos criar ${Nome}, ${Idade} e ${Signo}

Caso 02: Insira qualquer letra no conteudo e seja bem-vindo
    Inserindo ${Qualquer_palavra}


*** Keywords ***

Vamos criar ${Nome}, ${Idade} e ${Signo}
    ${GeradorHumano}    Gerar humano    ${Nome}     ${Idade}    ${Signo}
    Log    ${GeradorHumano} 


Inserindo ${Qualquer_palavra}
    Gerar Oi Comum    ${Qualquer_palavra}
    