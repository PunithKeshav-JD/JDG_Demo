*** Settings ***
Library    SikuliLibrary    mode=NEW


*** Variables ***


*** Test Cases ***
TC_01 Start SAP Application
    start sikuli process
    Add Image Path      C:/Users/225027/Documents/Automation/SikuliImages
    click   SAP.png
    click   CRM.png
