Feature: Registration
  I would like to create tags
  
  Background: Let me log in
    Given I am logged in with username "Email" and password "Password"
    
  Scenario: With valid email and password
    Given I am on the "/wp-admin/edit-tags.php?taxonomy=post_tag" page
    And I fill in "tag-name" with "Dummy"
    And I fill in "tag-slug" with "dummy-dummy"
    And I fill in "tag-description" with "no way no way"
    And I click on "submit" button
    And I wait for 15 seconds
    And I should see "A term with the name already exists in this taxonomy." on screen


  Scenario: Search to find tags and delet the tags
    And I fill in "tag-search-input" with "Dummy"
    And I click on "delete-tag" link
    And I want to click popup "OK"