Feature: Registration
  As a registered user, I would like to register to system

  Background:
    Given I am logged in with username "Email" and password "Password"

  Scenario: With valid email and password
    And I am on the "/wp-admin/tools.php" page
    And I should see "Tools" on screen
    And I should see "Categories and Tags Converter" on screen
    And I should see "Press This" on screen
    And I click on "Categories and Tags Converter" link
    And I should see "Import" on screen

