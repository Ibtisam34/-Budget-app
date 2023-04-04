class Affair < ApplicationRecord
  belongs_to :category
  has_many :user, through: :category

  validates :name, presence: true
  validates :amount, presence: true
  validates :category_id, presence: true
end

