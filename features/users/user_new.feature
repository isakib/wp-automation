Feature: User new registration


  Scenario: With valid email and password
    Given I am on the "/wp-admin/user-new.php" page
    Given I am on the "ddd" page
    And I fill in "user_login" with "samplenewuser"
    And I fill in "user_email" with "sample@gmail.com"
    And I fill in "first_name" with "Sakib"
    And I fill in "last_name" with "Mahmud"
    And I fill in "url" with "www.isakib.com"
    And I fill in "pass1" with "123456"
    And I fill in "pass2" with "123456"
    And I select send_password box is checked
    And I

    And I click on "Log In" button

## note:
  # auto add email or change email or generate dynamic email
  # auto change username to book new one and relecent with email
  # auto add password and measure strength with the meter
  