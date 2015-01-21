Feature: All Users Listing page
  Verification of user listed properly, user removed properly,

  Background:
    Given I am logged in with username "Email" and email "Password"

  Scenario: With valid email and password
    # blocks here or place background for repeating task
    And I am on the "/wp-admin/users.php" page
    And I click through xpath link ".//*[@id='cb-select-all-1']"
    And I click through xpath link ".//*[@id='user_1']"
    And I select "Delete" from "bulk-action-selector-top" drop-down menu
    And I click on "doaction" button
    And I wait for 3 seconds
    And I should see "Delete Users" on screen
    And I click through xpath link ".//*[@id='delete_option1']"
    And I click on "Confirm Deletion" button
    And I should see "User deleted." on screen

