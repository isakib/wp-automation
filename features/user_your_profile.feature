Feature: WordPress system user's profile edit, update and save.

  Scenario: With valid email and password
    Given I am on the "/wp-login.php?" page
    And I fill in "user_login" with "admin"
    And I fill in "user_pass" with "1"
    And I click on "Log In" button
    # blocks here or place background for repeative task
    Given I am on the "/wp-admin/profile.php" page
    And I select multiple checkbox ".//*[@id='rich_editing']"
    And I select multiple checkbox ".//*[@id='comment_shortcuts']"
    And I select multiple checkbox ".//*[@id='admin_bar_front']"
    And I click through xpath link ".//*[@id='admin_color_coffee']"
    And I click through xpath link ".//*[@id='comment_shortcuts']"
    And I click through xpath link ".//*[@id='admin_bar_front']"
    And I should see "admin" on screen
    And I fill in "first_name" with "Sakib"
    And I fill in "last_name" with "Mahmud"
    And I fill in "nickname" with "Sakib"
   # that line failed although shows working fine, which is wrong and not functional visually #
#    And I select my nick "Sakib" from drop-down menu
    And I select "Sakib" from "display_name" drop-down menu
    And I fill in "url" with "www.google.com"
    And I fill in "description" with "I am Sakib. I'm software Tester. I break things for better intention"
    And I click on "Update Profile" button

