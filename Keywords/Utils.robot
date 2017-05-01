*** Settings ***
Documentation  A resource file with reusable keywords and variables
...
...            The system common keywords created here for raklet website.
...
Library        Selenium2Library
Library        String
Library        OperatingSystem
Variables      ../Variables/HomePage.yaml
Variables      ../Variables/LoginPage.yaml
Variables      ../Variables/AdminPage.yaml

*** Variables ***

${SERVER}        www.facebook.com
${HOME_PAGE}     https://${SERVER}
${DELAY}         0.3



*** Keywords ***

Open And Setup Browser with full size window
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    ${disabled}=  Create List  Adobe Flash Player
    ${preferences}=  Create Dictionary  plugins.plugins_disabled=${disabled}
    Call Method  ${options}  add_experimental_option  prefs  ${preferences}
    ${options}=    Call Method    ${options}   to_capabilities
    Create WebDriver    Chrome    desired_capabilities=${options}
    Go To               ${HOME_PAGE}
    set selenium timeout    60
    Set Selenium Speed    ${DELAY}



Fill name blanks
  wait until element is enabled  firstname
  input text  firstname  ${First_Name}
  input text  lastname   ${Last_Name}

Fill email
  wait until element is enabled  reg_email__
  input text  reg_email__  ${email}
  input text  reg_email_confirmation__  ${email}

Fill password blank
  wait until element is enabled  reg_passwd__
  input password  reg_passwd__  ${password}

Choose birthday
  wait until element is enabled  css=._5k_4
  select from list  birthday_day  5
  select from list  birthday_month  9
  select from list  birthday_year  1991

Choose sex
  wait until element is enabled  csS=._5k_3
  click element  u_0_h

Create account
  wait until element is enabled  u_0_l
  click button  u_0_l


