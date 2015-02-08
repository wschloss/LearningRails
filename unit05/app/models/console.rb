class Console < ActiveRecord::Base
  has_many :games, dependent: :destroy

  validates :name,
  			presence: true,
  			length: { minimum: 2 }
  			
  validates :company,
  			presence: true,
  			length: { minimum: 3 }
end
