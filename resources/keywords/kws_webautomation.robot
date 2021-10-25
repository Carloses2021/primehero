*** Settings ***
Documentation        Aqui estarão presentes todas as keywords dos testes Web.

Resource            ../package.robot

*** Keywords ***
Acessar a página home do site Automation Practice
    Go To                                         ${URL}
    Title Should Be                               ${HOME.TITLE_PAGE_HOME}
    Wait Until Element Is Visible                 ${HOME.HEADER_OPTIONS}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text                                    ${HOME.INPUT_BUSCA}           ${PRODUTO} 

Clicar no botão pesquisar
    Click Element                                 ${HOME.BTN_PESQUISAR}

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible                 ${HOME.IMG_BLOUSE}
    Title Should Be                               ${HOME.TITLE_PAGE_PESQUISA}

Conferir mensagem "No results were found for your search "${PRODUTO}"
    Title Should Be                               ${SEM_RESULTADOS.TITLE_PAGE_PESQUISA} 
    Wait Until Element Is Visible                 ${SEM_RESULTADOS.PRODUTO_NAO_ENCONTRADO}

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over                                    ${HOME.CATEGORY_WOMEN}

Clicar na sub categoria "Summer Dresses"
    Click Element                                 ${HOME.SUB_SUMMER}

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Wait Until Element Is Visible                 ${SUMMER.PAGE_NAME}
    Wait Until Element Is Visible                 ${SUMMER.RESULTS_SUMMER}
Clicar em "Sign in"
    Click Element                                 ${HOME.SIGN_IN}       

Informar um e-mail válido
    Title Should Be                               ${SIGN_IN.TITLE_SIGN_IN} 
    Input Text                                    ${SIGN_IN.EMAIL}                     ${DADOS.EMAIL}       

Clicar em "Create an account"
    Click Element                                 ${SIGN_IN.CREATE_ACC}

Preencher os dados obrigatórios                                                 
    Wait Until Element Is Visible                 ${SIGN_IN.TELA_CREATE}   
    Input Text                                    ${SIGN_IN.NOME}                      ${DADOS.NOME}
    Input Text                                    ${SIGN_IN.SOBRENOME}                 ${DADOS.SOBRENOME}
    Input Password                                ${SIGN_IN.PASSWD}                    ${DADOS.SENHA}                        clear=true  
    Select From List By Value                     ${SIGN_IN.DATA_DIA}                  ${DADOS.DIA}
    Select From List By Value                     ${SIGN_IN.DATA_MES}                  ${DADOS.MES}   
    Select From List By Value                     ${SIGN_IN.DATA_ANO}                  ${DADOS.ANO}     
    Input Text                                    ${SIGN_IN.NOME2}                     ${DADOS.NOME}
    Input Text                                    ${SIGN_IN.SOBRENOME2}                ${DADOS.SOBRENOME}  
    Input Text                                    ${SIGN_IN.ENDERECO}                  ${DADOS.ENDERECO}
    Input Text                                    ${SIGN_IN.CIDADE}                    ${DADOS.CIDADE}  
    Click Element                                 ${SIGN_IN.LISTA_ESTADO}                       
    Wait Until Element Is Visible                 ${SIGN_IN.TELA_ESTADO}   
    Click Element                                 ${SIGN_IN.ESTADO}   
    Input Text                                    ${SIGN_IN.POSTCODE}                  ${DADOS.POSTCODE}     
    Input Text                                    ${SIGN_IN.FONE}                      ${DADOS.FONE}
    Input Text                                    ${SIGN_IN.ALIAS}                     ${DADOS.ALIAS}
    
Submeter cadastro
    Click Element                                 ${SIGN_IN.SUBMIT}

Conferir se o cadastro foi efetuado com sucesso               
    Wait Until Element Is Visible                 ${SIGN_IN.ACC_OK}                       