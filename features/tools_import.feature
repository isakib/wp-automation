Feature: Upload Valid and Invalid .xml file for testing

  Background:
    Given I am logged in with username "Email" and email "Password"

  Scenario: With valid email and password
    Given I am on the "/wp-admin/import.php" page
    And I click through xpath link ".//*[@id='wpbody-content']/div[3]/table/tbody/tr[8]/td[1]/a"
    And I should see "Import WordPress" on screen
    And I upload a "theme-unit-test-data.xml" file with "file" and located at "/Users/sakib/Documents/projects/wp-automation/features/upload_files"
    And I click on "Upload file and import" button
    And I wait for 3 seconds
    And I should see "Import WordPress" on screen
    And I select "Sakib Mahmud" from "user_assign_0" drop-down menu
    And I wait for 5 seconds
    And I select "Sakib Mahmud" from "user_assign_1" drop-down menu
