*** Settings ***
Library  SeleniumLibrary
Variables  ../Locator/Locators.py

*** Keywords ***
#Search Product
Search and Enter Product
    Wait Until Keyword Succeeds  30  1  Input Text  ${search_bar}  ${product}
    wait until keyword succeeds  30  1  Click Element  ${search_button}

Select Product
    Wait Until Keyword Succeeds  30  1  Click Element  ${select_product}

Click ReviewsTab
    Wait Until Keyword Succeeds  30  1  Mouse Over  ${productReviewsTab}
    Wait Until Keyword Succeeds  30  1  Click Element  ${productReviewsTab}

Visible and Vote Reviews
    ${IsReviewsVisible}=  run keyword and return status  Element Should Be Visible  ${productReviewsContentHolder}
    log to console  ${IsReviewsVisible}
    run keyword if  ${IsReviewsVisible}== False  log to console  Yorum Bulunumadı.
    ...  ELSE  Go Reviews

Go Reviews
    Mouse Over  ${productReviewsVote}
    Click Element  ${productReviewsVote}
    Wait Until Keyword Succeeds  30  1  Element Text Should Be  ${MessageAfterVote}  Teşekkür Ederiz.