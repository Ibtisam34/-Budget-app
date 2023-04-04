class category < ApplicationRecord
  belongs_to :user
  has_many :affairs

  validates :name, presence: true
  validates :icon, presence: true 
  validates :user_id,presence: true
end
