class Pet < ActiveRecord::Base
  has_many :selected_pets

  before_destroy :ensure_not_selected

  validates :name, presence: true
  validates :description,
  			length: { in: 10..40 }

  enum pet_type: [:dog, :cat]

  # Array of option instead of enum
  PET_STATUS = ["Adopted", "Available", "Selected"]

  # Updates the status of this pet to the passed string
  def set_status status
    self.update(pet_status: status)
  end

  private
  def ensure_not_selected
  	if selected_pets.empty?
  	  true
  	else
  	  errors.add(:base, "Pet has already been selected")
  	  false
  	end
  end
end
