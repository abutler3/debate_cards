Feature: Search
  As a User
  In order to find more detailed information
  I want to use the advanced search form

  Background:
   Given I am on the card index page

  Scenario: Find cards by author
    Given the following cards:
        | author  |
        | Zizek   |
        | Leonard |
      And I click "Advanced Search"
      And I fill in "Zizek" for "Author"
      And I click "Search"
      Then I should see "Zizek"

    Scenario: Find cards by tag
      Given the following cards:
          | tag       |
          | Warming   |
          | Weapons   |
        When I click "Advanced Search"
        And I fill in "Weapons" for "Tag"
        And I click "Search"
        And I should see "Weapons"
