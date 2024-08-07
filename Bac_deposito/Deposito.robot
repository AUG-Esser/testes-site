*** Settings ***
Library         SeleniumLibrary

*** Variables ***

${input_email}               //input[@id="email"]
${input_senha}               //input[@id="senha"]
${input_data}                //input[@id="data"]
${input_resenha}             //input[@id="resenha"]
${input_cpf}                 (//input[@id="cpf"])[2]
${input_nome}                //input[@id="nome"]
${input_nome-pix}            (//input[@id="nome"])[2]
${input_sobrenome}           (//input[@id="sobrenome"])[2]
${input_saldo-dep}           //input[@id="saldo-deposito-input"]
${button_submit}             //button[@class="btn btn-primario w-100"]
${button_criar}              //html/body/nav/div/div/form/a[2]

# ------------------------------------------------------------------------

${href_Depositar1}           //html/body/nav/div/div/a[3]
#${Div_Bonus}                 //*[@id="deposito-1"]/div/div[2]/div[1]/label[2]/div
${Avançar_Bonus}             (//button[@class="btn btn-primario w-100"])[2]
${select_saque}              //html/body/div[7]/div/div/div[2]/div/div[2]/div[2]/div/div[2]/div/form/div/select
${Two}                       //html/body/div[7]/div/div/div[2]/div/div[2]/div[2]/div/div[2]/div/form/div/select/option[3]
${Anvançar_metodo}           //*[@id="deposito-2"]/div/div[3]/div[2]/button
${depositar_ultimo}          //*[@id="saldo-deposito-button"]

# ------------------------------------------------------------------------

${r.e}                     //html/body/nav/div/div/a[1]/div


*** Keywords ***

abrir chrome e acessar site
    
    Open Browser     https://pbstech.net/projetos/ludiwin-v2/  chrome

    Maximize Browser Window

    Capture Page Screenshot

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
    


clicar em submit

    Click Element    ${button_submit}

    Sleep    2s

    Capture Page Screenshot



clicar no botão de deposito 

    Sleep    1s

    Click Element    ${href_Depositar1}

    Capture Page Screenshot

escolher bonus
    
    Sleep     5s

    Click Element    ${Avançar_Bonus}

    Capture Page Screenshot

escolher metodo de pagamento
    
    Sleep     1s
    Wait Until Element Is Visible     ${select_saque}

    Capture Page Screenshot

    Click Element    ${select_saque}
    Sleep     1s

    Capture Page Screenshot

    Click Element    ${Two}
    Sleep     1s

    Capture Page Screenshot

    Click Element    ${Anvançar_metodo} 

    Capture Page Screenshot



inserir as informações

    Sleep     1s
    Input Text     ${input_cpf}             22875490800

    Capture Page Screenshot

    Input Text     ${input_nome-pix}        xxxxx

    Capture Page Screenshot

    Input Text     ${input_sobrenome}       xxxxxx

    Capture Page Screenshot
    Input Text     ${input_saldo-dep}       100

    Capture Page Screenshot



clicar sacar   

    Click Element    ${depositar_ultimo} 
    


Esperar Prova

    Wait Until Element Is Visible    ${r.e}

    Capture Page Screenshot



fechar navegador

    Sleep     3s

    Close Browser


*** Test Cases ***
Cenario 1 fazer cadastro
    abrir chrome e acessar site
    preencher campos
    clicar em submit

Cenario 2 fazer deposito
    clicar no botão de deposito
    escolher bonus
    escolher metodo de pagamento
    inserir as informações
    clicar sacar
    Esperar Prova
    fechar navegador