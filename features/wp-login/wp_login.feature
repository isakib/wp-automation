Feature: As User I would like to login to system
  I will access with different role

  Scenario: With valid email and password
    Given I am on the "/wp-login.php" page
    And I fill in "user_login" with "admin"
    And I fill in "user_pass" with "123456"
    And the "Remember Me" checkbox should be checked
    And I wait for 5 seconds
    And I click on "Log In" button

