*** Settings ***
Library             SeleniumLibrary


*** Variables ***
${lOGGEDOUT_HEADER_LABEL} =     Signed Out



*** Keywords ***
Verify Page Loaded
    wait until page contains    ${lOGGEDOUT_HEADER_LABEL}




