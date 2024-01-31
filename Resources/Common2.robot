*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}  chromium
${START_URL}  https://www.finwale.com/

*** Keywords ***
Begin Web Test
    OPEN BROWSER  ${start_url} ${Browser}
    MAXIMIZE BROWSER WINDOW


End Web Test
    Close Browser