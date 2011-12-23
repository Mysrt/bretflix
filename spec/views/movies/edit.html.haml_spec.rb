require 'spec_helper'

describe "movies/edit.html.haml" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :title => "MyString",
      :genre => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movies_path(@movie), :method => "post" do
      assert_select "input#movie_title", :name => "movie[title]"
      assert_select "input#movie_genre", :name => "movie[genre]"
      assert_select "input#movie_user_id", :name => "movie[user_id]"
    end
  end
end
