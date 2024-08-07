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
${dados_1}                   //html/body/nav/div/div/div[1]/ul/li[1]/a
${dados_2}                   //html/body/main/section/div/div[2]/div[1]/div/ul/li[2]/a
${r.e}                       //html/body/main/section/div/div[2]/div[2]/div



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

    Input Text       ${input_data}       10072007

    Capture Page Screenshot

    Input Text       ${input_resenha}    123456

    Capture Page Screenshot

clicar em submit
    Click Element    ${button_submit}

    Capture Page Screenshot
#----------------------------------------------------------------------------------------------------------------------------#

Clicar na pessoa
    Click Element    ${button_pessoa}
    Capture Page Screenshot



Clicar no botão de dados
    Click Element    ${dados_1}
    Capture Page Screenshot
    Sleep    5s



Clicar nas informações
    Click Element    ${dados_2}
    Sleep    5s



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

Cenario 2 Entrar nos dados
    Clicar na pessoa
    Clicar no botão de dados
    Clicar nas informações
    esperar prova
    Fechar Navegador