class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :ingredients, presence: true
  validates :instruction, presence: true

  scope :newest, -> {order created_at: :desc}
end
