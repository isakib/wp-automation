Feature: All Users Listing page
  Verification of user listed properly, user removed properly,

  Scenario: With valid email and password
    Given I am on the "/wp-login.php?" page
    And I fill in "user_login" with "admin"
    And I fill in "user_pass" with "1"
    And I click on "Log In" button
    # blocks here or place background for repeative task
    And I am on the "/wp-admin/users.php" page
    And I click through xpath link ".//*[@id='cb-select-all-1']"
    And I click through xpath link ".//*[@id='user_1']"
    And I select "Delete" from "bulk-action-selector-top" drop-down menu
    And I click on ".//*[@id='doaction']" button
    And I should see "Delete Users" on screen
    And I click through xpath link ".//*[@id='delete_option1']"
    And I click on "Confirm Deletion" button
    And I should see "User deleted." on screen
