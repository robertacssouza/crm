*** Settings ***
Library             SeleniumLibrary


*** Variables ***
${TOPNAV_SIGNIN_LINK} =     id=SignIn
${TOPNAV_SIGNOUT_LINK} =    xpath=//*[@class="nav-link"]


*** Keywords ***
Click "Sign In" Link
    click link     ${TOPNAV_SIGNIN_LINK}

Click "Sign Out" Link
    click link      ${TOPNAV_SIGNOUT_LINK}