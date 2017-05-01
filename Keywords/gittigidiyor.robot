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

# metodlar için istenen locator id ler classlar yada isimlerdir.

Search "${searchvalue}" from gittigidiyor
    wait until element is enabled  search_word
    input text  search_word  ${searchvalue}
    click element  header_find_button

Disable notify popup
    wait until element is visible  later-subscription-button
    click button  later-subscription-button

check actual search keyword is "${searchvalue}"
    wait until element is visible  css=.search-result-keyword
    ${search_keyword_element}  get webelement  css=.search-result-keyword
    ${actual_keyword}  get text  ${search_keyword_element}
    element text should be  ${search_keyword_element}  ${searchvalue}  message=expected value is :${searchvalue} but actual value is :${actual_keyword}

Get first product values
#    Xpath kullanımı
    ${Product_names}  get webelements  xpath=//span[@itemprop="name"]
    ${First_Product_Name}  get text  ${Product_names[0]}
    set global variable  ${FIRST_PRODUCT_NAME}  ${First_Product_Name}
    ${first_product_div}  get webelements  css=.cell-border-css
    set global variable  ${FIRST_PRODUCT_NAME_ELEMENT}  ${first_product_div[0]}

Product names must match from product detail page
    wait until element is visible  css=.h1-container
    element should contain  css=.h1-container  ${FIRST_PRODUCT_NAME}

Product names must match from shopping cart page
    wait until element is visible  css=.title-link
    element should contain  css=.title-link  ${FIRST_PRODUCT_NAME}

click add to cart button
    wait until element is visible  add-to-basket
    click element  add-to-basket