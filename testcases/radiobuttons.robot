*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://petstore.octoperf.com/actions/Catalog.action

*** Test Cases ***
Testing Radio Button And Checkboxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    0.5 seconds
    checkCheckboxes
    Close Browser

*** Keywords ***
checkCheckboxes
    Click Link    xpath://a[text() = 'Sign In']
    Click Link    xpath://a[text() = 'Register Now!']
    Select Checkbox    account.listOption
    Select Checkbox    account.bannerOption
    Unselect Checkbox    account.listOption