Feature: User can add tags.
   Background:
   Given I am signed in
   And I am on the homepage

   Scenario: I can add tags
   When I click "New Card"
  Then I should see "Enter New Card"
   And I fill in "foo" for "Categories"
   And I fill in "hello" for "Tag"
   And I fill in "world" for "Evidence"
   And I press "Create Card"
   Then I should see "foo"

   Scenario: I do not have tags
   When I click "New Card"
   And I fill in "" for "Categories"
   And I fill in "hello" for "Tag"
   And I fill in "world" for "Evidence"
   And I press "Create Card"
   And I should not see "Listed under: "
