# Media Ranker

In this project we will focus on build a simple rails app that has three data models (Movie, Album, Book). We will be focusing on rails request cycle comprehension and introducing testing to our rails applications. To maximize the focus on comprehension, students will implement features based off of an existing website (http://media-ranker.herokuapp.com).

### Goals

By the end of the project you should be able to:

- Implement tests in a rails application
- Use built-in model validators
- Describe the rails request cycle in detail in your own words

### Baseline
Before you start writing _any_ code:

- Explore the existing Media Ranker site to become familiar with the necessary functionality
- If desired, create a Trello board to manage tasks
- If desired, create an ERD diagram for the models (pen & paper first)

Once you've explored the existing Media Ranker site, this project:

- requires an individual branch and fork
- Use [better_errors](https://github.com/charliesome/better_errors) for debugging purposes
- requires you to create a Rails application
  - conform to Rails conventions on naming and inflection
  - by using `rails new .` you will create a new rails app _inside_ of the fork folder instead of creating a _new_ folder for your rails app
  - Add the `minitest-rails`, `minitest-reporters`, and `simplecov` gems.
  - Next install `minitest-rails` with:  `rails generate minitest:install`
  - Then add the following code to `config/application.rb`
  
    ```ruby
    config.generators do |g|
      g.test_framework :minitest, spec: true
    end
    ```
    
  -  You should now be able to run tests with `rails test`.  Try it and verify.
  
**You shall submit a pull request _with a meaningful pull request description_ once you are done with the baseline which shall be merged before moving onto implementing the requirements. _Do not push any additional code until your baseline PR has been merged_**

### Requirements

#### Comprehension

Take your time to understand how the code is being executed during the request cycle. Use the skill check questions to drive your exploration. Work with your classmates to describe the flow of a specific request to any of the routes in your route file. You should be able to do this for all of the routes in your application.

#### Wave 1

You must mimic **ALL** of the pages and **ALL** of the links and buttons on each of the pages located at http://media-ranker.herokuapp.com.

Each data model needs to have standard RESTful (index, show, edit, update, new, create, destroy) routes.

#### Wave 2

Testing will come in Wave 2!

#### Wave 3

Style will come in Wave 3!

<!--
- [Tuesday] requires one preliminary passing RSpec test that confirms that your web application can render the root route
  - the `spec` folder should be created at the top-level of the application
-->
