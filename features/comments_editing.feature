Feature: Manaing all comments

  Background:
    Given I am logged in with username "Email" and password "Password"

  Scenario: nav-menus
    Given I am on the "wp-admin/edit-comments.php" page
    And I wait for 5 seconds
