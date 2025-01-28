*** Settings ***
Library         SeleniumLibrary


*** Keywords ***
Begin Web Test

    #set selenium speed       .2s
    set selenium timeout      5s

    open browser             about:blank     ${BROWSER}

    #resize browser window
    set window position      x=341   y=169
    set window size          width=1935  height=1090

End Web Test
       close all browsers