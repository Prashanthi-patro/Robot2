*** Settings ***

Library     SeleniumLibrary


*** Variables ***

${appurl}           https://www.google.com

${browsername}      chrome

${expectedTitle}    Google

#${pagetitle}    Happening now...Join Twitter today.

*** Test Cases ***

TC_001

    Open Browser    ${appurl}    ${browsername}

    # Maximize browser
    Maximize Browser Window

    ${pagetitle}    Get Title
    Log To Console  ${pagetitle}

    # How to open a new TAB using Robot?

    Execute Javascript   window.open()

    # Switch To the new Window....
    Switch Window     locator=NEW

    # How to open an URL in the new TAB
    Go To   https://www.twitter.com
    sleep   5

    ${pagetitle}    Get Title
    Log To Console      ${pagetitle}

    # How to close the new TAB
    Close Window
    sleep   5

    # Come back to parent TAB
    Close All Browsers

*** Keywords ***