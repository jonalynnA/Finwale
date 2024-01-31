*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${START_URL}    https://finwale.com/
${FINWALE_TRADING_co_LOGO}  /html/body/div[1]/header/div[2]/div[1]/div/div[1]/a/img
${CHAT_BUBBLE}  xpath=//img[@alt='Chat attention grabber']
${CHAT_TEXT_FIELD}    xpath=//textarea
${CHAT_TEST_TEXT}    This chat is being conducted for the purpose of QA testing, no further action required


*** Keywords ***
Load
    Go To    ${START_URL}

Verify Finwale Landing Page Page Loaded
    sleep    2s
    Wait Until Page Contains    WELCOME TO FINWALE

Chat Welcome Agent
    Wait until page contains    WELCOME TO FINWALE
    sleep    5s
    #Click element    ${CHAT_BUBBLE}
    sleep    1s
    Click element    ${CHAT_TEXT_FIELD}
    Input text    ${CHAT_TEST_TEXT}
