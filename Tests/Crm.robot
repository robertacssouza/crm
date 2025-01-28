*** Settings ***
Documentation       This is some basic info about the whole suite
Library             SeleniumLibrary
Resource            ../Resources/Common.robot
Resource            ../Resources/CrmApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

#Run the script
#robot -d Results Tests/Crm.robot
*** Variables ***
${BROWSER} =                chrome
${URL} =                    https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =      admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =   qwe
*** Test Cases ***
Should be able to add new customer
    [Documentation]          This is some basic info about the test
    [Tags]                   1006    Smoke   Contacts
    CrmApp.Go to "Home" Page
  #login
    CrmApp.Login With Valid Credentials    ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    #add  customer
    CrmApp.Add New Customer
    #LogOut
    CrmApp.Sign Out




