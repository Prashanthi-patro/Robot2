*** Settings ***


Library    SeleniumLibrary

*** Variables ***
${appurl}   https://www.docker.com
${appurl1}   https://www.google.com


*** Test Cases ***
TC_001
    Open Browser        https://www.docker.com  chrome
    Maximize Browser Window
    Sleep    5
    Open Browser        https://www.google.com  chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //img[@class='lnXdpd']

    # Print title of the page
    ${currentpagetitle}     get title
    Log To Console    ${currentpagetitle}

    #validate Gmail link
    Wait Until Page Contains Element    //a[text()='Gmail']

    # Validate the search
    Wait Until Page Contains Element    //input[@class='gLFyf gsfi']



    Close All Browsers

TC_002
    Open Browser    https://www.google.com  chrome
    Close All Browsers



*** Keywords ***
Login feature
    Wait Until Element Is Visible    locator
