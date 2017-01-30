Feature: UAE smoke test

@Reg1
Scenario Outline: Test case 01, 02, 03, 04
Given user direct to the site
When user click on Login or Register button
And user enter a valid ID or email "<email_ID>"
And user enter a password "<password>"
Then user click on login button
And validate the landing page "<page _link>"


Examples:
    |email_ID| password|page _link|
    |HD333649|Test@135 |https://store.qion-ltd.net/en|
