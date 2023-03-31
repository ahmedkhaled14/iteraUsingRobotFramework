*** Settings ***   
Documentation    Test Login page 
Library    SeleniumLibrary        
Resource          ../../Pages/iteraPages/IteraPage.robot
Resource          ../../Pages/iteraPages/DashboardPage.robot 
Resource          ../../Pages/iteraPages/LoginPage.robot
Variables         ../../TestDataFiles/loginTestData.py
Test Setup       SetupLogin
Test Teardown    Close Browser



*** Test Cases ***
login to itera home page
    [Documentation]        When i navigate to itera URl 
    ...    And click on login button
    ...    And login using valid  user name and password
    ...    Then user should be in Dashboard Page 
    Click On Login Button
    login using valid user name and password    ${userNameTestData}    ${passwordTestData}
    Page Should Contain Element    ${Dashboard_locator}  


*** Keywords ***
SetupLogin
    Navigate To itera Page
