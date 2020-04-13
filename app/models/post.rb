class Post < ApplicationRecord
  # model association
  has_many :comments, dependent: :destroy

  # validations
  validates_presence_of :title, :body

end

mkdir spec/requests && touch spec/requests/{posts_spec.rb,_spec.rb} 
