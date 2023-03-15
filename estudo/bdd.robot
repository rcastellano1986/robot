*** Settings ***
Library     SeleniumLibrary


*** Variables ***
#Dados do teste
${NomeDaMusica}     Adriana Grande Positions

#Variáveis de configuração
${url}          https://www.youtube.com/
${browser}      chrome

#Elementos
${Input_Pesquisa}   //input[@id="search"]
${Button_Pesquisa}  //button[@id="search-icon-legacy"]
${Primeiro}         (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}            //video[@class="video-stream html5-main-video"]

*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${url}  ${browser}
    
Quando digito o nome da música
    Input Text    ${Input_Pesquisa}    ${NomeDaMusica}

E clico no botão buscar
    Click Element    ${Button_Pesquisa}

E clico na primeira opção
    Wait Until Element Is Visible   ${Primeiro}     10
    Click Element                   ${Primeiro}

Então o vídeo é executado
    Wait Until Element Is Visible   ${Prova}        10
    Element Should Be Visible       ${Prova}
    Sleep    1s
    Close Browser

*** Test Cases ***
Cenário 1 em BDD:Executar video no site do youtube
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção
    Então o vídeo é executado
