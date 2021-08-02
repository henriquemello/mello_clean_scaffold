Feature: Search

  Scenario: user can search users
    Given I expect that there is a "list"
    When I tap the "search" button
    Then I should see a "list"
    And I should see cards
    And I tap the "clean" button