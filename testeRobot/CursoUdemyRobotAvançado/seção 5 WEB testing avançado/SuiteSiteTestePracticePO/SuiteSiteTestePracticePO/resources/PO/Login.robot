*** Settings ***
Resource       ../Resource.robot 
Library        SeleniumLibrary
Library        String
 


*** Variables ***

${SignIn_BTN_Home}            xpath=//*[@id="header"]//*[@class="login"][contains(text(),"Sign in")]
${EMAIL}                      Generate Random String
${Email_FIELD}                id=email_create
${Create_Account_BTN}         id=SubmitCreate
${Account_Creation_FIELD}     xpath=//*[@id="account-creation_form"]//h3[contains(text(),"Your personal information")]
${Gender_FIELD}    id=id_gender2
${Firstname_FIELD}    id=customer_firstname
${Lastname_FIELD}    id=customer_lastname
${Password_FIELD}    id=passwd
${Address_FIELD}    id=address1 
${City_FIELD}    id=city 
${ID_State_FIELD}    id=id_state
${Postcode_FIELD}    id=postcode
${Mobile_Phone_FIELD}    id=phone_mobile
${Submit_Account_BTN}    submitAccount
${Success_Message_TEXT}    xpath=//*[@id="center_column"]/p
${Username_Signup_VERIFICATION}    xpath=//*[@id="header"]/div[2]//div[1]/a/span

*** Keywords ***

Clicar em "Sign in"
    Click Element    ${SignIn_BTN_Home}    

Informar um e-mail válido
    Wait Until Element Is Visible   ${Email_FIELD}
    Input Text                      ${Email_FIELD}    ${EMAIL}@testerobot.com

Clicar em "Create an account"
    Click Button    ${Create_Account_BTN}

Preencher os dados obrigatórios
    Wait Until Element Is Visible   ${Account_Creation_FIELD}
    Click Element                   ${Gender_FIELD}
    Input Text                      ${Firstname_FIELD}    May
    Input Text                      ${Lastname_FIELD}     Fernandes
    Input Text                      ${Password_FIELD}                123456
    Input Text                      ${Address_FIELD}             Rua Framework, Bairro Robot
    Input Text                      ${City_FIELD}                  Floripa
    Set Focus To Element            ${ID_State_FIELD}
    ### No firefox ocorreu problema ao achar o listbox State, então coloquei um if para esperar
    ### pelo elemento quando for firefox
    Run Keyword If    '${BROWSER}'=='firefox'  Wait Until Element Is Visible   id=id_state
    Select From List By Index       ${ID_State_FIELD}              9
    Input Text                      ${Postcode_FIELD}              12345
    Input Text                      ${Mobile_Phone_FIELD}          99988877

Submeter cadastro
    Click Button    ${Submit_Account_BTN}

### Conferências
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    ${Success_Message_TEXT}
    Element Text Should Be           ${Success_Message_TEXT}
    ...    Welcome to your account. Here you can manage all of your personal information and orders.
    Element Text Should Be           ${Username_Signup_VERIFICATION}    May Fernandes