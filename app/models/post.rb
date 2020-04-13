class Post < ApplicationRecord
  # model association
  belongs_to :user
  has_many :comments, dependent: :destroy

  # validations
  validates_presence_of :title, :body

end

