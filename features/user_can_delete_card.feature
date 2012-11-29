Feature: User can delete cards


  Background:
    Given the following card:
      | tag       | Foo |
      | evidence  | Bar |
    Given I am on the card index page

  Scenario: Successful edit
    When I click "Delete"
    And I should not see "foo"
    And I should not see "bar"
