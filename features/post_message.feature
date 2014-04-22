Feature: Post a Message
  Scenario: User writes a message and posts it
    Given there is a User
    When I post the message "this is my message"
    And I visit the page for this User
    Then I should see "this is my message"

