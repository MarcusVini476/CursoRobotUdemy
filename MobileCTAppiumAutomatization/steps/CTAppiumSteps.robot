*** Settings ***

Library     AppiumLibrary
Library    OperatingSystem
Resource    ../config/MobileManagerCTAppium.resource
Resource    ../pages/CTAppiumPage.resource




*** Keywords ***

que estou na página inicial do app
    open application    app=${ANDROID_APP_LOCAL}  remote_url=${LOCAL_URL}
    ...                 deviceName=${Device_Tester_Name}  platformName=${ANDROID_PLATFORM_NAME}
    ...                 automationName=${ANDROID_AUTOMATION_NAME}  autoGrantPermissions=${True}
    IMPLICIT WAIT    15
    
    AppiumLibrary.Wait Until Page Contains Element    ${Menu_About..._CTAppium}
    AppiumLibrary.Wait Until Element Is Visible       ${Menu_About..._CTAppium}
    AppiumLibrary.Capture Page Screenshot

valido o componente "${Nome_Pagina}" no menu do CTAppium
    IMPLICIT WAIT    15 
    AppiumLibrary.Element Should Be Visible    ${Menu_${Nome_Pagina}_CTAppium}  
    AppiumLibrary.Capture Page Screenshot

clico no botão "${Nome_BTN}" do Menu
    IMPLICIT WAIT    15
    AppiumLibrary.Click Element    ${Menu_${Nome_BTN}_CTAppium}
    AppiumLibrary.Capture Page Screenshot

valido o "${componente}" inicial da página "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    ${Title_${componente}_${nome_página}_CTAppium}
    AppiumLibrary.Capture Page Screenshot

valido o componente de texto "${componente}" dentro da página "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    ${TXT_${componente}_${nome_página}_CTAppium} 
    AppiumLibrary.Capture Page Screenshot

valido o componente de imagem "${componente}" dentro da página "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    ${IMG_${componente}_${nome_página}_CTAppium} 
    AppiumLibrary.Capture Page Screenshot

valido o componente de campo "${componente}" dentro da página "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    ${Field_${componente}_${nome_página}_CTAppium} 
    AppiumLibrary.Capture Page Screenshot

valido o componente de caixa "${componente}" dentro da página "${nome_página}" e seu texto "${Texto}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    ${Box_${componente}_${nome_página}_CTAppium} 
    AppiumLibrary.Element Should Contain Text    ${Box_${componente}_${nome_página}_CTAppium}     ${Texto}
    AppiumLibrary.Capture Page Screenshot 

valido o componente de botão "${componente}" dentro da página "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    ${BTN_${componente}_${nome_página}_CTAppium} 
    AppiumLibrary.Capture Page Screenshot

valido o componente de slider "${componente}" dentro da página "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    ${Slider_${componente}_${nome_página}_CTAppium} 
    AppiumLibrary.Capture Page Screenshot

valido o componente de select box "${componente}" dentro da página "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    ${Select_${componente}_${nome_página}_CTAppium} 
    AppiumLibrary.Capture Page Screenshot

valido o componente de switch "${componente}" dentro da página "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    ${Switch_${componente}_${nome_página}_CTAppium} 
    AppiumLibrary.Capture Page Screenshot

dentro do campo Nome na página de "${nome_página}" devo inserir o nome "${Texto}"
    IMPLICIT WAIT    15
    AppiumLibrary.Input Text    ${Field_CampoNome_${nome_página}_CTAppium}    ${Texto}
    AppiumLibrary.Capture Page Screenshot

clico no botão "${botao}" dentro de "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Click Element    ${BTN_${botao}_${nome_página}_CTAppium}
    AppiumLibrary.Capture Page Screenshot

escolho a opção "${Produto}" dentro de "${nome_página}"
    IMPLICIT WAIT    15
    AppiumLibrary.Click Element    ${Escolhe_${Produto}_${nome_página}_CTAppium}
    AppiumLibrary.Capture Page Screenshot

valido as informações salvas: Nome:"${validar}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible    xpath=//android.widget.TextView[@text="Nome: ${validar}"]
    AppiumLibrary.Capture Page Screenshot
valido as informações salvas: Console:"${validar}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible     xpath=//android.widget.TextView[@text="Console: ${validar}"]
    AppiumLibrary.Capture Page Screenshot
valido as informações salvas: Slider:"${validar}"
    IMPLICIT WAIT    15
    Run Keyword And Ignore Error   AppiumLibrary.Element Should Be Visible     xpath=//android.widget.TextView[@text="Slider: ${validar}"]
    AppiumLibrary.Capture Page Screenshot
valido as informações salvas: Switch:"${validar}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible     xpath=//android.widget.TextView[@text="Switch: ${validar}"]
    AppiumLibrary.Capture Page Screenshot
valido as informações salvas: Checkbox:"${validar}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible      xpath=//android.widget.TextView[@text="Checkbox: ${validar}"]
    AppiumLibrary.Capture Page Screenshot
valido as informações salvas: Data:"${validar}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible      xpath=//android.widget.TextView[@text="Data: ${validar}"]
    AppiumLibrary.Capture Page Screenshot
valido as informações salvas: Hora:"${validar}"
    IMPLICIT WAIT    15
    AppiumLibrary.Element Should Be Visible     xpath=//android.widget.TextView[@text="Hora: ${validar}"]
    AppiumLibrary.Capture Page Screenshot

devo aguardar mensagem de carregando dentro de "Formulário"
    IMPLICIT WAIT    15
    AppiumLibrary.Wait Until Page Does Not Contain    ${ProgressBar_carregando_Formulário_CTAppium}
    AppiumLibrary.Capture Page Screenshot

clico no botão Switch dentro de "Formulário"
    IMPLICIT WAIT    15
    AppiumLibrary.Click Element    ${Switch_Switch_Formulário_CTAppium}
    AppiumLibrary.Capture Page Screenshot


clico no botão Selecionar Caixa dentro de "Formulário"
    IMPLICIT WAIT    15
    AppiumLibrary.Click Element    ${Select_SelecionarCaixa_Formulário_CTAppium}
    AppiumLibrary.Capture Page Screenshot

arrasto o Slider dentro de "Formulário" em até "${valor}"%
    ${porcentagemCalculada}    Evaluate    (${valor}*720)/100
    AppiumLibrary.Swipe    0    395    ${porcentagemCalculada}    715    1000
    Log    ${porcentagemCalculada}
    AppiumLibrary.Capture Page Screenshot

espero o campo nome ficar vazio 
    IMPLICIT WAIT    15
    AppiumLibrary.Wait Until Element Is Visible    ${Field_CampoNome_Formulário_CTAppium}               












# ${Status_Nome_Formulário_CTAppium}                   
# ${Status_xone_Formulário_CTAppium}                  
# ${Status_ps4_Formulário_CTAppium}                    xpath=//android.widget.TextView[@text="Console: ps4"]
# ${Status_switch_Formulário_CTAppium}                 xpath=//android.widget.TextView[@text="Console: switch"]
# ${Status_Slider_Formulário_CTAppium}                 xpath=//android.widget.TextView[@text="Slider: 25"]
# ${Status_Switch_Formulário_CTAppium}                 
# ${Status_Checkbox_Formulário_CTAppium}              
# ${Status_Data_Formulário_CTAppium}                  
# ${Status_Hora_Formulário_CTAppium}                   


# realizo um scroll down 
#     IMPLICIT WAIT    15 
#     AppiumLibrary.Swipe   219    1797    70    0    1000
#     AppiumLibrary.Capture Page Screenshot
