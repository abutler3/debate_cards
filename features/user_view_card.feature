Feature: User view card list

  Scenario:
    Given the following card:
      | tag      | Foo     |
      | evidence | Foo Bar |
    And I am signed in
    And I am on the homepage
    When I click "View Backfiles"
    Then I should see the tag "Foo"
    And I should see "Foo Bar"

  Scenario: Linking to/from card show page
    Given the following card:
      | tag    | Foo     |
      | author | Foo Bar |
    And I am on the homepage
    When I click "Cards Index"
    Then I should see the tag "Foo"
    When I click "Foo"
    Then I should be on that card's page
