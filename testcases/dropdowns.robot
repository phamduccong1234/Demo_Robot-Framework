*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/accessregister.robot

*** Variables ***
${browser}    chrome
${url}    https://petstore.octoperf.com/actions/Catalog.action

*** Test Cases ***
Testing Dropdown
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.5 seconds
    registerToApplication
    
    Close Browser


*** Keywords ***