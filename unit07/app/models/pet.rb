class Pet < ActiveRecord::Base
  validates :name, presence: true
  validates :description,
  			length: { in: 10..40 }

  enum pet_type: [:dog, :cat]
end
