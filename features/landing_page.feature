Feature: Landing Page
  Scenario: Load Landing Page
    Given I load /
    Then I should see the home page
    
  Scenario: Click login
    Given I am on /
    When I click login
    And I fill in my credentials
    Then I should be redirected to my admin page
    
  Scenario: Click register
    Given I am on /
    When I click register
    And I enter my email
    And I enter a password
    Then I should be redirect to my admin page
    And I should see a welcome screen showing next steps
    
  Scenario: Click Learn More
    Given I am on /
    When I click learn more
    Then I should be redirected to /learn