require 'spec_helper'

describe "movies/index.html.haml" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :title => "Title",
        :genre => "Genre",
        :user_id => 1
      ),
      stub_model(Movie,
        :title => "Title",
        :genre => "Genre",
        :user_id => 1
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
