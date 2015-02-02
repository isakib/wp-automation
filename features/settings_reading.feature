Feature: Registration
  As a registered user, I would like to register to system

  Background:
    Given I am logged in with username "Email" and password "Password"

  Scenario: I want to see static pages
    Given I am on the "/wp-admin/options-reading.php" page
    And I click through xpath link ".//*[@id='front-static-pages']/fieldset/p[2]/label/input"
    And I select "Blog" from "page_on_front" drop-down menu
    And I select "Sample Page" from "page_for_posts" drop-down menu
    And I fill in "posts_per_page" with "9"
    And I fill in "posts_per_rss" with "9"
    #missing steps
    And I click on "Save Changes" button


  Scenario: I would like to setup writing pages
    Given I am on the "/wp-admin/options-reading.php" page
    Then I click through xpath link ".//*[@id='front-static-pages']/fieldset/p[1]/label/input"
    And I fill in "posts_per_page" with "9"
    And I fill in "posts_per_rss" with "9"
    #missing steps
    And I click on "Save Changes" button
