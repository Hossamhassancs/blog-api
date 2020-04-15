class Post < ApplicationRecord
  # model association
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings

  # validations
  validates_presence_of :title, :body

  def tag_list
    self.tags.collect do |tag|
      tag.name
    end.join(", ")
  end
  
end

