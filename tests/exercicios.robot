*** Settings ***
Documentation            Exercicicos de automacao Prime Hero

*** Variables ***
#Variavel tipo Dicionario
&{PESSOA}        
...        nome=Carlos            
...        sobrenome=Eduardo    
...        idade=31    
...        altura=1.66    
...        cpf=123456789    
...        profissao=freelancer

@{FRUTAS}    Banana    Laranja    Melao    Maca

@{PAISES}    BRASIL    ANGOLA    MEXICO    ITALIA    EGITO

*** Test Cases ***
Cenario: Dados de uma pessoa
    Log to Console        ${PESSOA.nome}
    Log to Console        ${PESSOA.sobrenome}
    Log to Console        ${PESSOA.idade}
    Log to Console        ${PESSOA.altura}
    Log to Console        ${PESSOA.cpf}
    Log to Console        ${PESSOA.profissao}
Cenario: Impressao de uma lista
    [Tags]                LISTA
    Log to Console        ${FRUTAS}
    Log to Console        ${FRUTAS[0]}
    Log to Console        ${FRUTAS[3]}

Cenario: Somando 2 numeros
    [Tags]                SOMAR
    Somar dois numeros    10    10
    ${RESULTADO}        Somar os numeros "${1000}" e "${1000}"
    Log to Console      ${RESULTADO}      

Cenario: Montando Email
    [Tags]                CRIAR
    ${EMAIL}              Email Completo "${PESSOA.nome}" "${PESSOA.sobrenome}" "${PESSOA.idade}"        
    Log to Console        ${EMAIL}

Cenario: Contando 0 a 9
    [Tags]        CONTAR
    FOR        ${COUNT}        IN RANGE        0     9
        Log to Console         ${COUNT}    
    END

Cenario: Percorrer Lista de Frutas    
    [Tags]            FRUTAS
    Percorrer itens de uma lista

Cenario: Lista de Paises
    [Tags]            PAISES
    Lista paises

Cenario: Contagem
    [Tags]            CONTANDO
    Contagem 0 a 10                     

*** Keywords ***
Somar dois numeros
    [Arguments]        ${NUM_A}        ${NUM_B}
    ${SOMA}            Evaluate        ${NUM_A}+${NUM_B}
    [Return]           ${SOMA} 

Somar os numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}            Evaluate        ${NUM_A}+${NUM_B}
    [Return]           ${SOMA}

Email Completo "${PESSOA.nome}" "${PESSOA.sobrenome}" "${PESSOA.idade}"         
    ${EMAIL}          Catenate          ${PESSOA.nome}_${PESSOA.sobrenome}_${PESSOA.idade}@robot.com
    [Return]          ${EMAIL}    

Contar 0 a 9
    FOR        ${COUNT}        IN RANGE        0     9
        Log to Console         ${COUNT}    
    END                

Percorrer itens de uma lista
    @{FRUTAS}        Create List        Banana    Abacaxi    Laranja
    FOR        ${FRUTA}        IN        @{FRUTAS}
        Log to Console        ${FRUTA}
    END

Lista paises
    FOR        ${PAIS}         IN        @{PAISES}
        Log to Console        ${PAIS}
    END

Contagem 0 a 10
    FOR        ${NUMERO}        IN RANGE        0     11       
        IF     ${NUMERO} == 5
            Log to Console         estou no numero ${NUMERO}
        ELSE IF    ${NUMERO} == 8
            Log to Console         estou no numero ${NUMERO} 
        END            
    END           
