*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}       https://techedtrainings.com
${browsername}    chrome
${prefix}    The current URL is:

*** Test Cases ***

TC_001

    Open Browser    ${appurl}    ${browsername}
    Maximize Browser Window
    Click Element    (//a[text()='Contact'])[1]
    Wait Until Page Contains    Contact
    Wait Until Page Contains    info@techedtrainings.com
    
    #type first name
    Input Text    text-name    Prashanthi K

    Sleep    5

    #Print current page URL

    ${currURL}  Get Location
    ${textToPrint}  Catenate    ${prefix}    ${currURL}
    Log To Console   ${textToPrint}

    # Selecting dropdown : Subject
    Select From List By Value    menu-363   Data Science
    Sleep    3
    
    Select From List By Index    menu-363   2
    Sleep    3

    Select From List By Value    menu-363   Programming
    Sleep    3

    Close All Browsers


*** Keywords ***
