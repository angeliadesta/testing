Feature: Gmail login

  Scenario: Gmail login scenario
    Given I am Gmail user
    When I put correct username and correct password
      And I click on the login button
    Then must be successful
      And the home page will appear

  Scenario: Gmail login scenario
    Given I am Gmail user
    When I put correct phonenumber and correct password
      And I click on the login button
    Then must be successful
      And the home page will appear
