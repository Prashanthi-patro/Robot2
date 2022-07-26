*** Settings ***

Library     SeleniumLibrary
Resource    ../reusable/test_reusable.robot
Test Setup      LaunchMyWebsite
Test Teardown       CloseMyWebsite

*** Variables ***

${appurl}       https://the-internet.herokuapp.com/javascript_alerts
${browsername}  chrome

*** Test Cases ***

TC_001

   #Validate the pop up text and click on Ok button

    Click Button    //button[text()='Click for JS Alert']
    Sleep    1
    ${pop_up_text}  Handle Alert
    Log To Console    ${pop_up_text}

    # Validate the confirmation
    Element Text Should Be    //p[@id='result']    You successfully clicked an alert
    Sleep    1


TC_002

    #Validate the pop up text and click on Ok button

    Click Button    //button[text()='Click for JS Confirm']
    Sleep    1

    #Click on Cancel utton first and do the validation
    ${pop_up_text}  Handle Alert    action=DISMISS
    Log To Console    ${pop_up_text}

    # Validate the confirmation
    Element Text Should Be    //p[@id='result']         You clicked: Cancel
    Sleep    1

    #Click on Cancel utton first and do the validation
    Click Button    //button[text()='Click for JS Confirm']
    Sleep    1

    ${pop_up_text}  Handle Alert    action=ACCEPT
    Log To Console    ${pop_up_text}

    # Validate the confirmation
    Element Text Should Be    //p[@id='result']          You clicked: Ok
    Sleep    1


TC_003

    #Validate the pop up text and click on Ok button

    Click Button    //button[text()='Click for JS Prompt']
    Sleep    1

    #Click on Cancel utton first and do the validation

    ${pop_up_text}  Handle Alert    action=DISMISS
    Log To Console    ${pop_up_text}

    # Validate the confirmation
    Element Text Should Be    //p[@id='result']         You entered: null
    Click Button    //button[text()='Click for JS Prompt']
    Sleep    2
    Input Text Into Alert    Prashanthi     action=ACCEPT
    Element Text Should Be    //p[@id='result']          You entered: Prashanthi

*** Keywords ***

