*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${url_amazon}                       https://www.amazon.com.br/
${amazon_eletronics}                //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${eletronics}                       //a[contains(.,'Eletrônicos')]
${eletronics_header}                //h1[contains(.,'Eletrônicos e Tecnologia')]
${Search_bar}                       //input[contains(@type,'text')]
${Submit}                           //input[contains(@type,'submit')]
*** Keywords ***

abrir navegador
    Open Browser      browser=gc
    Maximize Browser Window
    

fechar navegador
    Close Browser



Acessar a home page do site Amazon.com.br
    Go To   url= ${url_amazon}
    Wait Until Element Is Visible    locator=${amazon_eletronics}


 Entrar no menu "Eletrônicos"    
    Click Element    locator=${eletronics}   


Verificar se aparece a frase "${FRASE}"
     Wait Until Page Contains    text=${FRASE} 
     Wait Until Element Is Visible    locator=${eletronics_header}


Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${CATEGORIAS}"
    Element Should Be Visible    locator=//img[contains(@alt,'${CATEGORIAS}')]

Clicar na aba pesquisar
    Wait Until Element Is Visible    locator=${Search_bar}

Clicar no botão de pesquisa
    Click Element    locator=${Submit}
    

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=${Search_bar}    text=${PRODUTO}


Verificar se estou na aba "${Resultados}"
     Wait Until Element Is Visible    locator=//div[@tabindex='0'][contains(.,'${Resultados}')]
    
Verificar o resultado da pesquisa,listando o produto "${PRODUTO_PESQUISADO}" pesquisado 
    Page Should Contain    text=${PRODUTO_PESQUISADO}
       


