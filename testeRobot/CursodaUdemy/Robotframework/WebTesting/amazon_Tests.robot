*** Settings ***
documentation     Aqui sera o inicio dos testes, entrada e saida dos navegadores

Resource    amazon_Resources.robot

Test Setup      abrir navegador
Test Teardown   fechar navegador



*** Test Cases ***


Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]     este teste vai realizar acesso ao menu na amazon
    [Tags]      menus    categorias    
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"


Caso de teste 02 - Pesquisa de um Produto
    [Documentation]     este teste vai pesquisar um Xbox Series S na amazon
    [Tags]      busca_produto   Lista_busca
    Acessar a home page do site Amazon.com.br
    Clicar na aba pesquisar
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se estou na aba "RESULTADOS"
    Verificar o resultado da pesquisa,listando o produto "Xbox Series S" pesquisado 

     

