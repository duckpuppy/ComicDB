require 'spec_helper'

describe PublishersController do
  before(:each) do
    @attr = { :name => "DC Comics" }
  end

  it "should create a publisher given valid data" do
    publisher = Publisher.create!(@attr)
    publisher.should be_valid
  end

  it "should have a name" do
    no_name_publisher = Publisher.new(@attr.merge(:name => ""))
    no_name_publisher.should_not be_valid
  end
end
