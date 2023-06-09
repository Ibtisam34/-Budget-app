class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  has_and_belongs_to_many :payments, dependent: :destroy
  has_one_attached :icon
  validates :name, presence: true
  validates :icon, presence: true
end
