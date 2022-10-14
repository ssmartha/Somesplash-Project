class Category < ApplicationRecord
  #ASSOCIATIONS
  has_many :pictures, dependent: :nullify

end
