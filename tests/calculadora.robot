*** Settings ***
Documentation     ApplicationLibrary Desktop Library Tests.
Library           ApplicationLibrary.DesktopLibrary
Suite Setup       Start Calculadora
Test Setup        Launch Application
Test Teardown     Quit Application
Suite Teardown    Close All Applications
Test Tags         Calculadora

*** Variables ***
${REMOTE_URL}    http://127.0.0.1:4723
${APP}           Microsoft.WindowsCalculator_8wekyb3d8bbwe!App

*** Keywords ***
Start Calculadora
    [Documentation]     Sets up the application for quick launching through 'Launch Application' and starts the winappdriver
    Driver Setup
    Open Application     ${REMOTE_URL}    platformName=Windows     deviceName=Windows     app=${APP}    
    Maximize Window
    Quit Application

*** Test Cases ***
Esperar E Clicar No Botão Dois
    Wait For And Click Element    accessibility_id=num2Button
    Wait Until Element Contains    accessibility_id=CalculatorResults    2

Esperar E Somar 3 Mais 5
    Wait For And Click Element     accessibility_id=num3Button
    Wait For And Click Element     accessibility_id=plusButton
    Wait For And Click Element     accessibility_id=num5Button
    Wait For And Click Element     accessibility_id=equalButton
    Wait Until Element Contains    accessibility_id=CalculatorResults    8