class Stock < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  validates :user_id, presence: true
  validates :ingredient_id, presence: true
  validates_numericality_of :quantity, :in => 0..2
end
