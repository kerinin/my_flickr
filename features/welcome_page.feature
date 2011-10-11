Feature: Welcome Page
  Scenario: First time
    Given I have just registered
    When I enter my correct API key and secret
    Then I should see a list of my photosets
    And I should see a helper explaining how to create a page for my sets
    And I should see a message that my account isn't verified
    
  
  Scenario: Failed API Key
    Given I have just registered
    When I enter my incorrect API key and secret
    Then I should see an error
    And the instructions should be highlighted
    
  Scenario: No photo sets
    Given I have just registered
    When I enter the API key and secret to an empty account
    Then I should be told I must create photo sets first
    And I should see an explanation of how to do this
    
  Scenario: First set added
    Given I have just created my first set
    When I click save
    Then I should see a list of suggestions
    And the suggestions should include adding a URL
    And the suggestions should include adding a page
    
  Scenario: URL added
    Given I have just added a URL
    When I visit admin
    Then I should not see adding a URL in the suggestions
    
  Scenario: First Page added
    Given I have just added my first page
    When I visit admin
    Then I should not see adding a page in the suggestions