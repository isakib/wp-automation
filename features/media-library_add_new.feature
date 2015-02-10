Feature: Upload media to system

  Background:
    Given I am logged in with username "Email" and password "Password"

  Scenario: With valid email and password
    And I am on the "/wp-admin/media-new.php" page
    And I should see "Upload New Media" on screen
    And I upload a "sunshine.jpg" file with "async-upload" and located at "/Users/sakib/Documents/projects/wp-automation/features/upload_files"
    And I click on "Upload" button
    And I wait for 5 seconds