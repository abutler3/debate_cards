When /^I search for "([^"]*)"$/ do |search|
  fill_in 'search', with: search
  click_button 'Search'
end

Then /^I should see a message indicating no cards were found$/ do
  within('cards') do
    page.should have_content('No cards were found')
  end
end

