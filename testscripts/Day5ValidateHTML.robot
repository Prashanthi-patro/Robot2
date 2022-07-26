*** Settings ***
Library     SeleniumLibrary
Library     XML


*** Variables ***
${appurl}       https://testautomationpractice.blogspot.com
${browsername}    chrome
${prefix}    The current URL is:


*** Test Cases ***
TC_001

    Open Browser    ${appurl}    ${browsername}
    Maximize Browser Window

    #How to get table row count
    ${Trow}     Get Element Count    //table[@name='BookTable']/tbody/tr
    Log To Console    Table row count is: ${Trow}

     #How to get table column count
    ${Tcol}     Get Element Count    //table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    Table column count is: ${Tcol}

    #Print the column header name
    ${headerName1}   Get Text    //table[@name='BookTable']/tbody/tr[1]/th[1]
    ${headerName2}   Get Text    //table[@name='BookTable']/tbody/tr[1]/th[2]
    ${headerName3}   Get Text    //table[@name='BookTable']/tbody/tr[1]/th[3]
    ${headerName4}   Get Text    //table[@name='BookTable']/tbody/tr[1]/th[4]
    
    Log To Console      ${headerName1}
    log to console      ${headerName2}
    log to console      ${headerName3}
    log to console      ${headerName4}


    ${columnCount}      Get WebElements    //table[@name='BookTable']/tbody/tr[1]/th
    FOR    ${count}    IN    ${columnCount}
        ${headerName}   Get Text    ${count}
        Log To Console   ${headerName}
         
    END

    #Count total no.of links
    ${columnCount}      Get WebElements    //a
    FOR    ${count}    IN    ${columnCount}
        ${headerName}   Get Text    ${count}
        Log To Console   ${headerName}

    END


    Close All Browsers

*** Keywords ***
