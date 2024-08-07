** Settings ***
Library    SeleniumLibrary

*** Variables ***

${input_email}               //input[@id="email"]
${input_senha}               //input[@id="senha"]
${input_data}                //input[@id="data"]
${input_resenha}             //input[@id="resenha"]
${button_submit}             //button[@class="btn btn-primario w-100"]
${button_criar}              //html/body/nav/div/div/form/a[2]
${r.e}                       //html/body/nav/div/div/a[1]/div


*** Keywords ***

abrir chrome e acessar site

    Open Browser     https://pbstech.net/projetos/ludiwin-v2/index.php  chrome

    Maximize Browser Window

    Click Element    ${button_criar}



preencher campos

    Capture Page Screenshot

    Input Text       ${input_email}      zenimguem@gmail.com

    Capture Page Screenshot

    Input Text       ${input_senha}      123456

    Capture Page Screenshot

    Input Text       ${input_data}       10092000

    Capture Page Screenshot

    Input Text       ${input_resenha}    123456

    Capture Page Screenshot



clicar em submit

    Click Element    ${button_submit}



esperar prova

    Wait Until Element Is Visible    ${r.e}

    Capture Page Screenshot



Fechar Navegador

    Close Browser


*** Test Cases ***
Cenario 1 Cadastro bem sucedido
    abrir chrome e acessar site
    preencher campos
    clicar em submit
    esperar prova
    Fechar Navegador
