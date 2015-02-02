Feature: Manaing all comments
  All comments
  Pending comments
  Approved comments
  Spam comments
  Trash comments

  Background:
    Given I am logged in with username "Email" and password "Password"

  Scenario: nav-menus
    Given I am on the "/wp-admin/nav-menus.php" page
    And I click through xpath link ".//*[@id='pagechecklist']/li[6]/ul/li[2]/label[1]"
    And I click on "Add to Menu" button
    And I click on "Save Menu" button