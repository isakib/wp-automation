Feature: Add new user to system with several approaches

  Scenario: With valid email and password
    Given I am on the "/wp-login.php?" page
    And I fill in "Email" with "admin"
    And I fill in "Password" with "1"
    And I click on "Log In" button
    # blocks here or place background for repeative task
    And I should see "Welcome to WordPress!" on screen
    Then I am on the "/wp-admin/user-new.php" page
    And I fill in "user_login" with "sample11newuser"
    And I fill in "email" with "sample111@1gmail.com"
    And I fill in "first_name" with "Sakib"
    And I fill in "last_name" with "Mahmud"
    And I fill in "url" with "http://www.isakib.com"
    And I fill in "pass1" with "123456"
    And I fill in "pass2" with "123456"
    And I click on checkbox
    And I select "Contributor" from drop-down menu
    And I click on "Add New User" button

## Note for test simplification:
  # auto add email or change email or generate dynamic email
  # auto change username to book new one and relecent with email
  # auto add password and measure strength with the meter
  