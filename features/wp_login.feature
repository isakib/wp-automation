Feature: As User I would like to login to system
  I will access with different role

  Scenario: With valid email and password
    Given I am on the "/wp-login.php?" page
    And I fill in "user_login" with "admin"
    And I fill in "user_pass" with "1"
    And I click on checkbox
    And I wait for 2 seconds
    And I click on "Log In" button

