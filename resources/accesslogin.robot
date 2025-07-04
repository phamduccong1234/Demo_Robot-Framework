*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://petstore.octoperf.com/actions/Catalog.action

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    loginToApplication
    Close Browser

*** Keywords ***
loginToApplication
    Click Link    xpath://a[text() = 'Sign In']