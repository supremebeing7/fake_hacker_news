require 'spec_helper'

describe Link do
  context "#shorten_url" do
    it "should display a display only the base route of the url" do
      testlink = Link.create(url: "http://www.example.org/more/pages")
      testlink.shorten_url.should eq "example.org"
    end
  end
  it { should have_many :comments }
end
