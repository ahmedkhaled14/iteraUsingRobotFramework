*** Settings ***

Documentation     Itra Landing page Test
Library    SeleniumLibrary
Resource          ../../Resources/Environments.resource 


*** Variables ***
${Browser}                    ${ChromeBrowser}
${URl}                        ${iteraURl}
${login_Button}               xpath=//a[contains(.,'Login')]
${TestAutomation_link}        xpath=//a[contains(.,'Test Automation')]


*** Keywords ***

Navigate To itera Page 
    Open Browser     ${URl}       ${ChromeBrowser}
    Maximize Browser Window
 

Click On Login Button
    Click Element    ${login_Button}



Click On Test Automation Link
    Click Element    ${TestAutomation_link}



    
 



