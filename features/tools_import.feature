Feature: Upload Valid and Invalid .xml file for testing

  Scenario: With valid email and password
    Given I am on the "/wp-login.php?" page
    And I fill in "user_login" with "admin"
    And I fill in "user_pass" with "1"
    And I click on "Log In" button
    # blocks here or place background for repeating task
    And I am on the "/wp-admin/admin.php?import=wordpress" page
    And I upload a file
    And I wait for 3 seconds
    And I should see "Import WordPress" on screen
    And I select "Sakib Mahmud" from "user_map" drop-down menu
