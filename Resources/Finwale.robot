*** Settings ***

Resource  ../Resources/PO/Finwale_LandingPage.robot
Resource  ../Resources/PO/Finwale_LandingPage_Chat.robot

*** Variables ***

*** Keywords ***

#Standard System Test
Finwale Landing
    Finwale_LandingPage.Load
    Finwale_LandingPage.Verify Finwale Landing Page Page Loaded

Finwale Chat
    Finwale_LandingPage.Load
    Finwale_LandingPage.Chat Welcome Agent