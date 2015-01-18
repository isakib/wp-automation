Feature: Registration
  As a registered user, I would like to register to system

  Scenario: With valid email and password
    Given I am on the "/wp-login.php?" page
    And I fill in "user_login" with "admin"
    And I fill in "user_pass" with "1"
    And I click on "Log In" button
    # blocks here or place background for repeative task

    # Checkboxing all of them. 
    And I click on "Screen Options" link

    ## enables and disable checkbox
#    And I press xpath link ".//*[@id='dashboard_right_now-hide']"
#    And I press xpath link ".//*[@id='dashboard_activity-hide']"
#    And I press xpath link ".//*[@id='dashboard_quick_press-hide']"
#    And I press xpath link ".//*[@id='dashboard_primary-hide']"
#    And I press xpath link ".//*[@id='wp_welcome_panel-hide']"

    # -- checklist update here
    And I click on "Screen Options" link

    ### START ###
    And I click on "Help" link

    ## Help Link
    Then I click on "Overview" link
    ## Left Panel:
    And I should see "Welcome to your WordPress Dashboard! This is the screen you will see when you log in to your site, and gives you access to all the site management features of WordPress. You can get help for any screen by clicking the Help tab in the upper corner." on screen
    Then I click on "Navigation" link
    And I should see "The left-hand navigation menu provides links to all of the WordPress administration screens, with submenu items displayed on hover. You can minimize this menu to a narrow icon strip by clicking on the Collapse Menu arrow at the bottom." on screen
    Then I click on "Layout" link
    And I should see "You can use the following controls to arrange your Dashboard screen to suit your workflow. This is true on most other administration screens as well." on screen
    Then I click on "Content" link
    And I should see "The boxes on your Dashboard screen are:" on screen

    # Right Panel
    And I should see "For more information:" on screen
    And I should see "Documentation on Dashboard" on screen
    And I should see "Support Forums" on screen
    And I click on "Help" link
    ## END ##

    # Verifying the content
    And I should see "Welcome to WordPress" on screen
    And I should see "We’ve assembled some links to get you started:" on screen
    And I should see "Get Started" on screen
    And I should see "Next Steps" on screen
    And I should see "More Actions" on screen
    And I should see "or, change your theme completely" on screen
    And I should see "Write your first blog post" on screen
    And I should see "Add an About page" on screen
    And I should see "View your site" on screen
    And I should see "Manage widgets or menus" on screen
    And I should see "Turn comments on or off" on screen
    And I should see "Learn more about getting started" on screen
    Then I click on "Dismiss" link

    #Quick Draft execution
    And I fill in "Title" with "Dummy Data"
    And I fill in "content" with "Dummy Data Dummy Data"
    And I click on "Save Draft" button

    ## Verifying the draft copy
    And I should see "Drafts" on screen
    And I should see "Dummy Data" on screen

    