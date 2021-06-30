*** Settings ***
Documentation       Aqui estarão presentes todos os exercicios do prime experts.    


*** Variable ***
${NOME}     Thyago  

&{PESSOA}      
...         nome=Thyago
...         sobrenome=Kemer         
...         idade=29
...         carro=GOL 
...         sexo=Masculino
...         cpf=12345678912

@{FRUTAS}     abacaxi    laranja     morango     banana

@{PAISES}     Brasil      Japão     Italia      Canada  


*** Test Case ***
Cenario: Imprimir todas as informações da PESSOA contidas no dicionario 
    Log To Console          ${PESSOA.nome}      
    Log To Console          ${PESSOA.sobrenome}
    Log To Console          ${PESSOA.idade}     
    Log To Console          ${PESSOA.carro}
    Log To Console          ${PESSOA.sexo}
    Log To Console          ${PESSOA.cpf}

Cenario: Imprimir lista de Frutas 
    Log To Console           ${FRUTAS[0]}
    Log To Console           ${FRUTAS[1]}
    Log To Console           ${FRUTAS[2]}
    Log To Console           ${FRUTAS[3]}
    

Cenario: Meu teste de soma
    [Tags]      SOMA
    ${RESULTADO}                Somar dois numeros   10  35
    Log To Console              ${RESULTADO}


Cenario: Criando meu e-mail     
    [Tags]      EMAIL
    ${EMAIL_NOVO}       Criando e-mail  Thyago  Kemer  29   
    Log To Console      ${EMAIL_NOVO}       

Contar de 0 a 9
    [Tags]          LOOPING
    Contar de 0 a 9

    Percorrer itens de uma lista

Contador de 0 a 10
    [Tags]         CONTADOR
    Contador de 0 a 10

*** Keywords ***
Somar dois numeros
    [Arguments]     ${NUM_A}       ${NUM_B}
    ${SOMA}         Evaluate       ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

Somar os numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}         Evaluate     ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}  

Criando e-mail
    [Arguments]     ${NOME}     ${SOBRENOME}        ${IDADE}
    ${EMAIL}        Catenate        SEPARATOR=_        ${NOME}      ${SOBRENOME}        ${IDADE}@robot.com      
    [Return]        ${EMAIL}

Contar de 0 a 9
    FOR    ${count}     IN RANGE    0   9       
        Log To Console      ${count}    
    END    

Percorrer itens de uma lista
    FOR    ${fruta}     IN      @{FRUTAS}
        Log To Console          ${fruta}
    END   

Contador de 0 a 10
    FOR     ${numero}       IN RANGE    0    10
        Log To Console      Estou no número: ${numero}
    END

Imprimindo os países
    FOR     ${país}     IN  @{PAISES}
        Log To Console      Estou no aqui: ${país}
    END



