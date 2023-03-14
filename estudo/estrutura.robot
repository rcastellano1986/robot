***Settings ***
Library  SeleniumLibrary

*** Variables ***
${variavel1}  teste
${variavel2}  hhhhh
${variavel3}  1243444

*** Keywords ***
abrir site da google
    Open Browser    https://www.google.com.br/  chrome
fechar navegador
    Close Browser

abrir site da globo
    Open Browser    http://oglobo.com.br/  chrome
    Close Browser

*** Test Cases***
Cenário 1: Teste de abrir navegador
    abrir site da google
    fechar navegador

Cenário 2: Teste de abrir site globo
    abrir site da globo
    fechar navegador