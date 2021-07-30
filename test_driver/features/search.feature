Feature: Search

  Scenario: user can search users
    Given I expect that there is a "list"
    When I tap the "search" button 1 time
    # Then I should see a "loading"
    Then I should see a "list"
    And I tap the "clean" button