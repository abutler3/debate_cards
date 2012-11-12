require 'spec_helper'

describe "cards/show" do
  before(:each) do
    @card = assign(:card, stub_model(Card,
      :tag => "MyText",
      :author => "Author",
      :date => "Date",
      :evidence => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Author/)
    rendered.should match(/Date/)
    rendered.should match(/MyText/)
  end
end
