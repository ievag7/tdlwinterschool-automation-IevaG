Feature: Dynamic loading

@wip
Scenario: Waiting for dynamic element
     Given I am on dynamic_loading/1 page
     When I press the Start button
     Then I see a text "Hello World!"

