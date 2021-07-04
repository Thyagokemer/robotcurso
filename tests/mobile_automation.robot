*** Settings ***
Documentation           Aqui estarão presentes todos os testes automatizados Mobile Android.

Library                 AppiumLibrary

Test Setup              Abrir o aplicativo
Test Teardown           Fechar o aplicativo

*** Test Case ***
Cenário: Pesquisar cursos do robot
    ##[Tags]          PESQUISA
    ##Dado que o cliente esteja na tela home
    ##E pesquisa por "robotframework"
    ##Quando clicar em Pesquisar
    ##Então serão apresentados vídeos sobre Robot Framework

Caso de Teste 02: Logar no YouTube
    [Tags]          LOGIN
    #Abrir o aplicativo
    #Logar no aplicativo com a conta x
    #Entrar no menu “Explorar”
   # Usar swipe de tela até o 10 item da tela
   # Clicar no vídeo

Caso de Teste 03: Usar método Swipe na tela
    [Tags]          ROLAGEM
    Abrir o aplicativo
    Entrar no menu “Explorar”
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo

*** Variable ***
${TRENDING_BTN}          xpath=//android.widget.Button[@content-desc="Explorar"]/android.widget.TextView
${ROL_PAGE}              myElem=


*** Keywords ***

Abrir o aplicativo
    Open Application                http://localhost:4723/wd/hub
    ...                             automationName=uiautomator2
    ...                             platformName=Android
    ...                             deviceName=0051221219
    ...                             autoGrantPermissions=true
    ...                             appPackage=com.google.android.youtube
    ...                             appActivity=com.google.android.youtube.HomeActivity

Entrar no menu “Explorar”

    Click Element                    ${TRENDING_BTN}

Usar swipe de tela até o 10 item da tela   
    Swipe        ${start_x}=327        Evaluate      ${element_location['x']} + (${element_size['327']} * 0.5)
    Swipe        ${start_y}=1258       Evaluate      ${element_location['y']} + (${element_size['1258']} * 0.7)
    Swipe        ${end_x}=372        Evaluate      ${element_location['x']} + (${element_size['372']} * 0.5)
    Swipe        ${end_y}=258        Evaluate      ${element_location['y']} + (${element_size['258']} * 0.3)
    Swipe        ${start_x}         ${start_y}         ${end_x}       ${end_y}    
    Sleep  1

Clicar no vídeo


