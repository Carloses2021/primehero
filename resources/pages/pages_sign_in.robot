*** Settings ***
Documentation                        Aqui estarao presentes as variaveis/elementos da tela de login    

*** Variables ***
&{SIGN_IN}
...    TITLE_SIGN_IN=Login - My Store
...    EMAIL=xpath=//div[@id="center_column"]//input[@id='email_create']
...    CREATE_ACC=xpath=//div[@class="submit"]//button[@id="SubmitCreate"]
...    TELA_CREATE=xpath=//*[@id="account-creation_form"]//input[@name="customer_firstname"]
...    NOME=xpath=//*[@id="account-creation_form"]//input[@name="customer_firstname"]
...    SOBRENOME=xpath=//*[@id="account-creation_form"]//input[@name="customer_lastname"]
...    PASSWD=xpath=//*[@id="account-creation_form"]//input[@name="passwd"]
...    DATA_DIA=xpath=//*[@id="account-creation_form"]//select[@id="days"]
...    DATA_MES=xpath=//*[@id="account-creation_form"]//select[@id="months"]
...    DATA_ANO=xpath=//*[@id="account-creation_form"]//select[@id="years"]
...    NOME2=xpath=//*[@id="account-creation_form"]//input[@name="firstname"]
...    SOBRENOME2=xpath=//*[@id="account-creation_form"]//input[@name="lastname"]
...    ENDERECO=xpath=//*[@id="account-creation_form"]//input[@name="address1"]
...    CIDADE=xpath=//*[@id="account-creation_form"]//input[@name="city"]
...    LISTA_ESTADO=xpath=//*[@id="account-creation_form"]//select[@id="id_state"]
...    TELA_ESTADO=xpath=//*[@id="account-creation_form"]//select[@id="id_state"]/option[6]
...    ESTADO=xpath=//*[@id="account-creation_form"]//select[@id="id_state"]/option[6]
...    POSTCODE=xpath=//*[@id="account-creation_form"]//input[@name="postcode"]
...    FONE=xpath=//*[@id="account-creation_form"]//input[@name="phone_mobile"]
...    ALIAS=xpath=//*[@id="account-creation_form"]//input[@name="alias"]
...    SUBMIT=xpath=//*[@id="account-creation_form"]//button[@id="submitAccount"]
...    ACC_OK=xpath=//*[@id="center_column"]/p
