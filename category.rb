class Category < ApplicationRecord

  #VALIDATIONS
  validates :name, presence: {message: "Name can't be blank"}
  # validates :cover, presence: {message: "Cover can't be blank"}

  #ASSOCIATIONS
  has_many :pictures, dependent: :destroy

end
