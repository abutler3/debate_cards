
Feature: Search
  As a User
  In order to find content easily
  I want to search for content

  Background:
   Given I am on the home page

  Scenario: Find cards by content
    Given the following cards:
      | evidence          |
      | Demon in a Bottle |
      | Extremis          |
    When I search for "Demon"
    And I should see "Demon in a Bottle"
    But I should not see "Extremis"

  Scenario: No posts found
    When I search for "Armor Wars"
    And I should see "No cards found. Please try another search."
