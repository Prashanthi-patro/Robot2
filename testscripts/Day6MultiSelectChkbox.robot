*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${appurl}       https://codepen.io/RobotsPlay/pres/pyNLdL
${browsername}    chrome


*** Test Cases ***
TC_001
    Open Browser    ${appurl}    ${browsername}
    Maximize Browser Window
    
    Select Frame    result
    
    Click Element    //label[@class='dropdown-label']

    Checkbox Should Not Be Selected     //input[@value='Selection 3']
    Select Checkbox    //input[@value='Selection 3']
    Sleep    1

    Checkbox Should Not Be Selected         //input[@value='Selection 5']
    Select Checkbox    //input[@value='Selection 5']
    Sleep    1

    Close All Browsers

*** Keywords ***
