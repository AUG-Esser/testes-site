** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Parte do Cadastro
${input_email}               //input[@id="email"]
${input_senha}               //input[@id="senha"]
${input_data}                //input[@id="data"]
${input_resenha}             //input[@id="resenha"]
${button_submit}             //button[@class="btn btn-primario w-100"]
${button_criar}              //html/body/nav/div/div/form/a[2]

#Parte de mudar informações da conta
${button_pessoa}             //html/body/nav/div/div/div[1]/a
${button_conta}              //html/body/nav/div/div/div[1]/ul/li[1]/a
${button_editar_tel}         //html/body/main/section/div/div[2]/div[2]/div/form/div/div[4]/div/button
${button_editar_email}       //html/body/main/section/div/div[2]/div[2]/div/form/div/div[2]/div/button
${button_editar_senha}       //html/body/main/section/div/div[2]/div[2]/div/form/div/div[3]/div/button
${input_edit_celular}        //input[@id="celular"]
${button_salvar}             //html/body/main/section/div/div[2]/div[2]/div/form/div/div[5]/button

#"Prova"
${r.e}                       //html/body/nav/div/div/a[1]/div


*** Keywords ***

#Fazer cadastro
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
    Capture Page Screenshot

#Mudando  informações

Clicar no personagem
    Click Element    ${button_pessoa}
    Capture Page Screenshot


Clicar em minha conta
    Click Element    ${button_conta}
    Capture Page Screenshot


Substituir telefone
    Click Element    ${button_editar_tel}
    Input Text       ${input_edit_celular}    11953637313
    Capture Page Screenshot


substituir email
    Click Element    ${button_editar_email}
    Input Text       ${input_email}      gutinho@gmail.com
    Capture Page Screenshot


substituir senha
    Click Element    ${button_editar_senha}
    Input Text       ${input_senha}      guto01
    Capture Page Screenshot


clicar em salvar
    Click Element    ${button_salvar}
    

esperar prova
    Wait until element is visible    ${r.e}
    Capture Page Screenshot


fechar navegador
    Close Browser



*** Test Cases ***
Cenario 1 Cadastro bem sucedido
    abrir chrome e acessar site
    preencher campos
    clicar em submit
    
Cenario 2 editar informações da conta
    Clicar no personagem
    Clicar em minha conta
    Substituir telefone
    substituir email
    substituir senha
    clicar em salvar
    esperar prova
    Fechar Navegador
