About This Project
-----
An simple approach to automate wordpress framework and excute complete testing of wordpress and verification.




Setup
-----
Install ruby.
And then install gems by the following command.
```bash
bundle install
```
Run cucumber by,
```bash
cucumber
```

Directory structure
-------------------

|__ features
|   |__ entities
|   |   |__ entity.feature
|   |   |__ step_definitions
|   |       |__ anything.rb
|   |       |__ entity_steps.rb
|   |__ locations
|   |   |__ location.feature
|   |   |__ step_definitions
|   |       |__location_steps.rb
|   |__ sites
|   |   |__ step_definitions
|   |__ step_definitions
|   |   |__ local_assert_steps.rb
|   |   |__ local_crud_response_steps.rb
|   |   |__ local_email_steps.rb
|   |   |__ local_file_steps.rb
|   |   |__ local_script_steps.rb
|   |   |__ local_steps.rb
|   |   |__ local_web_steps.rb
`   |   |__ local_xml_file_steps.rb   
    |__ lib
        |__ cucumber_helpder.rb


Features
--------
Create features in features directory, with the extension of `feature`.

Step definitions
----------------
Create step definitions in the `step_definitions` directory.
A sample step definition is given with the project.

Configuration
-------------
You can configure the capybara options in cucumber_helper.rb.
Change `Capybara.app_host` to run the same test in different host.

References
----------
* [Cucumber](https://github.com/cucumber/cucumber/wiki)
* [Capybara](https://github.com/jnicklas/capybara)
* [WordPress](http://wordpress.org)
* [XAMPP](https://www.apachefriends.org/download.html)


Follow Me
-------------
[@isakib](https://twitter.com/isakib)