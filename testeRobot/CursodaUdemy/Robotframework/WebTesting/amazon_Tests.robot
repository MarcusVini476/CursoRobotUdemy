*** Settings ***
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
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Livros"
    Verificar se aparece a frase "Loja de Livros"
    Verificar se o título da página fica "Livros | Amazon.com.br"
    Verificar se aparece a categoria em Lojas em Destaque "Indicações de Livros"
    Verificar se aparece a categoria em Lojas em Destaque "Livros mais vendidos"
    Verificar se aparece a categoria em Lojas em Destaque "Livros Geek"
    Verificar se aparece a categoria em Lojas em Destaque "Livros exclusivos Amazon"
    Verificar se aparece a categoria em Lojas em Destaque "Hqs e mangás"
    Verificar se aparece a categoria em Lojas em Destaque "Livros Infantis"
    Verificar se aparece a categoria em Lojas em Destaque "Livros Clássicos"
    Verificar se aparece a categoria em Lojas em Destaque "Livros de direito"
    Verificar se aparece a categoria em Lojas em Destaque "Livros de Medicina"
    Verificar se aparece a categoria em Lojas em Destaque "Livros de Administração"
    Verificar se aparece a categoria em Lojas em Destaque "Livros para exames e concursos"

Caso de teste 02 - Pesquisa de um Produto
    [Documentation]     este teste vai pesquisar um Xbox Series S na amazon
    [Tags]      busca_produto   Lista_busca
    Acessar a home page do site Amazon.com.br
    Clicar na aba pesquisar
    Digitar o nome de produto "One Piece Vol. 7" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se estou na página de resultado da pesquisa 
    Verificar se o resultado da pesquisa está listando o produto pesquisado 

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "One Piece - 101" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se o resultado da pesquisa está listando o produto pesquisado 
    Adicionar o produto ao carrinho
    Verificar se o produto foi adicionado com sucesso ao "Carrinho de compras da Amazon.com"
 
Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "One Piece - 101" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar se o resultado da pesquisa está listando o produto pesquisado 
    Adicionar o produto ao carrinho
    Verificar se o produto foi adicionado com sucesso ao "Carrinho de compras da Amazon.com"
    Remover o produto do carrinho
    Verificar se o carrinho fica vazio     

