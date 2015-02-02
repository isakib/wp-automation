Feature: Retrive password from system
    As user, I forgot my password and I would like to retrive password from wordpress.

  Background:
    Given I am logged in with username "Email" and password "Password"
  
  Scenario: Land to lostpassword page - verification
    Given I am on the "/wp-login.php?action=lostpassword" page
    And I should see "Please enter your username or email address. You will receive a link to create a new password via email." on screen

  Scenario: Valid input to retrive password
  Given I am on the "/wp-login.php?action=lostpassword" page
    And I should see "Please enter your username or email address. You will receive a link to create a new password via email." on screen
    And I fill in "user_login" with "sakibqa@gmail.com"
    And I click on "Get New Password" button
    And I should see "Check your e-mail for the confirmation link." on screen

###  Notes:
#I will click to change password from email

  Scenario: Invalid input to retrive password - email address
    Given I am on the "/wp-login.php?action=lostpassword" page
    And I should see "Please enter your username or email address. You will receive a link to create a new password via email." on screen
    And I fill in "user_login" with "sakibqa+invalid@gmail.com"
    And I click on "Get New Password" button
    And I should see "ERROR: There is no user registered with that email address." on screen
    # there is two elements: "ERROR: There is no user registered with that email address."

  Scenario: Verify the existence of text and content - username
    Given I am on the "/wp-login.php?action=lostpassword" page
    And I fill in "user_login" with "saaamia"
    And I click on "Get New Password" button
    And I should see "ERROR: Invalid username or e-mail." on screen

  Scenario: Submit without giving any inputs - empty
    Given I am on the "/wp-login.php?action=lostpassword" page
    And I click on "Get New Password" button
    Then I should see "ERROR: Enter a username or e-mail address." on screen
