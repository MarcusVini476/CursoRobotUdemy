*** Settings ***

Library    AppiumLibrary
Resource    ../config/MobileManagerCTAppium.resource
Resource    ../resources/BDDpt-br.robot
Resource    ../steps/CTAppiumSteps.robot 


Test Teardown       Close Application
Suite Teardown      Close All Applications

*** Test Cases ***


Cenário 0001: validar o os botões no menu principal do CTAppium: botão "About..."
    [Tags]    CT0001    Menu    About...
    Dado que estou na página inicial do app
    Então valido o componente "About..." no menu do CTAppium
    

Cenário 0002: validar o os botões no menu principal do CTAppium: botão "Formulário"
    [Tags]    CT0002    Menu    Formulario
    Dado que estou na página inicial do app
    Então valido o componente "Formulário" no menu do CTAppium

Cenário 0003: validar o os botões no menu principal do CTAppium: botão "SeuBarriga Nativo"
    [Tags]    CT0003    Menu    SeuBarrigaNativo
    Dado que estou na página inicial do app
    Então valido o componente "SeuBarriga Nativo" no menu do CTAppium

Cenário 0004: validar o os botões no menu principal do CTAppium: botão "SeuBarriga Híbrido"
    [Tags]    CT0004    Menu    SeuBarrigaHibrido
    Dado que estou na página inicial do app
    Então valido o componente "SeuBarriga Híbrido" no menu do CTAppium

Cenário 0005: validar o os botões no menu principal do CTAppium: botão "Alertas"
    [Tags]    CT0005    Menu    Alertas
    Dado que estou na página inicial do app
    Então valido o componente "Alertas" no menu do CTAppium

Cenário 0006: validar o os botões no menu principal do CTAppium: botão "Splash"
    [Tags]    CT0006    Menu   Splash
    Dado que estou na página inicial do app
    Então valido o componente "Splash" no menu do CTAppium

Cenário 0007: validar o os botões no menu principal do CTAppium: botão "Abas"
    [Tags]   CT0007    Menu    Abas
    Dado que estou na página inicial do app
    Então valido o componente "Abas" no menu do CTAppium

Cenário 0008: validar o os botões no menu principal do CTAppium: botão "Accordion"
    [Tags]    CT0008    Menu   Accordion
    Dado que estou na página inicial do app
    Então valido o componente "Accordion" no menu do CTAppium

Cenário 0009: validar o os botões no menu principal do CTAppium: botão "Cliques"
   [Tags]     CT0009    Menu    Cliques
    Dado que estou na página inicial do app
    Então valido o componente "Cliques" no menu do CTAppium

Cenário 0010: validar o os botões no menu principal do CTAppium: botão "Swipe"
    [Tags]    CT0010    Menu    Swipe
    Dado que estou na página inicial do app
    Então valido o componente "Swipe" no menu do CTAppium

Cenário 0011: validar o os botões no menu principal do CTAppium: botão "Swipe List"
    [Tags]    CT0011    Menu    SwipeList
    Dado que estou na página inicial do app
    Então valido o componente "Swipe List" no menu do CTAppium

Cenário 0012: validar o os botões no menu principal do CTAppium: botão "Drag and drop"
    [Tags]    CT0012    Menu   DragAndDrop
    Dado que estou na página inicial do app
    Então valido o componente "Drag and drop" no menu do CTAppium

Cenário 0013: validar o os botões no menu principal do CTAppium: botão "Opção bem escondida"
    [Tags]    CT0013   Menu    OpcaoBemEscondida
    Dado que estou na página inicial do app
    Então valido o componente "Opção bem escondida" no menu do CTAppium 

Cenário 0014: Validar os componente dentro do botão About...
    [Tags]    CT0014   ValidarComponentes    About
    Dado que estou na página inicial do app
    Quando clico no botão "About..." do Menu
    Então valido o "titulo1" inicial da página "About..."
    E valido o componente de imagem "imagem1" dentro da página "About..."
    E valido o componente de texto "texto1" dentro da página "About..."
    E valido o componente de texto "texto2" dentro da página "About..."
    E valido o componente de texto "texto3" dentro da página "About..."

Cenário 0015: Validar os componente dentro do botão Formulário
    [Tags]    CT0015   ValidarComponentes    Formulario
    Dado que estou na página inicial do app
    Quando clico no botão "Formulário" do Menu
    Então valido o "titulo1" inicial da página "Formulário"
    E valido o componente de campo "CampoNome" dentro da página "Formulário"
    E valido o componente de caixa "CaixaConsole" dentro da página "Formulário" e seu texto "XBox One"
    E valido o componente de botão "BotaoCaixaConsole" dentro da página "Formulário"
    E valido o componente de slider "Slider" dentro da página "Formulário"
    E valido o componente de select box "SelecionarCaixa" dentro da página "Formulário"
    E valido o componente de switch "Switch" dentro da página "Formulário"
    E valido o componente de texto "CampoData" dentro da página "Formulário"
    E valido o componente de texto "CampoHorario" dentro da página "Formulário"
    E valido o componente de botão "Salvar" dentro da página "Formulário"
    E valido o componente de botão "SalvarDemorado" dentro da página "Formulário"
    E valido o componente de botão "Limpar" dentro da página "Formulário"

Cenário 0016: Validar o nome, escolher o produto PS4, verificar a caixa desmarcada, switch ativado e Clicar em salvar produto
    [Tags]    CT0016   ValidarBotoes   Formulario
    Dado que estou na página inicial do app
    E clico no botão "Formulário" do Menu
    E dentro do campo Nome na página de "Formulário" devo inserir o nome "Fulano de tal"
    E clico no botão "BotaoCaixaConsole" dentro de "Formulário"
    E escolho a opção "PS4" dentro de "Formulário"
    Quando clico no botão "Salvar" dentro de "Formulário"
    E valido as informações salvas: Nome:"Fulano de tal"
    E valido as informações salvas: Console:"ps4"
    E valido as informações salvas: Slider:"25"
    E valido as informações salvas: Switch:"On"
    E valido as informações salvas: Checkbox:"Desabilitado"
    E valido as informações salvas: Data:"01/01/2000"
    E valido as informações salvas: Hora:"09:00"

Cenário 0017: Validar o nome, escolher o produto Nintendo, verificar a caixa marcada, switch desativado, slider em 45% e Clicar em salvar demorado o produto
    [Tags]    CT0017   ValidarBotoes   Formulario
    Dado que estou na página inicial do app
    E clico no botão "Formulário" do Menu
    E dentro do campo Nome na página de "Formulário" devo inserir o nome "Ciclano de tal"
    E clico no botão "BotaoCaixaConsole" dentro de "Formulário"
    E escolho a opção "Nintendo" dentro de "Formulário"
    E arrasto o Slider dentro de "Formulário" em até "45"%
    E clico no botão Switch dentro de "Formulário"
    E clico no botão Selecionar Caixa dentro de "Formulário"
    Quando clico no botão "SalvarDemorado" dentro de "Formulário"
    Então devo aguardar mensagem de carregando dentro de "Formulário"
    E valido as informações salvas: Nome:"Ciclano de tal"
    E valido as informações salvas: Console:"switch"
    E valido as informações salvas: Slider:"45"
    E valido as informações salvas: Switch:"Off"
    E valido as informações salvas: Checkbox:"Habilitado"
    E valido as informações salvas: Data:"01/01/2000"
    E valido as informações salvas: Hora:"09:00"











    