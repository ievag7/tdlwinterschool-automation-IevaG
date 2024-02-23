# Feature: Login

# # Background: 
# #     Given I am on Login page


#     Scenario: Succesfully log in with valid username and password
#         Given I am on Login page
#         When I enter "tomsmith" username
#         And I enter "SuperSecretPassword!" password
#         And I press on Login button
#         Then I see a message "You logged into a secure area!"
#         And I do see the Logout button

#     Scenario: Cannot log in with invalid username and password
#         Given I am on Login page
#         When I enter "sdfsadg" username
#         And I enter "arhsrtnsrtns" password
#         And I press on Login button
#         Then I see a message "Your username is invalid!"
#         And I don't see the Logout button

        Feature: Login

    Scenario Outline: Log in user <username> username and <password> password
        Given I am on login page
        When I enter <username> username
        And I enter <password> password
        And I press on Login button
        Then I see a message <message>
        And I <visibility> see the Logout button

        @positive
        Examples:
            | username   | password               | message                          | visibility |
            | "tomsmith" | "SuperSecretPassword!" | "You logged into a secure area!" | do         |

        @negative
        Examples:
            | username  | password       | message                     | visibility |
            | "sdfsadg" | "arhsrtnsrtns" | "Your username is invalid!" | don't      |