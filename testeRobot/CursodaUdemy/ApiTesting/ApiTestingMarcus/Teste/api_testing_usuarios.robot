*** Settings ***

resource    ../Resources/api_testing_usuarios.resource



*** Variables ***




*** Test Cases ***

Cenario 01 - Cadastrar um novo usuário com sucesso na ServeRest
    Criar um novo usuario
    Cadastrar um usuário criado na ServeRest    ${Email_Usuario}    201
    Conferir se o usuário foi cadastrado corretamente

Cenario 02 - Cadastrar um email ja usado
    Criar um novo usuario
    Cadastrar um usuário criado na ServeRest    ${Email_Usuario}    201
    Repetir o cadastro com mesmo e-mail
    garantir que a mensagem de erro é "Este email já está sendo usado"


Cenario 03 - Acessar o ID de usuario ja existente
    Criar um novo usuario
    Cadastrar um usuário criado na ServeRest    ${Email_Usuario}    201
    consultar os dados do novo usuario
    conferir dados retornados


Cenario 04 - Criar um Usuario e fazer o Login na ServeReste
    Criar um novo usuario
    Cadastrar um usuário criado na ServeRest    ${Email_Usuario}    201
    Realizar Login com o usuário
    Conferir se o Login ocorreu com sucesso