*** Settings ***
Library     DateTime


*** Variables ***



*** Test Cases ***

Date_Movement

    ${today_date}   Get Current Date
    Log To Console      ${today_date}
    ${only_date}    Convert Date    ${today_date}   result_format=%a %B %d
    Log To Console      ${only_date}

    #To make Date++
    ${date_+_28}    Add Time To Date    ${today_date}    28 days
    Log To Console    28 days from todays date is: ${date_+_28}

    #To make Date--
    ${date_minus_28}    Add Time To Date    ${today_date}    -28 days
    Log To Console    28 days back from todays date is: ${date_minus_28}