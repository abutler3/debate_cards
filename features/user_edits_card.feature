Feature: User edits card

  Background:
    Given the following card:
      | tag       | Foo |
      | evidence  | Bar |
    And I am on that card's page

  Scenario: Successful edit
    When I click "Edit"
    And I fill in "Food" for "Tag"
    And I fill in "At a bar-b-que" for "Evidence"
    And I press "Update Card"
    And I should see the tag "Food"
    And I should see "At a bar-b-que"

  Scenario: Unsuccessful edit
    When I click "Edit"
    And I fill in "This will be there" for "Tag"
    And I fill in "" for "Evidence"
    And I press "Update Card"
    Then I should see "Evidence can't be blank"
