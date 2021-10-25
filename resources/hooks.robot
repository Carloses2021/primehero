*** Settings ***
Documentation                    Todas as configuracoes de setup e teardown estarao aqui

Resource                         package.robot   

*** Variables ***
${BROWSER}        chrome
${URL}            http://automationpractice.com/index.php
&{DADOS}
...    EMAIL=testeautomacao2025@gmail.com
...    NOME=teste
...    SOBRENOME=automacao
...    SENHA=Teste2021
...    DIA=15
...    MES=10
...    ANO=2000
...    ENDERECO=QA BRABO
...    CIDADE=Sao Paulo
...    POSTCODE=12345
...    FONE=123456789
...    ALIAS=Bora Pra cima

*** Keywords ***
Abrir navegador
    Open Browser           browser=${BROWSER}

Fechar navegador
    Capture Page Screenshot
    Close Browser  