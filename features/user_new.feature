Feature: Add new user to system with several approaches

  Background:
    Given I am logged in with username "Email" and email "Password"

  Scenario: With valid email and password
    Given I should see "Welcome to WordPress!" on screen
    Then I am on the "/wp-admin/user-new.php" page
    And I fill in "user_login" with "wwww"
    And I fill in "email" with "sample111ee@1gmail.com"
    And I fill in "first_name" with "Sakib"
    And I fill in "last_name" with "Mahmud"
    And I fill in "url" with "http://www.isakib.com"
    And I fill in "pass1" with "123456"
    And I fill in "pass2" with "123456"
    And I click through xpath link ".//*[@id='send_password']"
    And I select "Contributor" from "user_role" drop-down menu
    And I click on "Add New User" button
    And I wait for 10 seconds

## Note for test simplification:
  # auto add email or change email or generate dynamic email
  # auto change username to book new one and relecent with email
  # auto add password and measure strength with the meter
  