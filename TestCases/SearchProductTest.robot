*** Settings ***
Resource  ../Resource/Utils.robot
Resource  ../Resource/SearchProductKeywords.robot
Library  SeleniumLibrary
Library  DebugLibrary
Test Setup  Utils.start session
Test Teardown  Utils.close session

*** Variables ***
${product}  iphone
${product2}  Rich Opak Kumaş Boyası 50 cc - 3011 Kahverengi


*** Test Cases ***
Search Product
    Search and Enter Product
    Select Product
    Click ReviewsTab
    Visible and Vote Reviews


