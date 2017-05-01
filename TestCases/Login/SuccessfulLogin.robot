*** Settings ***
Documentation       A test suite with a single Gherkin style.
...
...                 Scenrio: correctly login with selected user
...
Resource  ../../Keywords/Utils.robot
Suite Setup  Open And Setup Browser with full size window
Suite Teardown  Close Browser

*** Variables ***
#${FIRST_PRODUCT_NAME}
#${FIRST_PRODUCT_NAME_ELEMENT}
#${SEARCH_VALUE}             ps4
# Komut - C'Deki Define komutu "gibi" Çalışacak. Yani
# Tüm ${SEARCH_VALUE}'ler değişecek.
${password}  Generate Random String  6  [LETTERS]
${email}  lamymark@gmail.com
${First_Name}  Osman
${Last_Name}  Fadime

*** Test Cases ***



Open Facebook
    Given Fill name blanks
    Given Fill email
    Given Fill password blank
    Given Choose birthday
    Given Choose sex
    Then Create account






