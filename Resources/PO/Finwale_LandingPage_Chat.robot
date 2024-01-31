*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${START_URL}    https://finwale.com/
${CHAT_BUBBLE}  xpath=//img[@alt='Chat attention grabber']
${CHAT_TEXT_FIELD}    xpath=//div[3]/div[2]/div[2]/div/div[3]/textarea
${CHAT_TEST_TEXT}    This chat is being conducted for the purpose of QA testing, no further action required
*** Keywords ***
Load
    Go To    ${START_URL}

Verify Finwale Landing Page Page Loaded
    Wait Until Page Contains    WELCOME TO FINWALE

Chat Welcome Agent
    sleep    5s
    Click element    ${CHAT_BUBBLE}
    sleep    1s
    Click element    ${CHAT_TEXT_FIELD}
    Input text    ${CHAT_TEST_TEXT}
