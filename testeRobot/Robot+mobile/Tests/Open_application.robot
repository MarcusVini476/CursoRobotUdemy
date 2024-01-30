*** Settings ***

Library    AppiumLibrary


*** Variables ***


${DEVICE}                        0068182486
${ANDROID_PLATFORM_NAME}         Android    
${ANDROID_PLATFORM_VERSION}      10
${ANDROID_AUTOMATION_NAME}       UIAutomator2

*** Test Cases ***
Open_Application
     Open Application  http://localhost:4723     automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  appPackage=com.google.android.keep  appActivity=com.google.android.keep.activities.BrowseActivity
  

# Case 01: abrir a aplicação mobile
#     Abrir aplicação chat21



# *** Keywords ***

# Abrir aplicação chat21
#     Open Application    http://localhost:4723/wd/hub    platformName=Android	deviceName=emulator-5554    appPackage=    appActivity=    automationName=Uiautomator2
