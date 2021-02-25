*** Settings ***

Documentation                       Testsvit funktionalitet "Skapa användare"
Resource                            ../Resources/rental29_createUser.robot
Library                             SeleniumLibrary
Suite Setup                         Begin Web Test
Suite Teardown                      End Web Test

*** Variables ***
${BROWSER}          chrome
${URL}              http://rental29.infotiv.net/
${FIRSTNAME}        Stefan

*** Test Cases ***

Användaren har åtkomst till skapa användare-sidan.
    [Documentation]                     Testa om det går att gå vidare till "userRegistration" via 'Create User'-knappen.
    [Tags]                              G_id1
    Go to                               ${URL}
    Click Button CreateUser
    Verify Page_userRegistration Loaded


Användaren kan mata in för- och efternamn i boxarna.
    [Documentation]                     Testa att mata in data i förnamn och efternamn rutorna.
    [Tags]                              G_id2
    Go to                               http://rental29.infotiv.net/webpage/html/gui/userRegistration.php
    Verify Page_userRegistration Loaded
    Click Element input_firstName       Stefan
    Click Element input_lastName        Nikolic

Användaren skapar användare
    [Documentation]                     Testa skapa ny användare via 'Create'-knappen efter man matat in all information i 'Create User'-sidan
    [Tags]                              G_id3
    Go to                               ${URL}
    Verify Page_userRegistration Loaded
    Click Element input_firstName       Stefan
    Click Element input_lastName        Nikolic
    Click Element input_phone           0765505252





