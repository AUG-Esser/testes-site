** Settings ***
Library    SeleniumLibrary

*** Variables ***

${input_email}               //input[@id="email"]
${input_senha}               //input[@id="senha"]
${input_data}                //input[@id="data"]
${input_resenha}             //input[@id="resenha"]
${button_submit}             //button[@class="btn btn-primario w-100"]
${button_login}              //html/body/nav/div/div/form/a[1]
${r.e}                     //html/body/nav/div/div/a[1]/div

*** Keywords ***

abrir chrome e acessar site
    Open Browser     https://pbstech.net/projetos/ludiwin-v2/index.php  chrome

    Maximize Browser Window

    Capture Page Screenshot

    Click Element    ${button_login}


preencher campos

    Capture Page Screenshot

    Input Text       ${input_email}      zenimguem@gmail.com

    Capture Page Screenshot

    Input Text       ${input_senha}      123456


clicar em submit

    Click Element    ${button_submit}

    Sleep     2s

    Capture Page Screenshot

    Sleep     2s



esperar prova

    Wait Until Element Is Visible    ${r.e}    

    Capture Page Screenshot



Fechar Navegador
    Close Browser

#----------------------------------------------------------------------------    

*** Test Cases ***
Cenario 1 Cadastro bem sucedido
    abrir chrome e acessar site
    preencher campos
    clicar em submit
    esperar prova
    Fechar Navegador
