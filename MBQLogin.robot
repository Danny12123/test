*** Settings ***
Documentation   Testing the money bouquet mobile app
Library     SeleniumLibrary

*** Variables ***
${emailP}    andrew.sackey+qatester@sagemicrosystems.net
${passwordP}     Q@t3st3r
${emailN}     andew.sackey+qatester@sagemicrosystems.net
${passwordN}    Qat3st3r




*** Test Cases ***
Testing the money bouquet login screen

    [Documentation]     Money Bouquet login
    [Tags]      Functional



    Open Browser    https://mb-front-web.vercel.app    chrome
    Maximize Browser Window
    Click Link    link:Log In
    Wait Until Page Contains Element     //*[@id="email"]  50s
    Input Text    //*[@id="email"]  ${emailP}
    Wait Until Page Contains Element    //*[@id="password"]    50s
    Input Text    //*[@id="password"]   ${passwordP}
    Wait Until Page Contains Element    //*[@id="remember"]     50s
    Select Checkbox    //*[@id="remember"]
    Wait Until Page Contains Element    //*[@id="login"]/div/div[4]/button  50s
    Click Element  //*[@id="login"]/div/div[4]/button
    Sleep    5s
    Wait Until Element Is Visible    xpath:/html/body/main/div[2]/div/div/div[1]/div[2]/button
    Click Element    xpath:/html/body/main/div[2]/div/div/div[1]/div[2]/button
    Sleep    20s
    Close Browser

    
                     

*** Keywords ***
