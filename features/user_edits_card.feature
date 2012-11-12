Feature: User edits post

  Background:
    Given the following card:
      | tag       | Foo |
      | evidence  | Bar |
    And I am on that card's page

  Scenario: Successful edit
    When I click "Edit Card"
    And I fill in "Food" for "Tag"
    And I fill in "At a bar-b-que" for "Body"
    And I press "Update Card"
    Then I should be on that card's page
    And I should see the title "Food"
    And I should see "At a bar-b-que"

  Scenario: Unsuccessful edit
    When I click "Edit Card"
    And I fill in "This will be there" for "Tag"
    And I fill in "" for "Evidence"
    And I press "Update Card"
    Then I should see "Evidence can't be blank"
    And I should see "This will be there" in the "Tag" field
