*** Settings ***
Library           SeleniumLibrary
Library           webdrivermanager
documentation     Aqui sera o inicio dos testes, entrada e saida dos navegadores

Resource    amazon_Resources.robot

Test Setup      abrir navegador
Test Teardown   fechar navegador

# em caso de precisar mantar o browser aberto utilizar o seguinte setup


# Test Setup    manter navegador


*** Test Cases ***
# usar  robot -d resultados amazon_Tests.robot   para rodar os testes


Caso de teste 01 - Acesso ao menu "Livros"
    [Documentation]     este teste vai realizar acesso ao menu na amazon
    [Tags]      menus    categorias    
    Dado que acesso a home page do site Amazon.com.br
    E verifico se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Quando entrar no menu "Livros"
    Então verifico se aparece a frase "Loja de Livros"
    E verifico se o título da página fica "Livros | Amazon.com.br"
    E verifico se aparece a categoria em Lojas em Destaque "Indicações de Livros"
    E verifico se aparece a categoria em Lojas em Destaque "Livros mais vendidos"
    E verifico se aparece a categoria em Lojas em Destaque "Livros Geek"
    E verifico se aparece a categoria em Lojas em Destaque "Livros exclusivos Amazon"
    E verifico se aparece a categoria em Lojas em Destaque "Hqs e mangás"
    E verifico se aparece a categoria em Lojas em Destaque "Livros Infantis"
    E verifico se aparece a categoria em Lojas em Destaque "Livros Clássicos"
    E verifico se aparece a categoria em Lojas em Destaque "Livros de direito"
    E verifico se aparece a categoria em Lojas em Destaque "Livros de Medicina"
    E verifico se aparece a categoria em Lojas em Destaque "Livros de Administração"
    E verifico se aparece a categoria em Lojas em Destaque "Livros para exames e concursos"

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]     este teste vai pesquisar um Xbox Series S na amazon
    [Tags]      busca_produto   Lista_busca
    Dado que acesso a home page do site Amazon.com.br
    E clico na aba pesquisar
    Quando digitar o nome de produto "One Piece Vol. 7" no campo de pesquisa
    Então clico no botão de pesquisa
    E verifico se estou na página de resultado da pesquisa 
    E verifico se o resultado da pesquisa está listando o produto pesquisado 

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Dado que acesso a home page do site Amazon.com.br
    E Clico na aba pesquisar
    Quando digitar o nome de produto "One Piece - 101" no campo de pesquisa
    Então clico no botão de pesquisa
    E verifico se o resultado da pesquisa está listando o produto pesquisado 
    E adiciono o produto ao carrinho
    E verifico se o produto foi adicionado com sucesso ao "Carrinho de compras da Amazon.com"
 
Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Dado que acesso a home page do site Amazon.com.br
    E Clico na aba pesquisar
    Quando digitar o nome de produto "One Piece - 101" no campo de pesquisa
    Então clico no botão de pesquisa
    E verifico se o resultado da pesquisa está listando o produto pesquisado 
    E adiciono o produto ao carrinho
    E verifico se o produto foi adicionado com sucesso ao "Carrinho de compras da Amazon.com"
    E Removo o produto do carrinho
    E Verifico se o carrinho fica vazio     

