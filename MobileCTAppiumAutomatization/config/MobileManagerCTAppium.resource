*** Settings ***
Library    AppiumLibrary
Library    ../utils/implicit-wait.py

*** Variables ***
${LOCAL}                                ${FALSE}
${APP_ID}                               bs://2e4f21adce37955be8b6918d08eae384c26ba9f7
${ANDROID_AUTOMATION_NAME}              UIAutomator2
${ANDROID_APP_LOCAL}                    ${CURDIR}/../apk/CTAppium_2_0.apk
${ANDROID_PLATFORM_NAME}                Android
${LOCAL_URL}                            http://localhost:4723/wd/hub
${USERNAME_BROWSERSTACK}=               mathewspereiraev_J3LT8Y
${ACCESSKEY_BROWSERSTACK}=              wg6pGosTL5r7DjzL8qoz
${REMOTE_URL}=                          https://${USERNAME_BROWSERSTACK}:${ACCESSKEY_BROWSERSTACK}@hub-cloud.browserstack.com/wd/hub
#Mobile físico
${Device_Tester_Name}                   0068182486
#Mobile android studio
# ${Device_Tester_Name}    emulator-5554

*** Keywords ***


inicia app
    [Arguments]         ${DEVICE}
    Open Application    app=${APP_ID}  remote_url=${REMOTE_URL}    deviceName=${DEVICE}    name=Teste Robot
    ...                 build=browserstack-robot-framework  platformName=${ANDROID_PLATFORM_NAME}
    ...                 autoGrantPermissions=${True}
    IMPLICIT WAIT       15

fecha app
    Quit Application
    Close Application