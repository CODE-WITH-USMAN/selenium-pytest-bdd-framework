Feature: Login functionality

  As a user
  I want to login to the application
  So that I can access the dashboard

  # ---------------------------------------
  Scenario: Positive login test
    Given user opens the login page
    When user enters username "student"
    And user enters password "Password123"
    And user clicks submit button
    Then user should be redirected to "https://practicetestautomation.com/logged-in-successfully/"
    And page should contain text "Congratulations"
    And logout button should be visible

  # ---------------------------------------
  Scenario: Negative login test - invalid username
    Given user opens the login page
    When user enters username "incorrectUser"
    And user enters password "Password123"
    And user clicks submit button
    Then error message should be displayed
    And error message should be "Your username is invalid!"

  # ---------------------------------------
  Scenario: Negative login test - invalid password
    Given user opens the login page
    When user enters username "student"
    And user enters password "incorrectPassword"
    And user clicks submit button
    Then error message should be displayed
    And error message should be "Your password is invalid!"