*** Settings ***
Documentation     Swag Labs - E-commerce - (https://www.saucedemo.com/)
Library           SeleniumLibrary

*** Variables ***
${produtos}               xpath=//span[@class='title'][contains(.,'Products')]
${botao_add}              xpath=//button[contains(@id,'add-to-cart-sauce-labs-backpack')]
${carrinho_status}        xpath=//a[@class='shopping_cart_link'][contains(.,'1')]
${carrinho_click}         xpath=//a[contains(@class,'shopping_cart_link')]
${meu_carrinho}           xpath=//span[@class='title'][contains(.,'Your Cart')]
${meu_item}               xpath=//div[@class='cart_item'][contains(.,'1Sauce Labs Backpackcarry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.$29.99Remove')]
${botao_checkout}         xpath=//button[contains(@id,'checkout')]
${checkout}               xpath=//span[@class='title'][contains(.,'Checkout: Your Information')]
${first_name}             xpath=//input[contains(@id,'first-name')]
${last_name}              xpath=//input[contains(@id,'last-name')]
${postal_code}            xpath=//input[contains(@id,'postal-code')]
${botao_continue}         xpath=//input[contains(@id,'continue')]
${checkout_overview}      xpath=//span[@class='title'][contains(.,'Checkout: Overview')]
${botao_finish}           xpath=//button[contains(@id,'finish')]
${sucess}                 xpath=//h2[@class='complete-header'][contains(.,'Thank you for your order!')]

*** Keywords ***
Dado que eu esteja na página de produtos do E-commerce
    #Verificando se a página inicial de produtos está visível
    Element Should Be Visible        ${produtos}
Quando seleciono um produto para compra e clico no botão "Add to cart"
    #Verificando se o botão "Add to cart" está visível
    Element Should Be Visible        ${botao_add}
    #Se estiver vísivel, clicando nele
    Click Element                    ${botao_add}
Então o ícone de carrinho deverá sinalizar que contém um produto nele
    #Verificando se o ícone de carrinho está sinalizando corretamente
    Element Should Be Visible       ${carrinho_status}
E eu clico no ícone do carrinho de compras
    #Clicando no ícone de carrinho
    Click Element                   ${carrinho_click}
Então serei redirecionado(a) para a página do meu carrinho de compras
    #Verificando se o redirecionamento foi feito com sucesso e corretamente
    Element Should Be Visible       ${meu_carrinho}
E o produto que adicionei ao carrinho deverá ser exibido
    #Verificando se o produto que adicionei no carrinho está sendo exibido
    Element Should Be Visible       ${meu_item}
Quando clico no botão "Checkout"
    #Verificando se o botão "Checkout" está vísivel na página
    Element Should Be Visible       ${botao_checkout}
    #Clicando no botão "Chekout"
    Click Element                   ${botao_checkout}
Então estarei na página "Checkout: Your Information"
    #Verificando se o redirecionamento foi feito com sucesso e corretamente
    Element Should Be Visible       ${checkout}
E devo preencher o formulário corretamente com os meus dados
    #Preenchendo o primeiro campo com o meu "First name"
    Input Text    ${first_name}    "'Automação'"
    #Preenchendo o segundo campo com o meu "Last name"
    Input Text    ${last_name}     "'Robot'"
    #Prenchendo o terceiro campo com o meu "Postal code"
    Input Text    ${postal_code}    00000000000
E clico no botão "Continue"
    #Verificando se o botão "Continue" está vísivel
    Element Should Be Visible    ${botao_continue}
    #Clicando no botão "Continue"
    Click Element                ${botao_continue}
Então estarei na página "Checkout: Overview"
    #Verificando se o redirecionamento foi feito com sucesso e corretamente
    Element Should Be Visible    ${checkout_overview}
Quando clico no botão "Finish"
    #Verificando se o botão "Finish" está vísivel
    Element Should Be Visible    ${botao_finish}
    #Clicando no botão "Finish"
    Click Element                ${botao_finish}
Então o sistema deverá exibir uma mensagem de sucesso
    #Verificando se a mensagem de sucesso está sendo exibida
    Element Should Be Visible    ${sucess}