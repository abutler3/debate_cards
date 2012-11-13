Given /^there is a card$/ do
  step %{1 card}
end

Given /^I am viewing that card $/ do
  step %{I am on that card's page}
end

Then /^I should be viewing that card $/ do
  step %{I should be on that card's page}
end
