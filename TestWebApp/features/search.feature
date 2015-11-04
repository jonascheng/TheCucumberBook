Feature: Search
  In order to find pages on the web
  As an information seeker
  I want to be able to search using keywords

  Scenario Outline: Search for cucumber
    Given I am on the home page "<URL>"
    And I have entered "<Keyword>" into the "<Search Field>"
    And I have clicked "<Search Button>"
    Then I should see "<Expected Result>"

  Examples:
    | URL                                   | Keyword       | Search Field  | Search Button | Expected Result                         |
    | http://www.google.com/ncr             | cucumber bdd  | q             | Google Search | BDD Tool Cucumber is Not a Testing Tool |
    | http://www.bing.com/                  | cucumber bdd  | q             | Search        | BDD Kickstart·Cucumber                  |
    | http://www.bing.com/search?q=cucumber | test  | q             | Search        | Behavior Driven Development             |
