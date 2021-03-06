require 'spec_helper'

describe "yoddlevids/index" do
  before(:each) do
    assign(:yoddlevids, [
      stub_model(Yoddlevid,
        :content => "Content",
        :title => "Title"
      ),
      stub_model(Yoddlevid,
        :content => "Content",
        :title => "Title"
      )
    ])
  end

  it "renders a list of yoddlevids" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
