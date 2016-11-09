class Ingredient < ApplicationRecord
  before_save {self.description = description.titleize}
  validates :description, presence: true, uniqueness: {case_sensitive: false}
end
