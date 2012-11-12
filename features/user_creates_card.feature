Feature: User creates card
  As a user
  In order to share my findings with my teammate
  I want to save a card

Acceptance Criteria:
  * Card does not need all info filled in
  * Card must be publicly visible once saved

Scenario: User attempts to enter a card
  Given I am signed in
  And I am on the homepage
  When I click "New Card"
  Then I should see "Enter New Card"
  When I fill in "Economic Decline Causes War" for "Tag"
  And I fill in "Walter Russell Mead" for "Author"
  And I fill in "August 23, 1998" for "Date"
  And I fill in "But the biggest impact of the Depression on the United States--and on world history--wasn't money. It was blood: World War II, to be exact." for "Evidence"
  And I press "Create Card"
  Then I should see "Card was successfully created"
