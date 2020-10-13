*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.hepsiburada.com/
${browser}  chrome

*** Keywords ***
start session
    open browser   ${url}   ${browser}
    Maximize Browser Window

close session
    close browser