*** Settings ***
Documentation                Aqeui estarao presentes todas as variaveis/elemento da tela HOME

*** Variables ***
&{HOME}
...    TITLE_PAGE_HOME=My Store  
...    HEADER_OPTIONS=//*[@id="block_top_menu"]/ul
...    INPUT_BUSCA=search_query_top
...    BTN_PESQUISAR=submit_search
...    IMG_BLOUSE=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
...    TITLE_PAGE_PESQUISA=Search - My Store
...    CATEGORY_WOMEN=xpath=//*[@id="block_top_menu"]/ul/li[1]/a
...    SUB_SUMMER=xpath=//*[@id="block_top_menu"]/ul/li[1]//*[contains(text(),'Summer Dresses')]
...    SIGN_IN=xpath=//div[@class="header_user_info"]/a
