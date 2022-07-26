*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem
*** Variables ***
${appurl}       https://techedtrainings.com
${browsername}    chrome


*** Test Cases ***
TC_001
    Open Browser    ${appurl}    ${browsername}
    Maximize Browser Window
    Click Element    (//a[text()='Contact'])[1]
    Wait Until Page Contains    Contact

    #Print data from dropdown
    ${dropdowncount}    Get WebElements    //select[@name='menu-363']//option
    FOR    ${apple}    IN    @{dropdowncount}
        ${headername}   Get Element Attribute    //select[@name='menu-363']//option    value
        Log To Console   ${headername}
    END
         
    #Close All Browsers

*** Keywords ***
