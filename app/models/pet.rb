class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: { in: %w[dog cat shark bird fish rabbit hamster snake turtle] }
end
