*** Settings ***
Documentation    Acessar o Swag Labs - E-commerce
Library          SeleniumLibrary

*** Variables ***

${BROWSER}                chrome
${URL}                    https://www.saucedemo.com/
${CAMPO_USER}             xpath=//input[contains(@id,'user-name')]
${USERNAME}               standard_user
${CAMPO_SENHA}            xpath=//input[contains(@id,'password')]
${SENHA}                  secret_sauce
${BOTAO_LOGIN}            xpath=//input[contains(@id,'login-button')]

*** Keywords ***
Acessando o Swag Labs - E-commerce

    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
Email e senha 
    Input Text    ${CAMPO_USER}    ${USERNAME}
    Input Password    ${CAMPO_SENHA}    ${SENHA}
    Click Element    ${BOTAO_LOGIN}