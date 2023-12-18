*** Settings ***
Library    DiffLibrary
Library    OperatingSystem


*** Variables ***

${arquivo_1}    testeRobot/CursoUdemyRobotAvançado/seção 3 libraries Auxiliares/TarefaDifflibrary/arquivostexto/file1.txt 
${arquivo_2}    testeRobot/CursoUdemyRobotAvançado/seção 3 libraries Auxiliares/TarefaDifflibrary/arquivostexto/file2.txt
${arquivo_3}    testeRobot/CursoUdemyRobotAvançado/seção 3 libraries Auxiliares/TarefaDifflibrary/arquivostexto/file3.txt 


*** Test Cases ***


case 01: preciso comparar esses dois arquivos file1.text e file2.text
    compare o primeiro com o segundo arquivo

case 02: preciso comparar esses dois arquivos file2.text e file3.text
    compare o segundo com o terceiro arquivo

case 03: preciso comparar esses dois arquivos file1.text e file3.text
    compare o primeiro com o terceiro arquivo


*** Keywords ***

compare o primeiro com o segundo arquivo
    Diff Files    ${arquivo_1}    ${arquivo_2}    fail=True
    
compare o segundo com o terceiro arquivo
    Run Keyword And Ignore Error    Diff Files    ${arquivo_2}    ${arquivo_3}    fail=True


compare o primeiro com o terceiro arquivo
    Run Keyword And Ignore Error    Diff Files    ${arquivo_1}    ${arquivo_3}    fail=True
  
  