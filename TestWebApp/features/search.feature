Feature: Search
  In order to find pages on the web
  As an information seeker
  I want to be able to search using keywords

  Scenario: Search for cucumber
    Given I am on the home page
    And I have entered "cucumber bdd" into the "q" field
    And I have clicked "Google Search" button
    Then I should see "BDD Tool Cucumber is Not a Testing Tool"
