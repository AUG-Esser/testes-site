** Settings ***
Library    SeleniumLibrary

*** Variables ***

${input_email}               //input[@id="email"]
${input_senha}               //input[@id="senha"]
${input_data}                //input[@id="data"]
${input_resenha}             //input[@id="resenha"]
${button_submit}             //button[@class="btn btn-primario w-100"]
${button_criar}              //html/body/nav/div/div/form/a[2]
${button_pessoa}             //html/body/nav/div/div/div[1]/a
${historico}                 //html/body/nav/div/div/div[1]/ul/li[5]/a
${r.e}                     //html/body/main/section[2]/div/div/div/div/nav/ul

*** Keywords ***

abrir chrome e acessar site
    Open Browser     https://pbstech.net/projetos/ludiwin-v2/   chrome

    Maximize Browser Window
    
    Capture Page Screenshot

    Click Element    ${button_criar}



preencher campos
    Capture Page Screenshot

    Input Text       ${input_email}      zenimguem@gmail.com

    Capture Page Screenshot

    Input Text       ${input_senha}      123456

    Capture Page Screenshot

    Input Text       ${input_data}       10092007

    Capture Page Screenshot

    Input Text       ${input_resenha}    123456



clicar em submit
    Click Element    ${button_submit}

    Capture Page Screenshot

#----------------------------------------------------------------------------------------------------------------------------#

Clicar na pessoa
    Click Element    ${button_pessoa}

    Capture Page Screenshot



Clicar no botão de historico
    Click Element    ${historico}
    Sleep     2s
    

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

Cenario 2 Entrar no historico
    Clicar na pessoa
    Clicar no botão de historico
    esperar prova
    Fechar Navegador
    
