require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:topic) {Topic.create(name: "Reflux", summary: "This is a summary")}

  it "is valid with valid attributes" do
    expect(Article.new(author: "doctor", email: "doctor@health.gov", body: "this it an article body", topic_id: 1)).to be_valid
  end

  it "is not valid without an author" do
    expect(Article.new(email: "doctor@health.gov", body: "this it an article body", topic_id: 1)).not_to be_valid
  end
  it "is not valid without an email" do
    expect(Article.new(author: "doctor", body: "this it an article body", topic_id: 1)).not_to be_valid
  end
  it "is not valid without a body" do
    expect(Article.new(author: "doctor", email: "doctor@health.gov", topic_id: 1)).not_to be_valid
  end
end
