Feature: Registration
  As a registered user, I would like to register to system

  Background:
    Given I am logged in with username "Email" and email "Password"
    
  Scenario: I would like to setup writing pages
    Given I am on the "/wp-admin/options-general.php" page
    And I fill in "blogname" with "WordPress Automation"
    And I fill in "blogdescription" with "Kitty's blog"
    And I select checkbox

    # Radio button missing from steps

    And I select "Contributor" from "default_role" drop-down menu
    And I select "Dhaka" from "timezone_string" drop-down menu
    And I select "Sunday" from "start_of_week" drop-down menu
    #missing steps
    And I select radio "4:35 PM" from "radio" drop-down menu
    And I wait for 3 seconds
    And I click on "Save Changes" button
    And I should see "Settings saved." on screen

