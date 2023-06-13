# criado apenas para fins de verificar se entendi direito as aulas de loops, sera feito
# cenarios para as diferentes formas de loops
*** Settings ***

*** Variables ***

@{numeros}    1     2     3     4     5     6     7     8     9     10    

*** Test Cases ***

Cenario 01 - percorrendo os numeros com FOR e IF
    percorrendo os numeros



*** Keywords ***

percorrendo os numeros
    FOR    ${num}    IN    @{numeros}
        IF    ${num}%5 == 0
           Log    Eu sou o número ${num}!

        ELSE IF    ${num}%5 != 0    
           Log    "Eu não sou o número 5 e nem o 10!"
   
        END
   
    END
         
        
  
