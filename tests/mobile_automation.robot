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