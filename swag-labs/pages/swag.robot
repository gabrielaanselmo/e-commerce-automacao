*** Settings ***
Documentation     Swag Labs - E-commerce - (https://www.saucedemo.com/)
Library           SeleniumLibrary

*** Variables ***
${campo_pesquisa}            xpath=//input[contains(@id,'search')]
${click_pesquisa}            xpath=//button[contains(@id,'search-icon-legacy')]
${video}                     css=#contents > ytd-video-renderer:nth-child(1)

*** Keywords ***
Dado que eu esteja na página inicial do youtube e veja um campo de Pesquisa
    Wait Until Element Is Visible    ${campo_pesquisa}
E preencha este campo
    Input Text    ${campo_pesquisa}    Red Velvet Psycho
E realize uma pesquisa clicando no ícone de lupa
    Click Element    ${click_pesquisa}
Então o sistema deverá exibir o vídeo pesquisado
    Element Should Be Visible    ${video}
    
    

    
    
