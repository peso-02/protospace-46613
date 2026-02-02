class Prototype < ApplicationRecord
  # associations
  belongs_to :user
  has_many :comments, dependent: :destroy

  # validations
  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  has_one_attached :image
  validates :image, presence: true
end
