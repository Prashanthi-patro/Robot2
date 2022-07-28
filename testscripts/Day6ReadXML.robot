*** Settings ***

Library     SeleniumLibrary
Library     ../reusable/reusable.py
Suite Setup     readXML
Test Setup      readXML
#Test Teardown       Teardown


*** Variables ***

${browser}  chrome

*** Test Cases ***

TC_001
    #Read XML file
    readXML
    Log To Console    ${applicationpath}

    Open Browser    ${applicationpath}  ${browser}
    Maximize Browser Window
    Close All Browsers


*** Keywords ***

readXML

    ${applicationpath}   reusable.readXML   applicationURL
    Set Global Variable    ${applicationpath}
    ${chromepath}   reusable.readXML   chromepath
