*** Settings ***
Documentation     E-commerce - Automação
Library           SeleniumLibrary
Resource          ./shared/setup.robot
Resource          ./pages/swag.robot

*** Test Cases ***
Acessando o Swag Labs - E-commerce e fazendo login
    Acessando o Swag Labs - E-commerce
    Email e senha
Operação de compras no E-commerce
    Dado que eu esteja na página de produtos do E-commerce
    Quando seleciono um produto para compra e clico no botão "Add to cart"
    Então o ícone de carrinho deverá sinalizar que contém um produto nele
    E eu clico no ícone do carrinho de compras
    Então serei redirecionado(a) para a página do meu carrinho de compras
    E o produto que adicionei ao carrinho deverá ser exibido
    Quando clico no botão "Checkout"
    Então estarei na página "Checkout: Your Information"
    E devo preencher o formulário corretamente com os meus dados
    E clico no botão "Continue"
    Então estarei na página "Checkout: Overview"
    Quando clico no botão "Finish"
    Então o sistema deverá exibir uma mensagem de sucesso