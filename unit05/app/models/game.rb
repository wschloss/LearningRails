class Game < ActiveRecord::Base
  # 1:n relation
  belongs_to :console

  validates :name, presence: true
  validates :price, presence: true
  
  # new validations
  validates :release_year,
  			numericality: true,
  			numericality: { only_integer: true },
  			numericality: { less_than_or_equal_to: 2015 }
  validates :price,
  			numericality: true,
  			numericality: { greater_than: 0 }
end
