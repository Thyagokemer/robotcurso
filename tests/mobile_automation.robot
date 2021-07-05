*** Settings ***
Documentation           Aqui estarão presentes todos os testes automatizados Mobile Android.

Library                 AppiumLibrary

Test Setup              Abrir o aplicativo
Test Teardown           Fechar o aplicativo

*** Test Case ***
Cenário: Pesquisar cursos do robot
    [Tags]          PESQUISA
    Dado que o cliente esteja na tela home
    E pesquisa por "robotframework"
    Quando clicar em Pesquisar
    Então serão apresentados vídeos sobre Robot Framework

Caso de Teste 02: Logar no YouTube
    [Tags]          LOGIN
    Abrir o aplicativo
    Logar no aplicativo com a conta x
    Entrar no menu “Explorar”
    Usar swipe de tela até o 10 item da tela
    Clicar no vídeo

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

Fechar o aplicativo
    Capture Page Screenshot
    Close Application

Dado que o cliente esteja na tela home
    Wait Until Element Is Visible     accessibility_id=YouTube

E pesquisa por "${PESQUISA}"
    Click Element                     accessibility_id=Pesquisar
    Input Text                        id=com.google.android.youtube:id/search_edit_text         ${PESQUISA}

Quando clicar em Pesquisar
    Press Keycode                     66

Então serão apresentados vídeos sobre Robot Framework
    Wait Until Element Is Visible     xpath=/hieraarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.view.ViewGroup/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.view.ViewGroup[3]/android.view.ViewGroup[1]


Abrir o aplicativo
    Open Application                http://localhost:4723/wd/hub
    ...                             automationName=uiautomator2
    ...                             platformName=Android
    ...                             deviceName=0051221219
    ...                             autoGrantPermissions=true
    ...                             appPackage=com.google.android.youtube
    ...                             appActivity=com.google.android.youtube.HomeActivity

Logar no aplicativo com a conta x
    Wait Until Element Is Visible       xpath=//android.widget.ImageView[@content-desc="Conta"]

    Click Element                       xpath=//android.widget.ImageView[@content-desc="Conta"]
    Click Element                       id=com.google.android.youtube:id/button
    Click Element                       id=com.google.android.youtube:id/name
    Wait Until Element Is Visible       xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText    
    Click Element                       xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText
    Input Text                          xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View[1]/android.widget.EditText    silvatadeu473@gmail.com
    Click Element                       xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button
    Click Element                       xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText
    Wait Until Element Is Visible       xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View         
    Input Text                          xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[3]/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[1]/android.widget.EditText    028465123
    Click Element                       xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.Button



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
    Swipe        ${start_x}=        Evaluate      ${element_location['x']} + (${element_size['327']} * 0.5)
    Swipe        ${start_y}=        Evaluate      ${element_location['y']} + (${element_size['1258']} * 0.7)
    Swipe        ${end_x}=          Evaluate      ${element_location['x']} + (${element_size['372']} * 0.5)
    Swipe        ${end_y}=          Evaluate      ${element_location['y']} + (${element_size['258']} * 0.3)
    Swipe        ${start_x}         ${start_y}         ${end_x}       ${end_y}    
    Sleep  1

Clicar no vídeo


