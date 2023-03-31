*** Settings ***
Library    SeleniumLibrary


*** Variables ***

############# Textarea practice ###########################
${name}        id:name
${mobile}      id:phone
${email}       id:email
${password}    id:password
${address}     id:address
${submit}      name:submit  
###########################################################
##### CheckBox & Radio Button practice ####################
${Gender}              id:male
${tuesday_day}         id:tuesday
${friday_day}          id:friday
###########################################################
############ DropDown practice#############################
${select}     xpath=//select[@class='custom-select']
${country}    xpath=//option[contains(.,'Norway')]
###########################################################
################### File input practice ###################
${FileUpload}        id:inputGroupFile02






*** Keywords ***
Type Name, Mobile number, Email address, Password, Address  
    [Arguments]   ${input_name}    ${input_mobile}    ${input_email}    ${input_password}     ${input_address}   

    Input Text    ${name}         ${input_name}
    Input Text    ${mobile}       ${input_mobile}
    Input Text    ${email}        ${input_email}
    Input Text    ${password}     ${input_password}
    Input Text    ${address}      ${input_address} 

Click on Submit button
    Click Button    ${submit}



Select Gender From CheckBox And days of the week
    Click Element    ${Gender}    
    Select Checkbox    ${tuesday_day}
    Select Checkbox    ${friday_day}     



Select From DropDown list 
    Select From List By Value    ${select}   1           


Upload file 
    [Arguments]    ${file_path}
    Choose File    ${FileUpload}    ${file_path}
