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

#Open Gittigidiyor
#    Given Disable notify popup
#    When search "${SEARCH_VALUE}" from gittigidiyor
#    Then check actual search keyword is "${SEARCH_VALUE}"
#    And Get first product values
#    And click element  ${FIRST_PRODUCT_NAME_ELEMENT}
#    And Product names must match from product detail page
#    And click add to cart button
#    And Product names must match from shopping cart page

Open Facebook
    Given Fill name blanks
    Given Fill email
    Given Fill password blank
    Given Choose birthday
    Given Choose sex
    Then Create account






