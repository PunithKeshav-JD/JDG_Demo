*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/UserKeywords.robot

*** Variables ***
${browser}  edge
${url}      http://jdgcsadev.jdg.co.za:8045/SignIn.aspx?
${url1}     https://ams.jdg.co.za/SignIn.aspx?


*** Test Cases ***
ArticleManagementSystem
    open browser    ${url1}    ${browser}
    maximize browser window
    Read Number of Rows    Sheetname

    input text    id:ContentPlaceHolder1_txtsAmaccountnumber    209629
    input text    id:ContentPlaceHolder1_pwdPassword    `159753*
    click element    id:ContentPlaceHolder1_btnSignIn
    sleep    5sec
    title should be   Article Management System



    close all browsers


