require 'spec_helper'

describe "movies/show.html.haml" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :title => "Title",
      :genre => "Genre",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Genre/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
