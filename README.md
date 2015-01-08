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
```

.
├── features
│   └──entities
│   │    └── entity.feature
│   │    └── step_definitions
│   │        └── anything.rb
│   │        └── entity_steps.rb
│   └── locations
│   │   └── location.feature
│   │    └── step_definitions
│   │        └──location_steps.rb
│   └── sites
│   │   └── step_definitions
│   └── step_definitions
│   │   └── local_assert_steps.rb
│   │   └── local_crud_response_steps.rb
│   │   └── local_email_steps.rb
│   │   └── local_file_steps.rb
│   │   └── local_script_steps.rb
│   │   └── local_steps.rb
│   │   └── local_web_steps.rb
│   │   └── local_xml_file_steps.rb   
│   └──lib
        └── cucumber_helpder.rb
```

Features
--------
Create features in features directory, with the extension of `feature`.

Step definitions
----------------
Create step definitions in the `step_definitions` directory witin the entity. 
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