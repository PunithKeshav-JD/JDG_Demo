*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      http://jdgcsadev.jdg.co.za:8045/SignIn.aspx?
${url1}     https://ams.jdg.co.za/SignIn.aspx?


*** Test Cases ***
ArticleManagementSystem
    open browser    ${url1}    ${browser}
    maximize browser window
    input text    id:ContentPlaceHolder1_txtsAmaccountnumber    209629
    input text    id:ContentPlaceHolder1_pwdPassword    `159753*
    click element    id:ContentPlaceHolder1_btnSignIn
    title should be   Article Management System

PriceTicket
    click element    id:ContentPlaceHolder1_lbtnPT
    element text should be     xpath://a[normalize-space()='Price Ticket Generator']     Price Ticket Generator
    get text    xpath://a[normalize-space()='Price Ticket Generator']
    log to console    xpath://a[normalize-space()='Price Ticket Generator']

    select from list by value    ddlCluster             Hi-Fi Corp
    sleep    3sec
    select from list by label    ddlSection             South Africa
    sleep    3sec
    select from list by label    ddlPriceTicketType     Everyday 1
    sleep    3sec
    select checkbox    id:ContentPlaceHolder1_cbxIsPromo
    sleep    3sec

    input text    id:txtArticleNumber       10068992
    click button    id:btnSearch
    sleep    3sec
    click button    id:ContentPlaceHolder1_grdResults_btnAdd_0
    sleep    3sec
    element should be visible    xpath://table[@id='ContentPlaceHolder1_grdSelectedItems']//td[2]
    log to console    xpath://table[@id='ContentPlaceHolder1_grdSelectedItems']//td[2]


    close all browsers


