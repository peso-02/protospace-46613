class Comment < ApplicationRecord
  # associations
  belongs_to :prototype
  belongs_to :user

  # validations
  validates :content, presence: true
end
