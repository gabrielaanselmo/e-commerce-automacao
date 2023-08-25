*** Settings ***
Documentation     E-commerce - Automação
Library           SeleniumLibrary
Resource          ./shared/setup.robot
Resource         

*** Test Cases ***
Acessando o Swag Labs - E-commerce e fazendo login
    Acessando o Swag Labs - E-commerce
    Email e senha 