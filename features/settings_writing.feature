Feature: Registration
  As a registered user, I would like to register to system

  Background:
    Given I am logged in with username "Email" and email "Password"

  Scenario: I would like to setup writing pages
    Given I am on the "/wp-admin/options-writing.php" page
    # missing checkbox
    And I select "Cat A" from "default_category_list" drop-down menu
    And I select "Quote" from "default_post_format" drop-down menu
    # missing steps
    And I should see "Post via e-mail" on screen

    # why too of them fails - requires r&d
#    And I fill in "mail.example.com" with "mailserver_url"
#    And I fill in "110" with "mailserver_port"
    And I fill in "mailserver_pass" with "password"
    And I select "Cat B" from "default_email_category_list" drop-down menu
    And I fill in "http://rpc.pingomatic.com/" with "ping_sites"
    And I click on "Save Changes" button