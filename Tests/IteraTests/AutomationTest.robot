*** Settings ***
Documentation   Practice Exercises 
Library    SeleniumLibrary
Resource    ../../Pages/iteraPages/IteraPage.robot  
Resource    ../../Pages/iteraPages/AutomationPage.robot
Variables    ../../TestDataFiles/TestareaTestData.py
Test Setup     SetupAutomationTest
Test Teardown    Close Browser


*** Test Cases ***
Textarea practice
    [Documentation]    Practice Exercise 1
    Type Name, Mobile number, Email address, Password, Address      ${nameTestData}    ${mobileTestData}    ${emailTestData}    ${Passw0rdTestData}    ${addressTestData}
    Click on Submit button


CheckBox And Radio Button practice
     [Documentation]    Practice Exercise 2     
     Click On Test Automation Link
     Select Gender From CheckBox And days of the week


DropDown practice
    [Documentation]    Practice Exercise 3
    Select From DropDown list
    List Selection Should Be    ${select}    Norway


File input practice
    [Documentation]    Practice Exercise 4
    Click On Test Automation Link
    Upload file    ${FileUploadPath}

   


*** Keywords ***

SetupAutomationTest
    Navigate To itera Page 
    Click On Test Automation Link

    




