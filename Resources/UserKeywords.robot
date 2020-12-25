*** Settings ***
Library    SeleniumLibrary
Library    ../TestData/ReadExcel.py

*** Keywords ***
Read Number of Rows
    [Arguments]     ${Sheetname}
    ${maxr}=        fetch_number_of_rows        ${Sheetname}
    [Return]        ${maxr}
