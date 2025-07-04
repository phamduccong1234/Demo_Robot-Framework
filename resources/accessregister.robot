*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://petstore.octoperf.com/actions/Catalog.action

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    registerToApplication
    Close Browser

*** Keywords ***
registerToApplication
    Click Link    xpath://a[text() = 'Sign In']
    Click Link    xpath://a[text() = 'Register Now!']