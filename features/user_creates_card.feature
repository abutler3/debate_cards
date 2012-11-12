Feature: User creates card
  As a user
  In order to share my findings with my teammate
  I want to save a card

Acceptance Criteria:
  * Card does not need all info filled in
  * Card must be publicly visible once saved

Scenario: User attempts to enter a card
  Given I am on the homepage
  And I click "New Card"
  Then I should "Fill in your card here"
  When I fill in "Economic Decline Causes War" for "Tag"
  And I fill in "Walter Russell Mead" for "Author"
  And I fill in "Senior Fellow for U.S. Foreign Policy at the Council on Foreign Relations" for "Credentials"
  And I fill in "August 23, 1998" for "Date"
  And I fill in "Los Angeles Times" for "Publication"
  And I fill in "But the biggest impact of the Depression on the United States--and on world history--wasn't money. It was blood: World War II, to be exact." for "Evidence"
  And I press "Save"
  Then I should see "Your card has been entered"
