** Settings ***
Library    SeleniumLibrary

*** Variables ***

${input_email}               //input[@id="email"]
${input_senha}               //input[@id="senha"]
${input_data}                //input[@id="data"]
${input_resenha}             //input[@id="resenha"]
${button_submit}             //button[@class="btn btn-primario w-100"]
${button_criar}              //html/body/nav/div/div/form/a[2]
${r.e}                       //button[@class="btn btn-primario w-100"]

*** Keywords ***


Reabrir chrome e acessar o site

    Open Browser     https://pbstech.net/projetos/ludiwin-v2/index.php  chrome

    Maximize Browser Window
    
    Capture Page Screenshot

    Click Element    ${button_criar}



Preencher campos de forma errada   

    Capture Page Screenshot

    Input Text       ${input_senha}      123456

    Capture Page Screenshot

    Input Text       ${input_data}       10092000

    Capture Page Screenshot

    Input Text       ${input_resenha}    123456



Clicar no botão submit

    Click Element    ${button_submit}
    
    Sleep    3s



Esperar Prova

    Wait Until Element Is Visible    ${r.e}

    Capture Page Screenshot



Fechar Navegador
    Close Browser



*** Test Cases ***

Cenario 1 Cadastro mal sucedido
    Reabrir chrome e acessar o site
    Preencher campos de forma errada
    Clicar no botão submit
    Esperar Prova
    Fechar Navegador