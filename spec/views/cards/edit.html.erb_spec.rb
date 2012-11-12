require 'spec_helper'

describe "cards/edit" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :tag => "MyText",
      :author => "MyString",
      :date => "MyString",
      :evidence => "MyText"
    ))
  end

  it "renders the edit card form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cards_path(@card), :method => "post" do
      assert_select "textarea#card_tag", :name => "card[tag]"
      assert_select "input#card_author", :name => "card[author]"
      assert_select "input#card_date", :name => "card[date]"
      assert_select "textarea#card_evidence", :name => "card[evidence]"
    end
  end
end
