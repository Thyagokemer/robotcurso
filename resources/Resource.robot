*** Settings ***
Documentation       Aqui estarão presentes todas as Keywords e variáveis que usaremos no projeto Automação Web.

Library         SeleniumLibrary
Library         String


*** Variable ***
${BROWSER}      chrome
${URL}          http://automationpractice.com   
${EMAIL}        maria12@gmail.com
${NOME}         Maria Loudes
${SOBRENOME}    Silva
${SENHA}        123456
${ENDERÇO}      Rua alberto antunes,123 
${ZIP}          11204
${ESTADO}       New York
${CIDADE}       New York
${ENDERÇO}      Rua alberto antunes,123 
${CELULAR}      555222333554
${REF}          Rua ao lado


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

Clicar no botão pesquisare
    Click Element           name=submit_search      

Conferir se o produto "${PRODUTO}" foi listado no site
    Title Should Be         Search - My Store
    Page Should Contain Image      xpath=//*[@id="center_column"]//*[@src="${URL}



Abrir navegadores
    Open Browser        browser=${BROWSER}
    Maximize Browser Window

Acessar a página home do site Automation Practices
    Go To           ${URL}
    Wait Until Element Is Visible       xpath=//*[@id='block_top_menu']/ul
    Title Should Be                     My Store 

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text                 name=search_query           ${PRODUTO}

Clicar no botão pesquisares
    Click Element           name=submit_search    

Conferir mensagem "${MSG_DESEJADA}"
    Page Should Contain      text=${MSG_DESEJADA}


Abrir navegad
    

    Open Browser        browser=${BROWSER}
    Maximize Browser Window

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias


Clicar na sub categoria "Summer Dresses"


Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página



Abrir no navegador
    Open Browser        browser=${BROWSER}
    Maximize Browser Window

Acessar a página home do sites
    Go To           ${URL}
    Wait Until Element Is Visible       xpath=//*[@id='block_top_menu']/ul
    Title Should Be                     My Store 

Clicar em "Sign in"
    Click Element       //*[contains(text(),'Sign in')]
    Sleep               2
  
Informar um e-mail válido
    Click Element       id=email_create
    Sleep               3

    Input Text          name=email_create     ${EMAIL}  
    Sleep               3

Clicar em "Create an account"
    Click Element       name=SubmitCreate
    Sleep               3
Preencher os dados obrigatórios
    
    ##Adcionar um nome
    Input Text      name=customer_firstname     ${NOME}
    Sleep           1
    ##Adcionar Sobrenome
    Input Text      name=customer_lastname     ${SOBRENOME}
    Sleep           1
    ##ADcionar email
    Input Text      name=email      ${EMAIL}
    Sleep           1
    ##adcionar Senha    
    Input Text      name=passwd         ${SENHA}
    Sleep           1
    ###Add nome
    Input Text      name=firstname      ${NOME}
    Sleep           1
    ###Add Sobrenome
    Input Text      name=lastname       ${SOBRENOME}
    Sleep           1
    ###Add Endereço
    
    Input Text      name=address1       ${ENDERÇO}
    Sleep           1
    ###Add  Cidade
    
    Input Text      name=city           ${CIDADE}
    Sleep           1
    ###Add Estado
    
    Select From List By Index   id_state    33    
    Sleep           1
    
    ###Add ZIP CODE
    Input Text      name=postcode        ${ZIP}
    Sleep           2
    ###Add País
    #O numero do value esta errado no Site
    ##Select From List By Index   id_country     21
    ##Sleep           1

    ###Add Celular    
    Input Text      name=phone_mobile     ${CELULAR}
    Sleep           1
    ###Add Referencia
    
    Input Text      name=alias             ${REF}
    Sleep           1

Submeter cadastro
    ### Clicar no Botão register
    Click Element   name=submitAccount  
    Sleep           5

Conferir se o cadastro foi efetuado com sucesso  
    Wait Until Element Is Visible       class="info-account"
    Title Should Be                      Welcome to your account. Here you can manage all of your personal information and orders.
 
