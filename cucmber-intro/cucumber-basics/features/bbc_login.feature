Feature: BBC Login

  @username
  Scenario: Inputting incorrect username credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive and error for not finding the account
  @password
  Scenario: Inputting a password less than 8 characters shows an error
    Given I access the bbc login page
    And I input any username details
    And I input an incorrect password as 1234abc
    When I try to login
    Then I receive an error stating the password needs to be at least 8 characters