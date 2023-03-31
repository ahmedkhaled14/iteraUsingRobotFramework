*** Settings ***
Documentation        Itra login page 
Library               SeleniumLibrary        
Resource              ../../Resources/Environments.resource 


*** Variables ***
${Username_input}             id:Username
${Password_input}             id:Password
${Submit_login}               name:login

*** Keywords ***
login using valid user name and password
    [Arguments]       ${username}              ${password}
    Input Text        ${Username_input}        ${username}
    Input Password    ${Password_input}        ${password}
    Click Element     ${Submit_login}
