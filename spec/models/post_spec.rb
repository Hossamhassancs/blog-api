require 'rails_helper'

RSpec.describe Post, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_many(:comments).dependent(:destroy) }
  # Validation tests
  # ensure columns title and body are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:body) }
end
