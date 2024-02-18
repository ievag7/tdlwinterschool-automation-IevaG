Feature: Login

    Scenario: Syccesfully log in with valid username and password
        Given I am on Login page
        When I enter a "tomsmith" username
        And I enter a "SuperSecretPassword!" password
        And Press on Login button
        Then I see a message "You logged into a secure area!"
        And I see the Logout button

        Scenario: Cannot log in with invalid username and password
        Given I am on Login page
        When I enter a "sdfsadg" username
        And I enter a "arhsrtnsrtns!" password
        And Press on Login button
        Then I see a message "Your username is invalid!"
        And I don't see the Logout button