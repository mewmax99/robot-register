*** Settings ***
Library             SeleniumLibrary
Suite teardown      Close All Browsers

*** Test Cases ***
Check all required fields in registeration form
    Open Browser        http://angsila.cs.buu.ac.th/~wittawas/601/887240/labs/testdemo/index.php/register/doadd     chrome
    Click ELement       id=btn_submit
    Wait Until Page Contains        The Email field is required.
    Wait Until Page Contains        The Password field is required.
    Wait Until Page Contains        The Re-type Password field is required.
    Wait Until Page Contains        The Name field is required.
Register successfully when input valid data
    Open Browser        http://angsila.cs.buu.ac.th/~wittawas/601/887240/labs/testdemo/index.php/register/doadd     chrome
    Input Text      id=email        ball2345@gmail.com
    Input Password  id=password     11111111
    Input Password  id=repassword   11111111
    Input Text      id=name         Ball
    Click Element   id=btn_submit
    Wait Until Page Contains        ball2345@gmail.com