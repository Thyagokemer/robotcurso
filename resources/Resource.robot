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



