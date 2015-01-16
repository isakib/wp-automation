Feature: WordPress system user's profile edit, update and save.

  Scenario: With valid email and password
    Given I am on the "/wp-login.php?" page
    And I fill in "user_login" with "admin"
    And I fill in "user_pass" with "1"
    And I click on "Log In" button
    # blocks here or place background for repeative task
    Given I am on the "/wp-admin/profile.php" page
    And I sel

