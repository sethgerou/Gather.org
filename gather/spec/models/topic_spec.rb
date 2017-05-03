require 'rails_helper'

RSpec.describe Topic, :type => :model do
  it "is valid with valid attributes" do
    expect(Topic.new(name: "insomnia", summary: "trouble sleeping", min_age: 3, max_age: 35)).to be_valid
  end

  it "is not valid without a name" do
    expect(Topic.new(summary: "trouble sleeping", min_age: 3, max_age: 35)).not_to be_valid
  end
  it "is not valid without a summary" do
    expect(Topic.new(name: "insomnia", min_age: 3, max_age: 35)).not_to be_valid    
  end

end
