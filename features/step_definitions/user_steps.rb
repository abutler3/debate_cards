Given /^a User has posted the following messages:$/ do |messages|
  @user = Fabricate(:user, email: email, password: password, password_confirmation: password)

card_attributes = card.hashes.map do |card_attrs|
    card_attrs.merge({:user => user})
end
  Card.create!(card_attributes)
end
