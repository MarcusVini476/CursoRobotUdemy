*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser   about:blank   ${BROWSER}   remote_url=http://172.23.138.1:4444/wd/hub

Fechar navegador
    Close Browser
