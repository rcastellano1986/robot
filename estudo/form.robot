***Settings ***
Library  SeleniumLibrary

*** Variables ***
${input_name}           //input[@id="name"]
${input_phone}          //input[@id="phone"]
${input_email}          //input[@id="email"]
${input_password}       //input[@id="password"]
${textarea_address}     //textarea[@id="address"]
${button_submit}        //button[@name="submit"]


*** Keywords ***
abrir navegador e acessar site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation  chrome

preencher campos
    Input Text  ${input_name}           Raphael
    Sleep       3s
    Input Text  ${input_phone}          9865421545
    Sleep       3s
    Input Text  ${input_email}          raphael@teste.com
    Sleep       3s
    Input Text  ${input_password}       12345
    Sleep       3s
    Input Text  ${textarea_address}     xxxxxxxxxxxxxxxxxxxxxxxxxx
    Sleep       3s

clicar em submit
    Click Element    ${button_submit}

selecionar sexo
    Page should contain radio button    xpath:(//input[@name='optionsRadios'])
    Page should contain radio button    xpath:(//input[@value='option1'])
    Page should contain radio button    xpath:(//input[@value='option2'])
    Click Element    id:female
    Click Element    id:male
    Sleep    3s

fechar navegador
    Close Browser

*** Test Cases***
Cenário 1: Preencher formulário
    abrir navegador e acessar site
    preencher campos
    clicar em submit
    fechar navegador

Cenário 2: Selecionar checkBox
    abrir navegador e acessar site
    selecionar sexo
    fechar navegador