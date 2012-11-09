Feature: User view card list

  Scenario:
    Given the following posts:
      | tag   | author       |
      | Foo   | Foo Bar      |
      | Hello | Hello, World |
    When I go to the homepage
    Then I should see the title "Foo"
    And I should see "Bar"
    And I should see the title "Hello"
    And I should see "World"

  Scenario: Linking to/from post show page
    Given the following post:
      | tag    | Foo     |
      | author | Foo Bar |
    And I am on the homepage
    When I click "Foo"
    Then I should be on that card's page
    When I click "View All Cards"
    Then I should be on the homepage
