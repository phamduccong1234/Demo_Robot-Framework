*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.demoblaze.com/

*** Test Cases ***
Testing InputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    STORE
    checkVisiblleInputBoxLoginModal
    Close Browser

*** Keywords ***
checkVisiblleInputBoxLoginModal
    Click Link    id:login2
    ${login_modal}    set variable    id:logInModal
    Wait Until Element Is Visible    ${login_modal}
    ${username_input}    set variable    id:loginusername
    Element Should Be Visible    ${username_input}
    Element Should Be Enabled    ${username_input}
    Input Text    ${username_input}    cong1234
    Sleep    3
    ${password_input}    set variable    id:loginpassword
    Element Should Be Visible    ${password_input}
    Element Should Be Enabled    ${password_input}
    Input Text    ${password_input}    Test@123
    Sleep    3
    Clear Element Text    ${username_input}
    Clear Element Text    ${password_input}