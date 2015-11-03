# Introduction

Sometimes you inherit a non Rails or non Rack based web app such as PHP, Perl, Java / JEE, etc. I like using cucumber for functional testing so I put together this project structure to use as a starting point for testing non Ruby web based applications.

I've included a simple search.feature examples that uses Google. To switch to use your own development or staging server adjust the URL in features/support/env.rb. I have this example project setup to use Capybara with Webdriver (Selenium) but you can easily switch this to use Culerity or Webrat by editing features/support/env.rb.

Pull requests with updates/enhancements/bug fixes are always welcome!

## Project Layout

* features/*.feature : cucumber features
* features/step_definitions/web_steps.rb : generic steps that apply to all features
* features/step_definintions/[feature]_steps.rb : steps specific to an individual feature file
* support/env.rb : configures the driver and the hostname to use

## Configuration

* sudo apt-get install -y g++ xvfb libqtwebkit-dev qt4-qmake
* bundle install

## Execution Cucumber

Now your tests are setup to run in webkit. The final step is running the tests. To do this, you'll need to run them from within xvfb. You can do that with the following command:
* xvfb-run bundle exec cucumber

## References

* http://cukes.info (for general cucumber information)
* http://github.com/jnicklas/capybara (for actions such as click_link, click_button, etc...)

