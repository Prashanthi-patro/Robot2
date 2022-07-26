*** Settings ***

Library     SeleniumLibrary


*** Variables ***

${appurl}       https://designsystem.digital.gov/components/radio-buttons/
${browsername}  chrome
${expectedTitle}    Google


*** Test Cases ***

TC_Radio_001

    Open Browser    ${appurl}   ${browsername}
    # Maximize browser
    Maximize Browser Window

    # Radio button Validation ...

    Select Frame    locator
    Select Radio Button    group_name    value

    Checkbox Should Be Selected         (//input[@type='checkbox'])[2]

    # Select Checkbox 1 & Validate

    Select Checkbox     (//input[@type='checkbox'])[1]
    sleep   3

    Checkbox Should Be Selected     (//input[@type='checkbox'])[1]

    # Uncheck Checkbox 2

    Unselect Checkbox       (//input[@type='checkbox'])[2]
    sleep    3
    Checkbox Should not Be Selected     (//input[@type='checkbox'])[2]
    Sleep    3

    Close All Browsers

*** Keywords ***