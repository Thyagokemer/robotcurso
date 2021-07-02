*** Settings ***
Documentation       Aqui estarão presentes todas as Keywords e variáveis que usaremos no projeto Automação Web.

Library         SeleniumLibrary
Library         String


*** Variable ***
${BROWSER}      chrome
${URL}          http://automationpractice.com   


*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser   

Acessar a página home do site Automation Practice
    Go To           ${URL}
    Wait Until Element Is Visible       xpath=//*[@id='block_top_menu']/ul
    Title Should Be                     My Store 

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text                 name=search_query           ${PRODUTO}    

Clicar no botão pesquisar
    Click Element           name=submit_search      

Conferir se o produto "${PRODUTO}" foi listado no site
    Title Should Be         Search - My Store
    Page Should Contain Image      xpath=//*[@id="center_column"]//*[@src="${URL}



*** Keywords ***
###item não existente - Caso teste 2

Abrir navegador
    Open Browser        browser=${BROWSER}
    Maximize Browser Window

Acessar a página home do site Automation Practice
    Go To           ${URL}
    Wait Until Element Is Visible       xpath=//*[@id='block_top_menu']/ul
    Title Should Be                     My Store 

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text                 name=search_query           ${PRODUTO}

Clicar no botão pesquisar
    Click Element           name=submit_search    

Conferir mensagem "${MSG_DESEJADA}"
    Page Should Contain      text=${MSG_DESEJADA}


*** Keywords ***
#caso teste3

Abrir navegador
    Open Browser        browser=${BROWSER}
    Maximize Browser Window



*** Keywords ***
#caso teste4

Abrir navegador
    Open Browser        browser=${BROWSER}
    Maximize Browser Window

Clicar em "Sign in"
    Click Element       name=Sign in

Informar um e-mail válido
    ${EMAIL}        maria123@gmail.com
    Input Text      id=email_create     ${EMAIL}  

Clicar em "Create an account"
    Click Element       name=SubmitCreate

Preencher os dados obrigatórios
    Click Element       id=id_gender2
    ##Adcionar um nome
    ${NOME}     Maria Loudes
    Input Text      name=customer_firstname     ${NOME}
    ##Adcionar Sobrenome
    ${SOBRENOME}        Silva
    Input Text      name=customer_lastname     ${SOBRENOME}
    ##ADcionar email
    Input Text      name=email      ${EMAIL}
    ##adcionar Senha
    ${SENHA}        123456
    Input Text      name=passwd         ${SENHA}
    
