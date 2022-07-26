*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${appurl}       https://docker.com
${browsername}    chrome
${prefix}    The current URL is:


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}
    Maximize Browser Window

    #Scroll down
    Scroll Element Into View    (//span[@class='et_pb_image_wrap '])[40]
    Sleep    3

    #Scroll up
    Scroll Element Into View    (//span[@class='et_pb_image_wrap '])[8]
    Sleep    3

    #Mouse hover menus
    
    Mouse Over    (//a[text()='Products'])[1]
    Sleep    3
    Mouse Over    (//a[text()='Developers'])[1]
    Sleep    3
    Mouse Over    (//a[text()='About Us'])[1]
    Sleep    3


    #Print current page URL

    ${currURL}  Get Location
    ${textToPrint}  Catenate    ${prefix}    ${currURL}
    Log To Console   ${textToPrint}

    Close All Browsers

*** Keywords ***
