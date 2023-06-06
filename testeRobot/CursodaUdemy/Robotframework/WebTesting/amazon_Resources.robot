*** Settings ***
Library     SeleniumLibrary


*** Variables ***

${url_amazon}                      https://www.amazon.com.br/
${menu_Livros}                     //a[@href='/Livros/b/?ie=UTF8&node=6740748011&ref_=nav_cs_books'][contains(.,'Livros')]
${Titulo_pagina}                   //title[contains(.,'Amazon.com.br | Tudo pra você, de A a Z.')]
${H2_Livros_amazon}                //h2[contains(.,'Loja de Livros')]
${H2_Destaques_amazon}             //h2[contains(.,'Lojas em destaque')]
${barra_pesquisa_amazon}           //input[contains(@type,'text')]
${botão_pesquisa}                  //input[contains(@type,'submit')]
${zona_de_resultados}              //span[@class='a-color-state a-text-bold'][contains(.,'"Rita Lee: Outra autobiografia"')]
${resultados_encontrados}          //span[@class='a-size-medium-plus a-color-base a-text-bold'][contains(.,'Resultados')]
${add_to_cart}                     //input[contains(@name,'submit.add-to-cart')]
${subtotal_cart}                   //span[@class='a-size-medium a-color-base a-text-bold'][contains(.,'Subtotal do carrinho:')]
${confirmado_no_carrinho}          //span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]
${Ir_para_o_carrinho}              //a[contains(@data-csa-c-type,'button')]
${excluir_do_carrinho}             //input[@value='Excluir']
${dentro_do_carrinho}              //h1[contains(.,'Carrinho de compras')]
${Titulo_carrinho_vazio}           //h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]

*** Keywords ***

abrir navegador
    Open Browser      browser=gc
    Maximize Browser Window
    

fechar navegador
    Close Browser



manter navegador
    Open Browser    browser=gc    options=add_experimental_option("detach", True) 

Acessar a home page do site Amazon.com.br
    Go To   url= ${url_amazon}
    Wait Until Element Is Visible    locator=${menu_Livros}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}
    


Entrar no menu "Livros" 
     Click Element    locator=${menu_Livros}   
    


Verificar se aparece a frase "${FRASE}"
    Set Selenium Implicit Wait    value=5
    Wait Until Element Is Visible    locator=${H2_Livros_amazon}
    Element Should Contain    locator=${H2_Livros_amazon}    expected=${FRASE}
    
 
Verificar se aparece a categoria em Lojas em Destaque "${CATEGORIAS}"
    Set Selenium Implicit Wait    value=10
    Wait Until Element Is Visible    locator=${H2_Destaques_amazon}
    Element Should Be Visible    locator=//img[contains(@alt,'${CATEGORIAS}')]    
Clicar na aba pesquisar
    Wait Until Element Is Visible    locator=${barra_pesquisa_amazon}
    Click Element    locator=${barra_pesquisa_amazon}

Clicar no botão de pesquisa
    Click Button    locator=${botão_pesquisa}
    

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=${barra_pesquisa_amazon}    text=${PRODUTO}
    Set Global Variable    ${pesquisa_feita}    ${PRODUTO} 


Verificar se estou na página de resultado da pesquisa 
    
    Set Selenium Implicit Wait    value=10
    Element Should Contain       locator=//span[@class='a-color-state a-text-bold'][contains(.,'${pesquisa_feita}')]    expected=${pesquisa_feita}
    Element Should Be Visible    locator=${resultados_encontrados}    

    
Verificar se o resultado da pesquisa está listando o produto pesquisado 
    Element Should Be Visible    locator=//img[@alt='${pesquisa_feita}']



Adicionar o produto ao carrinho
    Click Element    locator=//img[@alt='${pesquisa_feita}']
    Wait Until Element Is Visible    locator=${add_to_cart}
    Click Element    locator=${add_to_cart}



Verificar se o produto foi adicionado com sucesso ao "${pagina_carrinho}"
    Wait Until Element Is Visible    locator=${subtotal_cart}
    Title Should Be    title=${pagina_carrinho}
    Element Text Should Be    locator=${confirmado_no_carrinho}    expected=Adicionado ao carrinho

Remover o produto do carrinho
    Click Element    locator=${Ir_para_o_carrinho}
    Wait Until Element Is Visible    locator=${dentro_do_carrinho}
    Click Element    locator=${excluir_do_carrinho}



Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=${Titulo_carrinho_vazio}
    Element Should Contain    locator=(//span[contains(@class,'a-size-base')])[5]    expected=foi removido de Carrinho de compras.

       

#----------------------------area gherkin-----------------------------------------------------------------------

Dado que acesso a home page do site Amazon.com.br
    Acessar a home page do site Amazon.com.br
E verifico se o título da página fica "${TITULO}"
    Verificar se o título da página fica "${TITULO}"
Quando entrar no menu "Livros"
    Entrar no menu "Livros"
Então verifico se aparece a frase "${FRASE}"
    Verificar se aparece a frase "${FRASE}"
E verifico se aparece a categoria em Lojas em Destaque "${CATEGORIAS}"
    Verificar se aparece a categoria em Lojas em Destaque "${CATEGORIAS}"
E clico na aba pesquisar
    Clicar na aba pesquisar
Quando digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
Então clico no botão de pesquisa
    Clicar no botão de pesquisa
E verifico se estou na página de resultado da pesquisa 
    Verificar se estou na página de resultado da pesquisa
E verifico se o resultado da pesquisa está listando o produto pesquisado 
    Verificar se o resultado da pesquisa está listando o produto pesquisado 
E adiciono o produto ao carrinho
    Adicionar o produto ao carrinho
E verifico se o produto foi adicionado com sucesso ao "${pagina_carrinho}"
    Verificar se o produto foi adicionado com sucesso ao "${pagina_carrinho}"
E Removo o produto do carrinho
    Remover o produto do carrinho
E Verifico se o carrinho fica vazio 
    Verificar se o carrinho fica vazio    
