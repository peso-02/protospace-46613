class User < ApplicationRecord
  # devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validations
  validates :name, presence: true
  validates :profile, presence: true
  validates :position, presence: true
  validates :occupation, presence: true
  
  # associations
  has_many :prototypes
  has_many :comments, dependent: :destroy
end
