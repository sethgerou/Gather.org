require 'rails_helper'

RSpec.describe Story, type: :model do
  let(:topic) {Topic.create(name: "Reflux", summary: "This is a summary")}

  it "is valid with valid attributes" do
                  p topic.id
    expect(Story.new(author: "parent", email: "parent@gmail.com", body: "this it an article body", topic_id: 10)).to be_valid
  end
  it "is not valid without an email" do
    expect(Story.new(author: "parent", body: "this it an article body", topic_id: 10)).not_to be_valid
  end
  it "is not valid without a body" do
    expect(Story.new(author: "parent", email: "parent@gmail.com", topic_id: 10)).not_to be_valid
  end
end
