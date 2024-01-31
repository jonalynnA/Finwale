# Created by Jonalynn Masters

*** Settings ***

Resource  ../Resources/Common2.robot


Test Setup  Begin Web Test
Test Teardown  End Web Test
Documentation  Sanity Test Suite
Resource  ../Resources/Common2.robot
Resource  ../Resources/Finwale.robot
Resource  ../Resources/PO/Finwale_LandingPage_Chat.robot

*** Variables ***

${BROWSER}  chrome
${START_URL}  https://www.finwale.com/

*** Keywords ***

*** Test Cases ***

Finwale Landing Page
    [Tags]  FINWALE
    [Documentation]  Landing Page
    Finwale.Finwale Landing


Finwale Landing Page Chat
    [Tags]  FINWALE CHAT
    [Documentation]  Landing Page Chat
    Finwale.Finwale Chat