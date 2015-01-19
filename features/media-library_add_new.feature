Feature: Upload media to system


  Scenario: With valid email and password
    Given I am on the "/wp-login.php?" page
    And I fill in "user_login" with "admin"
    And I fill in "user_pass" with "1"
    And I click on "Log In" button
    # blocks here or place background for repeating task
    And I am on the "/wp-admin/media-new.php" page
#    And I click on "browser uploader" link
    And I upload a "sunshine.jpg" file located at "/Users/sakib/Documents/projects/wp-automation/features/upload_files"
    And I click on "Upload" button
    And I wait for 10 seconds
    

