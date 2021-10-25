*** Settings ***
Documentation            Aqui estarao presentes todos os recursos que compoe o projeto


##############################################
#                 Libraries                  #
##############################################
Library                    SeleniumLibrary

##############################################
#                 Keywords                   #
##############################################
Resource                  keywords/kws_webautomation.robot

##############################################
#                 Pages                      #
##############################################
Resource                  pages/pages_home.robot
Resource                  pages/pages_N_encontrado.robot
Resource                  pages/summer_dresses.robot
Resource                  pages/pages_sign_in.robot                             

##############################################
#                 Hooks                      #
##############################################
Resource                  hooks.robot